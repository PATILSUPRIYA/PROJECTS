package com.spring.dao;

import java.util.List;
import com.spring.model.Book;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class BookDaoimpl implements BookDao {
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public BookDaoimpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Book> getAllBooks() {
		Session session = sessionFactory.openSession();
		List<Book> books = session.createQuery("FROM Book").list();
		session.close();
		return books;
	}

	@Transactional
	public Book getBooksbyIsbn(int isbn) {
		Session session = sessionFactory.openSession();
		Book book = (Book) session.get(Book.class, isbn);
		session.flush();
		session.close();
		return book;
	}

	public void deleteBook(int isbn) {
		Session session = sessionFactory.openSession();
		// select * from where book isbn=?
		Book book = (Book) session.get(Book.class, isbn);
		// delete from book where isbn =?
		session.delete(book);
		session.flush();
		session.close();
	}

	public void addBook(Book book) {

		Session session = sessionFactory.openSession();
		session.save(book);
		session.flush();
		session.close();
	}

	public void editBook(Book book) {

		Session session = sessionFactory.openSession();
		session.update(book);
		session.flush();
		session.close();
	}




}