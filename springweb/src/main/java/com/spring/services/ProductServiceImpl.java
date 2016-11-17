
package com.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.ProductDao;
import com.spring.model.Product;

@Service
public class ProductServiceImpl implements ProductServices {
	@Autowired
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> getAllProducts() {
		List<Product> product = productDao.getAllProducts();
		return product;
	}

	public Product getProductByIsbn(int isbn) {

		return productDao.getProductsbyIsbn(isbn);
	}

	public void deleteProduct(int isbn) {
		productDao.deleteProduct(isbn);
	}

	public void addProduct(Product product) {
		productDao.addProduct(product);

	}

	public void editProduct(Product product) {
		productDao.editProduct(product);

	}

}
