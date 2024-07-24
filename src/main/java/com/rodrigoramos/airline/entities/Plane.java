package com.rodrigoramos.airline.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "tb_plane")
public class Plane {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Integer seats;

    public Plane() {
    }

    public Plane(Long id, String name, Integer seats) {
        this.id = id;
        this.name = name;
        this.seats = seats;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSeats() {
        return seats;
    }

    public void setSeats(Integer seats) {
        this.seats = seats;
    }
}
