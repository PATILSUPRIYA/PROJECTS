package com.spring.services;

import java.util.List;

import com.spring.model.Product;

public interface ProductServices {

	List<Product> getAllProducts();

	Product getProductByIsbn(int isbn);

	void deleteProduct(int isbn);

	void addProduct(Product product);

	void editProduct(Product product);

}
