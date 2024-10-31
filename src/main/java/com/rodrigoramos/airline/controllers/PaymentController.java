package com.rodrigoramos.airline.controllers;

import com.rodrigoramos.airline.dto.TicketDTO;
import com.rodrigoramos.airline.service.PaymentService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/payment")
@Tag(name = "Payments", description = "Controller for Payment")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    @Operation(
            description = "Making payment",
            summary = "Making payment",
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
    public ResponseEntity<Void> payment(@RequestBody TicketDTO dto) {
        paymentService.payment(dto);
        return ResponseEntity.ok().build();
    }
}
