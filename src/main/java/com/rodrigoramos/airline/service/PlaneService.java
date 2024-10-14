package com.rodrigoramos.airline.service;

import com.rodrigoramos.airline.dto.PlaneDTO;
import com.rodrigoramos.airline.entities.Plane;
import com.rodrigoramos.airline.repositories.PlaneRepository;
import com.rodrigoramos.airline.service.exceptions.DatabaseException;
import com.rodrigoramos.airline.service.exceptions.ResourceNotFoundException;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PlaneService {

    @Autowired
    private PlaneRepository planeRepository;

    @Transactional(readOnly = true)
    public PlaneDTO findById(Long id) {
        Plane plane = planeRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("Recurso não encontrado"));
        return new PlaneDTO(plane);
    }

    public List<PlaneDTO> findAll() {
        List<Plane> result = planeRepository.findAll();
         return result.stream().map(x -> new PlaneDTO(x)).toList();
    }

    @Transactional
    public PlaneDTO insert(PlaneDTO dto) {
        Plane entity = new Plane();
        copyDtoToEntity(dto, entity);
        entity = planeRepository.save(entity);
        return new PlaneDTO(entity);
    }

    @Transactional
    public PlaneDTO update(Long id, PlaneDTO dto) {
        try {
            Plane entity = planeRepository.getReferenceById(id);
            copyDtoToEntity(dto, entity);
            entity = planeRepository.save(entity);
            return new PlaneDTO(entity);
        }
        catch (EntityNotFoundException e) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
    }

    public void delete(Long id) {
        if(!planeRepository.existsById(id)) {
            throw new ResourceNotFoundException("Recurso não encontrado");
        }
        try {
            planeRepository.deleteById(id);
        }
        catch (DataIntegrityViolationException e) {
            throw new DatabaseException("Falha de integridade referencial");
        }
    }

    private void copyDtoToEntity(PlaneDTO dto, Plane entity) {
        entity.setName(dto.getName());
        entity.setSeats(dto.getSeats());
    }
}
