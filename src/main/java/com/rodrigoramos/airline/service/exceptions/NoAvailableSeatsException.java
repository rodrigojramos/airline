package com.rodrigoramos.airline.service.exceptions;

public class NoAvailableSeatsException extends RuntimeException{

    public NoAvailableSeatsException(String msg) {
        super(msg);
    }
}
