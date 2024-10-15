package com.rodrigoramos.airline.service;

import com.rodrigoramos.airline.entities.Flight;
import com.rodrigoramos.airline.entities.Ticket;
import com.rodrigoramos.airline.repositories.FlightRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

@Service
public class FlightCleanupService {

    @Autowired
    private FlightService flightService;

    @Autowired
    private FlightRepository flightRepository;

    @Autowired
    private TicketService ticketService;

    @Scheduled(cron = "0 0 6 * * ?")
    @Transactional
    public void deletePastFlights() {
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime cutoffDate = now.minusDays(1);

        List<Flight> pastFlights = flightRepository.findByFlightDayBefore(cutoffDate);

        for (Flight flight : pastFlights) {
            Set<Ticket> tickets = flight.getTickets();
            for (Ticket ticket : tickets) {
                ticketService.delete(ticket.getId());
            }
            flightService.delete(flight.getId());
        }
    }
}
