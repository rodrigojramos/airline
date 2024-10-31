package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.TicketDTO;
import com.rodrigoramos.airline.service.TicketService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping(value = "/ticket")
@Tag(name = "Tickets", description = "Controller for Ticket")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    @Operation(
            description = "Get ticket by id",
            summary = "Get ticket by id",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Not Found", responseCode = "404"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping(value = "{id}", produces = "application/json")
    public ResponseEntity<TicketDTO> findById(@PathVariable Long id) {
        TicketDTO dto = ticketService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Get all tickets by user",
            summary = "Get all tickets by user",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping(produces = "application/json")
    public ResponseEntity<List<TicketDTO>> findTicketsByUserId(@RequestParam Long userId) {
        List<TicketDTO> tickets = ticketService.findTicketsByUserId(userId);
        return ResponseEntity.ok(tickets);
    }

    @Operation(
            description = "Get all tickets by flight",
            summary = "Get all tickets by flight",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping(value = "/tickets/{flightId}", produces = "application/json")
    public ResponseEntity<List<TicketDTO>> findTicketsByFlightId(@PathVariable Long flightId) {
        List<TicketDTO> tickets = ticketService.findTicketsByFlightId(flightId);
        return ResponseEntity.ok(tickets);
    }

    @Operation(
            description = "Get all occupied seats by flight",
            summary = "Get all occupied seats by flight",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping(value = "occupied-seats/{flightId}", produces = "application/json")
    public ResponseEntity<List<String>> findOccupiedSeatsByFlightId(@PathVariable Long flightId) {
        List<String> occupiedSeats = ticketService.findOccupiedSeatsByFlightId(flightId);
        return ResponseEntity.ok(occupiedSeats);
    }

    @Operation(
            description = "Create a new ticket",
            summary = "Create a new ticket",
            responses = {
                    @ApiResponse(description = "Created", responseCode = "201"),
                    @ApiResponse(description = "Bad Request", responseCode = "400"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
                    @ApiResponse(description = "Forbidden", responseCode = "403"),
                    @ApiResponse(description = "Unprocessable Entity", responseCode = "422")
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @PostMapping(produces = "application/json")
    public ResponseEntity<TicketDTO> insert(@RequestBody TicketDTO dto) {
        dto = ticketService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }

    @Operation(
            description = "Update a ticket",
            summary = "Update a ticket",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Bad Request", responseCode = "400"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
                    @ApiResponse(description = "Forbidden", responseCode = "403"),
                    @ApiResponse(description = "Not Found", responseCode = "404"),
                    @ApiResponse(description = "Unprocessable Entity", responseCode = "422")
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @PutMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<TicketDTO> update(@PathVariable Long id, @RequestBody TicketDTO dto) {
        dto = ticketService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Delete a ticket",
            summary = "Delete a ticket",
            responses = {
                    @ApiResponse(description = "Success", responseCode = "204"),
                    @ApiResponse(description = "Bad Request", responseCode = "400"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
                    @ApiResponse(description = "Forbidden", responseCode = "403"),
                    @ApiResponse(description = "Not Found", responseCode = "404"),
                    @ApiResponse(description = "Unprocessable Entity", responseCode = "422")
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @DeleteMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        ticketService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
