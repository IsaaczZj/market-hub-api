package com.isaac.market_hub.services;

import com.isaac.market_hub.dtos.ProductDTO;
import com.isaac.market_hub.entities.ProductEntity;
import com.isaac.market_hub.repositories.ProductRepository;
import com.isaac.market_hub.services.exeptions.ResourceNotFoundExecution;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.ResourceAccessException;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    @Transactional(readOnly = true)
    public ProductDTO findById(Long id) {

        ProductEntity product = productRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundExecution("Produto não encontrado"));

        return new ProductDTO(product);
    }

    @Transactional(readOnly = true)
    public Page<ProductDTO> findAll(Pageable pageable) {
        Page<ProductEntity> products = productRepository.findAll(pageable);

        return products.map(ProductDTO::new);

    }

    @Transactional
    public ProductDTO create(ProductDTO dto) {
        ProductEntity product = new ProductEntity();
        product.setName(dto.getName());
        product.setDescription(dto.getDescription());
        product.setImgUrl(dto.getImgUrl());
        product.setPrice(dto.getPrice());

        return new ProductDTO(productRepository.save(product));
    }

    @Transactional
    public ProductDTO update(Long id, ProductDTO dto) {
        ProductEntity product = productRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundExecution("Produto não encontrado"));

        if (dto.getName() != null) {
            product.setName(dto.getName());
        }

        if (dto.getDescription() != null) {
            product.setDescription(dto.getDescription());
        }

        if (dto.getPrice() != null) {
            product.setPrice(dto.getPrice());
        }

        if (dto.getImgUrl() != null) {
            product.setImgUrl(dto.getImgUrl());
        }

        product = productRepository.save(product);

        return new ProductDTO(product);
    }

    @Transactional
    public void delete(Long id) {
        ProductEntity product = productRepository.findById(id).orElseThrow(() -> new ResourceNotFoundExecution("Produto não encontrado"));
        productRepository.deleteById(id);
    }
}
