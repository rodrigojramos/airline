package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.FlightDTO;
import com.rodrigoramos.airline.dto.UserDTO;
import com.rodrigoramos.airline.service.FlightService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

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

    @GetMapping
    public ResponseEntity<Page<FlightDTO>> findAll(Pageable pageable) {
        Page<FlightDTO> dto = flightService.findAll(pageable);
        return ResponseEntity.ok(dto);
    }

    @GetMapping(value = "/{departure}/{arrival}/{d}-{m}-{y}")
    public ResponseEntity<List<FlightDTO>> findByDateAndDestination(
            @PathVariable String departure, @PathVariable String arrival,
            @PathVariable Integer d, @PathVariable Integer m, @PathVariable Integer y
    ) {
        List<FlightDTO> dto = flightService.findByDateAndDestination(departure, arrival, d, m, y);
        return ResponseEntity.ok(dto);
    }

    @GetMapping(value = "/user/{id}")
    public ResponseEntity<List<FlightDTO>> findAllFlightsByUser(@PathVariable Long id) {
        List<FlightDTO> dto = flightService.findAllFlightsByUser(id);
        return ResponseEntity.ok(dto);
    }

    @GetMapping(value = "/today-flights")
    public ResponseEntity<List<FlightDTO>> findAllTodayFlights() {
        List<FlightDTO> dto = flightService.findAllTodayFlights();
        return ResponseEntity.ok(dto);
    }

    @GetMapping(value = "/passenger-list/{id}")
    public ResponseEntity<List<UserDTO>> findPassengerList(@PathVariable Long id) {
        List<UserDTO> dto = flightService.findPassengerList(id);
        return ResponseEntity.ok(dto);
    }

    @PostMapping
    public ResponseEntity<FlightDTO> insert(@Valid @RequestBody FlightDTO dto) {
        dto = flightService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }

    @PutMapping(value = "/{id}")
    public ResponseEntity<FlightDTO> update(@PathVariable Long id, @Valid @RequestBody FlightDTO dto) {
        dto = flightService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        flightService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
