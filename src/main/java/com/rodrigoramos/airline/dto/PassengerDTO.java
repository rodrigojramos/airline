package com.rodrigoramos.airline.dto;

import com.rodrigoramos.airline.entities.Passenger;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import org.hibernate.validator.constraints.br.CPF;

public class PassengerDTO {

    private Long id;
    @NotBlank(message = "Campo requerido")
    private String name;
    @Email(message = "Campo requerido")
    private String email;
    @CPF
    private String document;

    public PassengerDTO(Long id, String name, String email, String document) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.document = document;
    }

    public PassengerDTO(Passenger entity) {
        id = entity.getId();
        name = entity.getName();
        email = entity.getEmail();
        document = entity.getDocument();
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getDocument() {
        return document;
    }
}
