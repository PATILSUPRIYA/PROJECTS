package com.spring.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "BOOK")
public class Book implements Serializable {
	/**
	 * 
	 */
private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ISBN")
	private int isbn;

	@NotEmpty(message = "Title is mandatory")
	@Column(name = "TITLE")
	private String title;

	@NotEmpty(message = "Publication is mandatory")
	@Column(name = "PUBLICATION")
	private String publication;

	@NotNull(message = "Price is mandatory")
	@Min(value = 100, message = "minimum value should be greater than 100")
	@Column(name = "PRICE")
	private int price;

	@NotEmpty(message = "Author is mandatory")
	@Column(name = "AUTHOR")
	private String author;

	@ManyToOne
	@JoinColumn(name = "cid")
	private Category category;
	// const
	/*
	 * public Book(String title, String publication, String price, String
	 * author) { super(); this.title = title; this.publication = publication;
	 * this.price = price; this.author = author; }
	 */
	@Transient
	private MultipartFile bookImage;

	public MultipartFile getBookImage() {
		return bookImage;
	}

	public void setBookImage(MultipartFile bookImage) {
		this.bookImage = bookImage;
	}

	public int getIsbn() {
		return isbn;
	}

	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPublication() {
		return publication;
	}

	public void setPublication(String publication) {
		this.publication = publication;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;

	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	
}
