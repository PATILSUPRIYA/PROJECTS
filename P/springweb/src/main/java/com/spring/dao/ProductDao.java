package com.spring.dao;

import java.util.List;

import com.spring.model.Product;

public interface ProductDao {
	List<Product> getAllProducts();

	Product getProductsbyIsbn(int isbn);

	void deleteProduct(int isbn);

	void addProduct(Product product);

	void editProduct(Product product);
}
