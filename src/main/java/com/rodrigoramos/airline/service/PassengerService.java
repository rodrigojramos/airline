package com.rodrigoramos.airline.service;

import com.rodrigoramos.airline.dto.PassengerDTO;
import com.rodrigoramos.airline.entities.Passenger;
import com.rodrigoramos.airline.repositories.PassengerRepository;
import com.rodrigoramos.airline.service.exceptions.DatabaseException;
import com.rodrigoramos.airline.service.exceptions.ResourceNotFoundException;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PassengerService {

    @Autowired
    private PassengerRepository passengerRepository;

    @Transactional(readOnly = true)
    public PassengerDTO findById(Long id) {
        Passenger passenger = passengerRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("Recurso não encontrado"));
        return new PassengerDTO(passenger);
    }

    @Transactional
    public PassengerDTO insert(PassengerDTO dto) {
        Passenger entity = new Passenger();
        copyDtoToEntity(dto, entity);
        entity = passengerRepository.save(entity);
        return new PassengerDTO(entity);
    }

    @Transactional
    public PassengerDTO update(Long id, PassengerDTO dto) {
        try {
            Passenger entity = passengerRepository.getReferenceById(id);
            copyDtoToEntity(dto, entity);
            entity = passengerRepository.save(entity);
            return new PassengerDTO(entity);
        }
        catch (EntityNotFoundException e) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
    }

    public void delete(Long id) {
        if(!passengerRepository.existsById(id)) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
        try {
            passengerRepository.deleteById(id);
        }
        catch (DataIntegrityViolationException e) {
            throw new DatabaseException("Falha de integridade referencial");
        }
    }

    private void copyDtoToEntity(PassengerDTO dto, Passenger entity) {
        entity.setName(dto.getName());
        entity.setEmail(dto.getEmail());
        entity.setDocument(dto.getDocument());
    }
}
