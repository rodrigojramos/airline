package com.rodrigoramos.airline.repositories;

import com.rodrigoramos.airline.entities.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
}
