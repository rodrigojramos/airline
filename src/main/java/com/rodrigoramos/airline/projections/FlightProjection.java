package com.rodrigoramos.airline.projections;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.time.LocalDateTime;

public interface FlightProjection {

    Long getId();
    String getDeparture();
    String getArrival();
    LocalDateTime getFlightDay();

}
