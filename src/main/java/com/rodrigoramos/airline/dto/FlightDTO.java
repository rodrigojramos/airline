package com.rodrigoramos.airline.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.rodrigoramos.airline.entities.Flight;
import com.rodrigoramos.airline.projections.FlightProjection;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;

import java.time.LocalDateTime;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class FlightDTO {

    private Long id;
    @NotBlank
    private String departure;
    @NotBlank
    private String arrival;
    private LocalDateTime flightDay;
    @Positive
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

    public FlightDTO(FlightProjection projection) {
        id = projection.getId();
        departure = projection.getDeparture();
        arrival = projection.getArrival();
        flightDay = projection.getFlightDay();
        availableSeats = projection.getAvailableSeats();
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

    public void setAvailableSeats(Integer availableSeats) {
        this.availableSeats = availableSeats;
    }
}
