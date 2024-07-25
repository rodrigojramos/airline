package com.rodrigoramos.airline.dto;

import com.rodrigoramos.airline.entities.Passenger;
import jakarta.persistence.Column;

public class PassengerDTO {

    private Long id;
    private String name;
    private String email;
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
