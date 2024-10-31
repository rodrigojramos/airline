package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.FlightDTO;
import com.rodrigoramos.airline.dto.UserDTO;
import com.rodrigoramos.airline.service.FlightService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
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
@Tag(name = "Flights", description = "Controller for Flight")
public class FlightController {

    @Autowired
    private FlightService flightService;

    @Operation(
            description = "Get flight by id",
            summary = "Get flight by id",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Not Found", responseCode = "404"),
            }
    )
    @GetMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<FlightDTO> findById(@PathVariable Long id) {
        FlightDTO dto = flightService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Get all flights",
            summary = "List all flights",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
                    @ApiResponse(description = "Forbidden", responseCode = "403"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping(produces = "application/json")
    public ResponseEntity<Page<FlightDTO>> findAll(Pageable pageable) {
        Page<FlightDTO> dto = flightService.findAll(pageable);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Get flights by date and destination",
            summary = "Get flights by date and destination",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
            }
    )
    @GetMapping(value = "/{departure}/{arrival}/{d}-{m}-{y}", produces = "application/json")
    public ResponseEntity<List<FlightDTO>> findByDateAndDestination(
            @PathVariable String departure, @PathVariable String arrival,
            @PathVariable Integer d, @PathVariable Integer m, @PathVariable Integer y
    ) {
        List<FlightDTO> dto = flightService.findByDateAndDestination(departure, arrival, d, m, y);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Get all flights by user",
            summary = "Get all flights by user",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_CLIENT')")
    @GetMapping(value = "/user/{id}", produces = "application/json")
    public ResponseEntity<List<FlightDTO>> findAllFlightsByUser(@PathVariable Long id) {
        List<FlightDTO> dto = flightService.findAllFlightsByUser(id);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Get all today flights",
            summary = "List all today flights",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
                    @ApiResponse(description = "Forbidden", responseCode = "403"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping(value = "/today-flights", produces = "application/json")
    public ResponseEntity<List<FlightDTO>> findAllTodayFlights() {
        List<FlightDTO> dto = flightService.findAllTodayFlights();
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Get all passengers by flight",
            summary = "List all passengers by flight",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
                    @ApiResponse(description = "Forbidden", responseCode = "403"),
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping(value = "/passenger-list/{id}", produces = "application/json")
    public ResponseEntity<List<UserDTO>> findPassengerList(@PathVariable Long id) {
        List<UserDTO> dto = flightService.findPassengerList(id);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Create a new flight",
            summary = "Create a new flight",
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
    public ResponseEntity<FlightDTO> insert(@Valid @RequestBody FlightDTO dto) {
        dto = flightService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }

    @Operation(
            description = "Update a flight",
            summary = "Update a flight",
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
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @PutMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<FlightDTO> update(@PathVariable Long id, @Valid @RequestBody FlightDTO dto) {
        dto = flightService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Delete a flight",
            summary = "Delete a flight",
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
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @DeleteMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        flightService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
