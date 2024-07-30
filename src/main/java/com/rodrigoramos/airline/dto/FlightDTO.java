package com.rodrigoramos.airline.dto;

import com.rodrigoramos.airline.entities.Flight;

import java.time.LocalDateTime;

public class FlightDTO {

    private Long id;
    private String departure;
    private String arrival;
    private LocalDateTime flightDay;
    private Double price;
    private Integer availableSeats;

    private PlaneDTO plane;

    public FlightDTO(Long id, String departure, String arrival, LocalDateTime flightDay, Double price, Integer availableSeats) {
        this.id = id;
        this.departure = departure;
        this.arrival = arrival;
        this.flightDay = flightDay;
        this.price = price;
        this.availableSeats = availableSeats;
    }

    public FlightDTO(Flight entity) {
        id = entity.getId();
        departure = entity.getDeparture();
        arrival = entity.getArrival();
        flightDay = entity.getFlightDay();
        price = entity.getPrice();
        availableSeats = entity.getAvailableSeats();
        if(entity.getPlane() != null) {
            plane = new PlaneDTO(entity.getPlane());
        }
    }

    public Long getId() {
        return id;
    }

    public String getDeparture() {
        return departure;
    }

    public String getArrival() {
        return arrival;
    }

    public LocalDateTime getFlightDay() {
        return flightDay;
    }

    public Double getPrice() {
        return price;
    }

    public Integer getAvailableSeats() {
        return availableSeats;
    }

    public PlaneDTO getPlane() {
        return plane;
    }
}
