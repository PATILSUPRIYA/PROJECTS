package com.spring.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
@Table(name = "bookcategory")
public class Category implements Serializable{
	/**
	 * 
	 */
private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="cid")
	private int cid;
	
	@Column(name = "categoryname")
	private String category;
	
	@OneToMany(mappedBy = "category")
	@JsonIgnore
	List<Book> books;

	public List<Book> getBooks() {
		return books;

	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}
