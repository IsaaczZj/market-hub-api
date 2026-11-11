package com.isaac.market_hub.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.time.Instant;

@AllArgsConstructor
@Getter
public class AppError {
    private Instant timestamp;
    private Integer status;
    private String error;
    private String path;
}
