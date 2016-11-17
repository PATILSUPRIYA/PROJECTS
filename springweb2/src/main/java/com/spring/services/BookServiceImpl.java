
package com.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.BookDao;
import com.spring.model.Book;

@Service
public class BookServiceImpl implements BookServices {
	@Autowired
	private BookDao bookDao;

	public BookDao getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	public List<Book> getAllBooks() {
		List<Book> book = bookDao.getAllBooks();
		return book;
	}

	public Book getBookByIsbn(int isbn) {

		return bookDao.getBooksbyIsbn(isbn);
	}

	public void deleteBook(int isbn) {
		bookDao.deleteBook(isbn);
	}

	public void addBook(Book book) {
		bookDao.addBook(book);

	}

	public void editBook(Book book) {
		bookDao.editBook(book);

	}

}
