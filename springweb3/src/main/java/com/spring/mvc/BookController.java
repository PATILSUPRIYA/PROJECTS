package com.spring.mvc;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import java.io.File;
import java.nio.file.Path;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Book;
import com.spring.model.Category;
import com.spring.services.BookServices;

@Controller
public class BookController {

	@Autowired
	private BookServices bookServices;

	public BookServices getBookServices() {
		return bookServices;
	}

	public void setBookServices(BookServices bookServices) {
		this.bookServices = bookServices;
	}

	
	@RequestMapping("/getBooksList")
	public @ResponseBody List<Book> getBooksListInJSON(){
		return bookServices.getAllBooks();
	}
	
	@RequestMapping("/bookListAngular")
	public String getBooks(){
		return "bookList";
	}

	@RequestMapping("/getAllBooks")
	public ModelAndView getAllBooks() {
		List<Book> book = bookServices.getAllBooks();
		return new ModelAndView("bookList", "book", book);

	}

	@RequestMapping("getBooksByIsbn/{isbn}")
	public ModelAndView getBookByIsbn(@PathVariable(value = "isbn") int isbn) {
		Book book = bookServices.getBookByIsbn(isbn);
		return new ModelAndView("bookpage", "book", book);
	}

	@RequestMapping("delete/{isbn}")
	public String deleteBook(@PathVariable(value = "isbn") int isbn) {

		Path paths = Paths
				.get("D:\\javaFiles\\springweb\\src\\main\\webapp\\WEB-INF\\resources\\images\\" + isbn + ".png");
		if (Files.exists(paths)) {
			try {
				Files.delete(paths);
			} catch (IOException e) {

				e.printStackTrace();
			}
		}

		bookServices.deleteBook(isbn);

		return "redirect:/getAllBooks";
	}

	@RequestMapping(value = "/admin/book/addBook", method = RequestMethod.GET)
	public String getBookForm(Model model) {
		Book book = new Book();
		Category ca = new Category();
		ca.setCid(1);
		book.setCategory(ca);
		model.addAttribute("bookFormObj", book);
		return "bookForm";
	}

	@RequestMapping(value = "/admin/book/addBook", method = RequestMethod.POST)
	public String addBook(@Valid@ModelAttribute(value = "bookFormObj") Book book, BindingResult result) {
		if (result.hasErrors())
			return "bookForm";
		
		bookServices.addBook(book);

		MultipartFile bookImage = book.getBookImage();
		if (bookImage != null && !bookImage.isEmpty()) {
			Path paths = (Path) Paths.get("D:\\javaFiles\\springweb\\src\\main\\webapp\\WEB-INF\\resources\\images\\"
					+ book.getIsbn() + ".png");
			try {
				bookImage.transferTo(new File(paths.toString()));
			} catch (IllegalStateException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

		}
		return "redirect:/getAllBooks";
	}

	@RequestMapping("/admin/book/editBook/{isbn}")
	public ModelAndView getEditForm(@PathVariable(value = "isbn") int isbn) {
		Book book = this.bookServices.getBookByIsbn(isbn);
		return new ModelAndView("editBookForm", "editBookObj", book);
	}

	@RequestMapping(value = "admin/book/editBook", method = RequestMethod.POST)
	public String editBook(@ModelAttribute(value = "editBookObj") Book book) {
		bookServices.editBook(book);
		return "redirect:/getAllBooks";
	}
	
	

}
