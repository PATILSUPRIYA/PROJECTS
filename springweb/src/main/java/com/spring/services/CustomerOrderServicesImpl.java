package com.spring.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CustomerOrderDao;
import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.CustomerOrder;

@Service
public class CustomerOrderServicesImpl implements CustomerOrderServices {

	@Autowired
	private CustomerOrderDao customerOrderDao;

	@Autowired
	private CartServices cartServices;

	public CustomerOrderDao getCustomerOrderDao() {
		return customerOrderDao;
	}

	public void setCustomerOrderDao(CustomerOrderDao customerOrderDao) {
		this.customerOrderDao = customerOrderDao;
	}

	public CartServices getCartServices() {
		return cartServices;
	}

	public void setCartServices(CartServices cartServices) {
		this.cartServices = cartServices;
	}

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);

	}

	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal = 0;
		Cart cart = cartServices.getCartByCartId(cartId);
		System.out.println(cart.getTotalPrice());
		List<CartItem> cartItems = cart.getCartItem();

		for (CartItem item : cartItems) {
			grandTotal += item.getTotalprice();
		}

		return grandTotal;
	}
}
