package com.isaac.market_hub.services.exeptions;

public class ResourceNotFoundExecution extends RuntimeException {
    public ResourceNotFoundExecution(String message) {
        super(message);
    }
}
    