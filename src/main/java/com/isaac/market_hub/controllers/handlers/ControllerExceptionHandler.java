package com.isaac.market_hub.controllers.handlers;

import com.isaac.market_hub.dtos.AppError;
import com.isaac.market_hub.dtos.ValidationError;
import com.isaac.market_hub.services.exeptions.DatabaseException;
import com.isaac.market_hub.services.exeptions.ResourceNotFoundExecution;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.time.Instant;
import java.util.stream.Collectors;

@ControllerAdvice
public class ControllerExceptionHandler {

    @ExceptionHandler(ResourceNotFoundExecution.class)
    public ResponseEntity<AppError> resourceNotFound(ResourceNotFoundExecution e, HttpServletRequest request) {

        AppError err = new AppError(Instant.now(), HttpStatus.NOT_FOUND.value(), e.getMessage(), request.getRequestURI());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(err);
    }

    ;

    @ExceptionHandler(DatabaseException.class)
    public ResponseEntity<AppError> database(DatabaseException e, HttpServletRequest request) {
        AppError err = new AppError(Instant.now(), HttpStatus.CONFLICT.value(), e.getMessage(), request.getRequestURI());
        return ResponseEntity.status(HttpStatus.CONFLICT).body(err);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<AppError> methodArgumentNotValidation(MethodArgumentNotValidException e, HttpServletRequest request) {

        ValidationError err = new ValidationError(Instant.now(), HttpStatus.UNPROCESSABLE_CONTENT.value(), "Dados inválidos", request.getRequestURI());
        for (FieldError f : e.getBindingResult().getFieldErrors()) {
            err.addError(f.getField(), f.getDefaultMessage());
        }

        return ResponseEntity.status(HttpStatus.UNPROCESSABLE_CONTENT).body(err);
    }
}
