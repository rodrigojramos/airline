package com.rodrigoramos.airline.projections;

import java.time.LocalDateTime;

public interface FlightProjection {

    Long getId();
    String getDeparture();
    String getArrival();
    LocalDateTime getFlightDay();
    Integer getAvailableSeats();

}
