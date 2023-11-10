package com.igriegao.expensemanager.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.UNAUTHORIZED)
public class EMAuthException extends RuntimeException {

    public  EMAuthException(String message){
        super(message);
    }
}
