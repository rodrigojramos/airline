package com.rodrigoramos.airline.service.exceptions;

public class DuplicateTicketException extends RuntimeException {
    public DuplicateTicketException(String msg) {
        super(msg);
    }
}
