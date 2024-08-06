package com.rodrigoramos.airline.repositories;

import com.rodrigoramos.airline.entities.Flight;
import com.rodrigoramos.airline.projections.FlightProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface FlightRepository extends JpaRepository<Flight, Long> {

    @Query("SELECT obj FROM Flight obj WHERE obj.departure = :departure AND obj.arrival = :arrival AND EXTRACT(DAY FROM obj.flightDay) = :d AND EXTRACT(MONTH FROM obj.flightDay) = :m AND EXTRACT(YEAR FROM obj.flightDay) = :y")
    List<Flight> searchFlightByDateAndDestination(String departure, String arrival, Integer d, Integer m, Integer y);

    @Query(value = "SELECT f.id, f.departure, f.arrival, f.flight_day " +
            "FROM tb_flight f " +
            "JOIN tb_ticket_flight tf ON f.id = tf.flight_id " +
            "JOIN tb_ticket t ON tf.ticket_id = t.id " +
            "WHERE t.user_id = :userId " +
            "ORDER BY f.flight_day ASC",
            nativeQuery = true)
    List<FlightProjection> searchAllFlightsByUser(@Param("userId") Long userId);

    @Query(value = "SELECT id, departure, arrival, flight_day " +
            "FROM tb_flight " +
            "WHERE CAST(flight_day AS DATE) = CURRENT_DATE",
            nativeQuery = true)
    List<FlightProjection> searchTodayFlights();
}
