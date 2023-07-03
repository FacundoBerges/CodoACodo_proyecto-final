package com.codoacodo.integradorfinal.exception;



/**
 * @author Facundo
 */
public class DatabaseConnectionException extends Exception {

    public DatabaseConnectionException(String message) {
        super(message);
    }

    public DatabaseConnectionException(String message, Throwable cause) {
        super(message, cause);
    }
    
    
}
