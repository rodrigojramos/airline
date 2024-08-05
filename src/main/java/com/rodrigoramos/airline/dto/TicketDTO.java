package com.rodrigoramos.airline.dto;

import com.rodrigoramos.airline.entities.Flight;
import com.rodrigoramos.airline.entities.Ticket;

import java.util.HashSet;
import java.util.Set;

public class TicketDTO {

    private Long id;
    private String seat;

    private UserDTO passenger;

    private Set<FlightDTO> flights = new HashSet<>();

    public TicketDTO(Long id, String seat) {
        this.id = id;
        this.seat = seat;
    }

    public TicketDTO(Ticket entity) {
        id = entity.getId();
        seat = entity.getSeat();
        if (entity.getPassenger() != null) {
            passenger = new UserDTO(entity.getPassenger());
        }
        for (Flight fly : entity.getFlights()) {
            flights.add(new FlightDTO(fly));
        }
    }

    public Long getId() {
        return id;
    }

    public String getSeat() {
        return seat;
    }

    public UserDTO getPassenger() {
        return passenger;
    }

    public Set<FlightDTO> getFlights() {
        return flights;
    }
}
