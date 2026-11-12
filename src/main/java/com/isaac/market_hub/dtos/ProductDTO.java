package com.isaac.market_hub.dtos;

import com.isaac.market_hub.entities.ProductEntity;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {
    private Long id;

    @NotBlank(message = "Escreva um nome")
    @Size(min = 10, max = 100, message = "O nome do produto deve ter entre 10 e 100 caracteres")
    private String name;
    private String description;

    @Min(1)
    private Double price;
    private String imgUrl;

    public ProductDTO(ProductEntity product) {
        this.id = product.getId();
        this.name = product.getName();
        this.description = product.getDescription();
        this.price = product.getPrice();
        this.imgUrl = product.getImgUrl();
    }
}
