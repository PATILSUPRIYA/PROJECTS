package com.spring.dao;

import java.util.List;
import com.spring.model.Product;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public ProductDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> getAllProducts() {
		Session session = sessionFactory.openSession();
		List<Product> products = session.createQuery("FROM Product").list();
		session.close();
		return products;
	}

	@Transactional
	public Product getProductsbyIsbn(int isbn) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, isbn);
		session.flush();
		session.close();
		return product;
	}

	public void deleteProduct(int isbn) {
		Session session = sessionFactory.openSession();
		// select * from where product isbn=?
		Product product = (Product) session.get(Product.class, isbn);
		// delete from product where isbn =?
		session.delete(product);
		session.flush();
		session.close();
	}

	public void addProduct(Product product) {

		Session session = sessionFactory.openSession();
		session.save(product);
		session.flush();
		session.close();
	}

	public void editProduct(Product product) {

		Session session = sessionFactory.openSession();
		session.update(product);
		session.flush();
		session.close();
	}




}