package com.isaac.market_hub.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.Objects;

@Entity
@Table(name = "order_item")
@Setter
@Getter
@NoArgsConstructor
public class OrderItem {

    @EmbeddedId
    @Setter(AccessLevel.NONE)
    private OrdemItemPK id = new OrdemItemPK();

    private Integer quantity;

    private Double price;

    @Builder
    public OrderItem(ProductEntity product, OrderEntity order, Integer quantity,Double price){
        this.id.setProduct(product);
        this.id.setOrder(order);
        this.quantity = quantity;
        this.price = price;
    }


    public OrderEntity getOrder() {
        return id.getOrder();
    }

    public ProductEntity getProduct() {
        return id.getProduct();
    }

    @Override
    public final boolean equals(Object o) {
        if (!(o instanceof OrderItem orderItem)) return false;

        return Objects.equals(id, orderItem.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
