package com.isaac.market_hub.entities;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.*;

import java.util.Objects;

@Embeddable
@Getter
@Setter
@NoArgsConstructor
public class OrdemItemPK {

    @ManyToOne
    @JoinColumn(name = "order_id")
    private OrderEntity order;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private ProductEntity product;
    // A chave só identifica um item quando os dois registros têm ID.
    boolean hasCompleteIdentity() {
        return getOrderId() != null && getProductId() != null;
    }

    private Long getOrderId() {
        return getOrder() != null ? getOrder().getId() : null;
    }

    private Long getProductId() {
        return getProduct() != null ? getProduct().getId() : null;
    }

    @Override
    public final boolean equals(Object o) {
        if (!(o instanceof OrdemItemPK that)) return false;

        return Objects.equals(order, that.order) && Objects.equals(product, that.product);
    }

    @Override
    public int hashCode() {
        int result = Objects.hashCode(order);
        result = 31 * result + Objects.hashCode(product);
        return result;
    }
}
