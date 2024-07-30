package com.rodrigoramos.airline.repositories;

import com.rodrigoramos.airline.entities.Flight;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FlightRepository extends JpaRepository<Flight, Long> {
}
