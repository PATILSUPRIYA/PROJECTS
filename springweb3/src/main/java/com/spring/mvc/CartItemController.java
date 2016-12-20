package com.spring.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.spring.model.Book;
import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;
import com.spring.services.BookServices;
import com.spring.services.CartItemServices;
import com.spring.services.CartServices;
import com.spring.services.CustomerServices;

@Controller
public class CartItemController {

	@Autowired
	private CartItemServices cartItemServices;

	@Autowired
	private CustomerServices customerServices;

	@Autowired
	private BookServices bookServices;
	
	@Autowired
	private CartServices cartServices;

	public CartItemServices getCartItemServices() {
		return cartItemServices;
	}

	public void setCartItemServices(CartItemServices cartItemServices) {
		this.cartItemServices = cartItemServices;
	}

	public CustomerServices getCustomerServices() {
		return customerServices;
	}

	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}

	public BookServices getBookServices() {
		return bookServices;
	}

	public void setBookServices(BookServices bookServices) {
		this.bookServices = bookServices;
	}
	
	

	public CartServices getCartServices() {
		return cartServices;
	}

	public void setCartServices(CartServices cartServices) {
		this.cartServices = cartServices;
	}

	@RequestMapping("/cart/add/{isbn}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addItem(@PathVariable(value = "isbn")  int isbn ) {
		System.out.println("addItem e******s");
		// Is to get the username of the customer
		// User object contains details about the user -username , password,
		// activeuser or not

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer = customerServices.getCustomerByUsername(username);
		System.out.println("Customer is " + customer.getCustomerEmail());
		Cart cart = customer.getCart();

		List<CartItem> cartItems = cart.getCartItem();
		Book book = bookServices.getBookByIsbn(isbn);

		for (int i = 0; i < cartItems.size(); i++) {
			CartItem cartItem = cartItems.get(i);

			if (book.getIsbn() == cartItem.getBook().getIsbn()) {
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setPrice(cartItem.getQuantity() * cartItem.getBook().getPrice());
				cartItemServices.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem=new CartItem();
		cartItem.setBook(book);
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(book.getPrice()*1);
		cartItem.setCart(cart);
		cartItemServices.addCartItem(cartItem);
		
	}
	
	@RequestMapping("/cart/removecartitem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable(value="cartItemId")int cartItemId){
		cartItemServices.removeCartItem(cartItemId);
	}
	
	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus	(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value="cartId")int cartId){
		Cart cart = cartServices.getCartByCartId(cartId);
		cartItemServices.removeAllCartItems(cart);
	}
	
}