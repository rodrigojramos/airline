package com.rodrigoramos.airline.repositories;

public class DuplicateTicketException extends RuntimeException {
    public DuplicateTicketException(String msg) {
        super(msg);
    }
}
