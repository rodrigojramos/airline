package com.rodrigoramos.airline.service;

import com.rodrigoramos.airline.dto.FlightDTO;
import com.rodrigoramos.airline.dto.TicketDTO;
import com.rodrigoramos.airline.entities.Flight;
import com.rodrigoramos.airline.entities.User;
import com.rodrigoramos.airline.entities.Ticket;
import com.rodrigoramos.airline.repositories.DuplicateTicketException;
import com.rodrigoramos.airline.repositories.FlightRepository;
import com.rodrigoramos.airline.repositories.TicketRepository;
import com.rodrigoramos.airline.service.exceptions.DatabaseException;
import com.rodrigoramos.airline.service.exceptions.NoAvailableSeatsException;
import com.rodrigoramos.airline.service.exceptions.ResourceNotFoundException;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TicketService {

    @Autowired
    private TicketRepository ticketRepository;

    @Autowired
    private FlightRepository flightRepository;

    @Transactional(readOnly = true)
    public TicketDTO findById(Long id) {
        Ticket ticket = ticketRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("Recurso não encontrado"));
        return new TicketDTO(ticket);
    }

    @Transactional(readOnly = true)
    public List<TicketDTO> findTicketsByUserId(Long userId) {
        List<Ticket> tickets = ticketRepository.findByUserIdOrderByFlightsFlightDayAsc(userId);
        return tickets.stream().map(ticket -> new TicketDTO(ticket)).toList();
    }

    public List<String> findOccupiedSeatsByFlightId(Long flightId) {
        return ticketRepository.findOccupiedSeatsByFlightId(flightId);
    }

    @Transactional
    public TicketDTO insert(TicketDTO dto) {
        Ticket entity = new Ticket();
        copyDtoToEntity(dto, entity);

        for (Flight flight : entity.getFlights()) {

            boolean exists = ticketRepository.existsByUserIdAndFlightsId(entity.getPassenger().getId(), flight.getId());
            if (exists) {
                throw new DuplicateTicketException("O usuário já possui um ticket para o voo ");
            }

            if (flight.getAvailableSeats() == null) {
                throw new NoAvailableSeatsException("Assentos disponíveis não podem ser nulos para o voo");
            }
            if (flight.getAvailableSeats() <= 0) {
                throw new NoAvailableSeatsException("Não há assentos disponíveis para voo");
            }
        }

        entity = ticketRepository.save(entity);

        for (Flight flight : entity.getFlights()) {
            flight.toDecreaseAvailableSeats();
            flightRepository.save(flight);
        }

        return new TicketDTO(entity);
    }

    @Transactional
    public TicketDTO update(Long id, TicketDTO dto) {
        try {
            Ticket entity = ticketRepository.getReferenceById(id);
            copyDtoToEntity(dto, entity);
            entity = ticketRepository.save(entity);
            return new TicketDTO(entity);
        }
        catch (EntityNotFoundException e) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
    }

    public void delete(Long id) {
        if(!ticketRepository.existsById(id)) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
        try {
            ticketRepository.deleteById(id);
        }
        catch (DataIntegrityViolationException e) {
            throw new DatabaseException("Falha de integridade referencial");
        }
    }

    private void copyDtoToEntity(TicketDTO dto, Ticket entity) {
        entity.setSeat(dto.getSeat());

        User user = new User();
        user.setId(dto.getPassenger().getId());
        entity.setPassenger(user);

        for (FlightDTO flyDto : dto.getFlights()) {
            Flight fly = flightRepository.findById(flyDto.getId())
                    .orElseThrow(() -> new ResourceNotFoundException("Recurso não encontrado " + flyDto.getId()));
            entity.getFlights().add(fly);
        }
    }
}
