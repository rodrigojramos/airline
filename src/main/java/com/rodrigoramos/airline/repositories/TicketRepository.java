package com.rodrigoramos.airline.repositories;

import com.rodrigoramos.airline.entities.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface TicketRepository extends JpaRepository<Ticket, Long> {

    List<Ticket> findByUserIdOrderByFlightsFlightDayAsc(Long userId);

    boolean existsByUserIdAndFlightsId(Long userId, Long flightId);

    @Query("SELECT t.seat FROM Ticket t JOIN t.flights f WHERE f.id = :flightId")
    List<String> findOccupiedSeatsByFlightId(@Param("flightId") Long flightId);
}
