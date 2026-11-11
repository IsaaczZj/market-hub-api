package com.isaac.market_hub.controllers.handlers;

import com.isaac.market_hub.dtos.AppError;
import com.isaac.market_hub.services.exeptions.DatabaseException;
import com.isaac.market_hub.services.exeptions.ResourceNotFoundExecution;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.time.Instant;

@ControllerAdvice
public class ControllerExceptionHandler {

    @ExceptionHandler(ResourceNotFoundExecution.class)
    public ResponseEntity<AppError> ResourceNotFound(ResourceNotFoundExecution e, HttpServletRequest request) {

        AppError err = new AppError(Instant.now(), HttpStatus.NOT_FOUND.value(), e.getMessage(), request.getRequestURI());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(err);
    }

    ;

    @ExceptionHandler(DatabaseException.class)
    public ResponseEntity<AppError> Database(DatabaseException e, HttpServletRequest request) {
        AppError err = new AppError(Instant.now(), HttpStatus.CONFLICT.value(), e.getMessage(), request.getRequestURI());
        return ResponseEntity.status(HttpStatus.CONFLICT).body(err);
    }
}
