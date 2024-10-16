package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.TicketDTO;
import com.rodrigoramos.airline.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping(value = "/ticket")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping(value = "{id}")
    public ResponseEntity<TicketDTO> findById(@PathVariable Long id) {
        TicketDTO dto = ticketService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping
    public ResponseEntity<List<TicketDTO>> findTicketsByUserId(@RequestParam Long userId) {
        List<TicketDTO> tickets = ticketService.findTicketsByUserId(userId);
        return ResponseEntity.ok(tickets);
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping("/tickets/{flightId}")
    public ResponseEntity<List<TicketDTO>> findTicketsByFlightId(@PathVariable Long flightId) {
        List<TicketDTO> tickets = ticketService.findTicketsByFlightId(flightId);
        return ResponseEntity.ok(tickets);
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping("occupied-seats/{flightId}")
    public ResponseEntity<List<String>> findOccupiedSeatsByFlightId(@PathVariable Long flightId) {
        List<String> occupiedSeats = ticketService.findOccupiedSeatsByFlightId(flightId);
        return ResponseEntity.ok(occupiedSeats);
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @PostMapping
    public ResponseEntity<TicketDTO> insert(@RequestBody TicketDTO dto) {
        dto = ticketService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @PutMapping(value = "/{id}")
    public ResponseEntity<TicketDTO> update(@PathVariable Long id, @RequestBody TicketDTO dto) {
        dto = ticketService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        ticketService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
