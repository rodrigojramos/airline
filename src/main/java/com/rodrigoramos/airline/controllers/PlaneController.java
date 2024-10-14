package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.PlaneDTO;
import com.rodrigoramos.airline.service.PlaneService;
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
public class PlaneController {

    @Autowired
    private PlaneService planeService;

    @GetMapping(value = "/{id}")
    public ResponseEntity<PlaneDTO> findById(@PathVariable Long id) {
        PlaneDTO dto = planeService.findById(id);
        return ResponseEntity.ok(dto);
    }

    @GetMapping
    public ResponseEntity<List<PlaneDTO>> findAll() {
        List<PlaneDTO> dto = planeService.findAll();
        return ResponseEntity.ok(dto);
    }


    @PostMapping
    public ResponseEntity<PlaneDTO> insert(@Valid @RequestBody PlaneDTO dto) {
        dto = planeService.insert(dto);
        URI uri = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(dto.getId()).toUri();
        return ResponseEntity.created(uri).body(dto);
    }


    @PutMapping(value = "/{id}")
    public ResponseEntity<PlaneDTO> update(@PathVariable Long id, @Valid @RequestBody PlaneDTO dto) {
        dto = planeService.update(id, dto);
        return ResponseEntity.ok(dto);
    }


    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @DeleteMapping(value = "/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        planeService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
