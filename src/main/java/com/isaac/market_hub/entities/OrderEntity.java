package com.isaac.market_hub.entities;


import com.isaac.market_hub.enuns.OrderStatus;
import jakarta.persistence.*;
import lombok.Getter;

import java.time.Instant;

@Entity
@Table(name = "orders")
public class OrderEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Instant moment;
    private OrderStatus status;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private UserEntity client;

    public OrderEntity() {
    }

    public OrderEntity(Long id, Instant moment, OrderStatus status, UserEntity client) {
        this.id = id;
        this.moment = moment;
        this.status = status;
        this.client = client;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setMoment(Instant moment) {
        this.moment = moment;
    }

    public void setStatus(OrderStatus status) {
        this.status = status;
    }

    public void setClient(UserEntity client) {
        this.client = client;
    }
}
