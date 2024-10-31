package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.PlaneDTO;
import com.rodrigoramos.airline.service.PlaneService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequestMapping(value = "/plane")
@Tag(name = "Planes", description = "Controller for Plane")
public class PlaneController {

    @Autowired
    private PlaneService planeService;

    @Operation(
            description = "Get plane by id",
            summary = "Get plane by id",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
                    @ApiResponse(description = "Not Found", responseCode = "404"),
            }
    )
    @GetMapping(value = "/{id}", produces = "application/json")
    public ResponseEntity<PlaneDTO> findById(@PathVariable Long id) {
        PlaneDTO dto = planeService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Get all planes",
            summary = "List all planes",
            responses = {
                    @ApiResponse(description = "Ok", responseCode = "200"),
            }
    )
    @GetMapping(produces = "application/json")
    public ResponseEntity<List<PlaneDTO>> findAll() {
        List<PlaneDTO> dto = planeService.findAll();
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Create a new plane",
            summary = "Create a new plane",
            responses = {
                    @ApiResponse(description = "Created", responseCode = "201"),
                    @ApiResponse(description = "Bad Request", responseCode = "400"),
                    @ApiResponse(description = "Unauthorized", responseCode = "401"),
                    @ApiResponse(description = "Forbidden", responseCode = "403"),
                    @ApiResponse(description = "Unprocessable Entity", responseCode = "422")
            }
    )
    @SecurityRequirement(name = "bearerAuth")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @PostMapping(produces = "application/json")
    public ResponseEntity<PlaneDTO> insert(@Valid @RequestBody PlaneDTO dto) {
        dto = planeService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }


    @Operation(
            description = "Update a plane",
            summary = "Update a plane",
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
    public ResponseEntity<PlaneDTO> update(@PathVariable Long id, @Valid @RequestBody PlaneDTO dto) {
        dto = planeService.update(id, dto);
        return ResponseEntity.ok(dto);
    }

    @Operation(
            description = "Delete a plane",
            summary = "Delete a plane",
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
        planeService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
