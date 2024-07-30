package com.rodrigoramos.airline.service;

import com.rodrigoramos.airline.dto.FlightDTO;
import com.rodrigoramos.airline.dto.TicketDTO;
import com.rodrigoramos.airline.entities.Flight;
import com.rodrigoramos.airline.entities.Passenger;
import com.rodrigoramos.airline.entities.Ticket;
import com.rodrigoramos.airline.repositories.TicketRepository;
import com.rodrigoramos.airline.service.exceptions.DatabaseException;
import com.rodrigoramos.airline.service.exceptions.ResourceNotFoundException;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TicketService {

    @Autowired
    private TicketRepository ticketRepository;

    @Transactional(readOnly = true)
    public TicketDTO findById(Long id) {
        Ticket ticket = ticketRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("Recurso não encontrado"));
        return new TicketDTO(ticket);
    }

    @Transactional
    public TicketDTO insert(TicketDTO dto) {
        Ticket entity = new Ticket();
        copyDtoToEntity(dto, entity);
        entity = ticketRepository.save(entity);
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

        Passenger passenger = new Passenger();
        passenger.setId(dto.getPassenger().getId());
        entity.setPassenger(passenger);

        for (FlightDTO flyDto : dto.getFlights()) {
            Flight fly = new Flight();
            fly.setId(flyDto.getId());
            entity.getFlights().add(fly);
        }
    }
}
