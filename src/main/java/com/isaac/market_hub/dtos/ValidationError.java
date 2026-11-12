package com.isaac.market_hub.dtos;

import lombok.Getter;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

@Getter

public class ValidationError extends AppError {

    private List<FieldMessage> errors = new ArrayList<>();

    public ValidationError(Instant timestamp, Integer status, String error, String path) {
        super(timestamp, status, error, path);
    }

    public void addError(String fieldMame, String fieldMessage) {
        errors.add(new FieldMessage(fieldMame, fieldMessage));

    }
}
