package com.rodrigoramos.airline.repositories;

import com.rodrigoramos.airline.entities.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
}
