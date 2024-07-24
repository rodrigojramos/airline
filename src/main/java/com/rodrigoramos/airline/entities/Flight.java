package com.rodrigoramos.airline.entities;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "tb_flight")
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String departure;
    private String arrival;
    private LocalDateTime flightDay;
    private Double price;
    private Integer availableSeats;

    @ManyToOne
    @JoinColumn(name = "plane_id")
    private Plane plane;

    public Flight() {
    }

    public Flight(Long id, String departure, String arrival, LocalDateTime flightDay, Double price, Integer availableSeats) {
        this.id = id;
        this.departure = departure;
        this.arrival = arrival;
        this.flightDay = flightDay;
        this.price = price;
        this.availableSeats = availableSeats;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getArrival() {
        return arrival;
    }

    public void setArrival(String arrival) {
        this.arrival = arrival;
    }

    public LocalDateTime getFlightDay() {
        return flightDay;
    }

    public void setFlightDay(LocalDateTime flightDay) {
        this.flightDay = flightDay;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getAvailableSeats() {
        return availableSeats;
    }

    public void setAvailableSeats(Integer availableSeats) {
        this.availableSeats = availableSeats;
    }

    public Plane getPlane() {
        return plane;
    }

    public void setPlane(Plane plane) {
        this.plane = plane;
    }
}
