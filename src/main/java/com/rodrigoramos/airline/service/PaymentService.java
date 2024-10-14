package com.rodrigoramos.airline.service;

import com.rodrigoramos.airline.dto.TicketDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {

    @Autowired
    private TicketService ticketService;

    public void payment(TicketDTO ticket) {

        ticketService.insert(ticket);

        System.out.println("Pagamento realizado com sucesso!");
    }

}
