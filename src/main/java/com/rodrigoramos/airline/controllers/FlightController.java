package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.FlightDTO;
import com.rodrigoramos.airline.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;

@RestController
@RequestMapping(value = "/flight")
public class FlightController {

    @Autowired
    private FlightService flightService;

    @GetMapping(value = "/{id}")
    public ResponseEntity<FlightDTO> findById(@PathVariable Long id) {
        FlightDTO dto = flightService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @PostMapping
    public ResponseEntity<FlightDTO> insert(@RequestBody FlightDTO dto) {
        dto = flightService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }

    @PutMapping(value = "/{id}")
    public ResponseEntity<FlightDTO> update(@PathVariable Long id, @RequestBody FlightDTO dto) {
        dto = flightService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        flightService.delete(id);
        return ResponseEntity.noContent().build();
    }
}