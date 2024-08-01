package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.PassengerDTO;
import com.rodrigoramos.airline.service.PassengerService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;

@RestController
@RequestMapping(value = "/passenger")
public class PassengerController {

    @Autowired
    private PassengerService passengerService;

    @GetMapping(value = "/{id}")
    public ResponseEntity<PassengerDTO> findById(@PathVariable Long id) {
        PassengerDTO dto = passengerService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @PostMapping
    public ResponseEntity<PassengerDTO> insert(@Valid @RequestBody PassengerDTO dto) {
        dto = passengerService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }

    @PutMapping(value = "/{id}")
    public ResponseEntity<PassengerDTO> update(@PathVariable Long id, @Valid @RequestBody PassengerDTO dto) {
        dto = passengerService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        passengerService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
