package com.rodrigoramos.airline.service;

import com.rodrigoramos.airline.dto.FlightDTO;
import com.rodrigoramos.airline.entities.Flight;
import com.rodrigoramos.airline.entities.Plane;
import com.rodrigoramos.airline.repositories.FlightRepository;
import com.rodrigoramos.airline.service.exceptions.DatabaseException;
import com.rodrigoramos.airline.service.exceptions.ResourceNotFoundException;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class FlightService {

    @Autowired
    private FlightRepository flightRepository;

    @Transactional(readOnly = true)
    public FlightDTO findById(Long id) {
        Flight flight = flightRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("Recurso não encontrado"));
        return new FlightDTO(flight);
    }

    @Transactional
    public FlightDTO insert(FlightDTO dto) {
        Flight entity = new Flight();
        copyDtoToEntity(dto, entity);
        entity = flightRepository.save(entity);
        return new FlightDTO(entity);
    }

    @Transactional
    public FlightDTO update(Long id, FlightDTO dto) {
        try {
            Flight entity = flightRepository.getReferenceById(id);
            copyDtoToEntity(dto, entity);
            entity = flightRepository.save(entity);
            return new FlightDTO(entity);
        }
        catch (EntityNotFoundException e) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
    }

    public void delete(Long id) {
        if(!flightRepository.existsById(id)) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
        try {
            flightRepository.deleteById(id);
        }
        catch (DataIntegrityViolationException e) {
            throw new DatabaseException("Falha de integridade referencial");
        }
    }

    private void copyDtoToEntity(FlightDTO dto, Flight entity) {
        entity.setDeparture(dto.getDeparture());
        entity.setArrival(dto.getArrival());
        entity.setFlightDay(dto.getFlightDay());
        entity.setPrice(dto.getPrice());
        entity.setAvailableSeats(dto.getAvailableSeats());

        Plane plane = new Plane();
        plane.setId(dto.getPlane().getId());
        entity.setPlane(plane);
    }
}