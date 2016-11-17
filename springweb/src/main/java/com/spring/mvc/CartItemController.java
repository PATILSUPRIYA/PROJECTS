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

import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;
import com.spring.model.Product;

import com.spring.services.CartItemServices;
import com.spring.services.CartServices;
import com.spring.services.CustomerServices;
import com.spring.services.ProductServices;

@Controller
public class CartItemController {

	@Autowired
	private CustomerServices customerServices;

	@Autowired(required=true)
	private ProductServices productServices;

	@Autowired
	private CartItemServices cartItemServices;
	
	public CartItemServices getCartItemServices() {
		return cartItemServices;
	}

	public void setCartItemServices(CartItemServices cartItemServices) {
		this.cartItemServices = cartItemServices;
	}
	@Autowired
	private CartServices cartServices;

	public CartServices getCartServices() {
		return cartServices;
	}

	public void setCartServices(CartServices cartServices) {
		this.cartServices = cartServices;
	}

	public ProductServices getProductServices() {
		return productServices;
	}

	public void setProductServices(ProductServices productServices) {
		this.productServices = productServices;
	}

	public CartItemServices getCartItem() {
		return cartItemServices;
	}

	public void setCartItem(CartItemServices cartItemServices) {
		this.cartItemServices = cartItemServices;
	}

	public CustomerServices getCustomerServices() {
		return customerServices;
	}

	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}

	@RequestMapping("/cart/add/{isbn}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "isbn") int isbn) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer = customerServices.getCustomerByUsername(username);
		System.out.println("Customer is " + customer.getCustomerEmail() );

		Cart cart = customer.getCart();
		List<CartItem> cartItems = cart.getCartItem();
		Product product = productServices.getProductByIsbn(isbn);

		for (int i = 0; i < cartItems.size(); i++) {
			CartItem cartItem = cartItems.get(i);
			if (product.getIsbn() == cartItem.getProduct().getIsbn()) {

				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalprice(cartItem.getQuantity() * cartItem.getProduct().getPrice());
				cartItemServices.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(1);
		cartItem.setTotalprice(product.getPrice() * 1);
		cartItem.setCart(cart);
		cartItemServices.addCartItem(cartItem);

	}
	@RequestMapping("/cart/removecartitem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(
		@PathVariable(value="cartItemId") int cartItemId){
		cartItemServices.removeCartItem(cartItemId);
	}
	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value="cartId") int cartId){
		Cart cart=cartServices.getCartByCartId(cartId);
		cartItemServices.removeAllCartItems(cart);
			
				}



}
