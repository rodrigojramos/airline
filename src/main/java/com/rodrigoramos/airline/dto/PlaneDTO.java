package com.rodrigoramos.airline.dto;

import com.rodrigoramos.airline.entities.Plane;

public class PlaneDTO {

    private Long id;
    private String name;
    private Integer seats;

    public PlaneDTO(Long id, String name, Integer seats) {
        this.id = id;
        this.name = name;
        this.seats = seats;
    }

    public PlaneDTO(Plane entity) {
        id = entity.getId();
        name = entity.getName();
        seats = entity.getSeats();
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Integer getSeats() {
        return seats;
    }
}
