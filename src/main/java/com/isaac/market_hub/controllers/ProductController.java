package com.isaac.market_hub.controllers;

import com.isaac.market_hub.dtos.ProductDTO;
import com.isaac.market_hub.entities.ProductEntity;
import com.isaac.market_hub.repositories.ProductRepository;
import com.isaac.market_hub.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/products")
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/{id}")
    public ResponseEntity<ProductDTO> findById(@PathVariable Long id) {

        return ResponseEntity.ok(productService.findById(id));
    }
}
