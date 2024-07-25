package com.rodrigoramos.airline.repositories;

import com.rodrigoramos.airline.entities.Passenger;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {
}
