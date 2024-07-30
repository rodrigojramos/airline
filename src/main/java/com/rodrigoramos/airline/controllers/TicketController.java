package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.TicketDTO;
import com.rodrigoramos.airline.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;

@RestController
@RequestMapping(value = "/ticket")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    @GetMapping(value = "{id}")
    public ResponseEntity<TicketDTO> findById(@PathVariable Long id) {
        TicketDTO dto = ticketService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @PostMapping
    public ResponseEntity<TicketDTO> insert(@RequestBody TicketDTO dto) {
        dto = ticketService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }

    @PutMapping(value = "/{id}")
    public ResponseEntity<TicketDTO> update(@PathVariable Long id, @RequestBody TicketDTO dto) {
        dto = ticketService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        ticketService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
