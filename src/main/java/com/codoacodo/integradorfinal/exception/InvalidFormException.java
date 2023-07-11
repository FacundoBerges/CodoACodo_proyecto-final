package com.codoacodo.integradorfinal.exception;


/**
 * @author Facundo Berges
 */
public class InvalidFormException extends RuntimeException {

    public InvalidFormException(String message) {
        super(message);
    }

    public InvalidFormException(String message, Throwable e) {
        super(message, e);
    }
    
    
}
