package com.isaac.market_hub.entities;

import jakarta.persistence.*;
import lombok.*;

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

}
