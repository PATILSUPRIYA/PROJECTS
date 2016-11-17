package com.spring.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Cart;
import com.spring.model.Customer;
import com.spring.model.CustomerOrder;
import com.spring.services.CartServices;
import com.spring.services.CustomerOrderServices;

@Controller
public class CustomerOrderController {

	@Autowired
    private CartServices cartServices;

    @Autowired
    private CustomerOrderServices customerOrderServices;

	

	 public CartServices getCartServices() {
		return cartServices;
	}



	public void setCartServices(CartServices cartServices) {
		this.cartServices = cartServices;
	}



	public CustomerOrderServices getCustomerOrderServices() {
		return customerOrderServices;
	}



	public void setCustomerOrderServices(CustomerOrderServices customerOrderServices) {
		this.customerOrderServices = customerOrderServices;
	}



	@RequestMapping("/order/{cartId}")
	    public String createOrder(@PathVariable("cartId") int cartId){
	        CustomerOrder customerOrder = new CustomerOrder();
	        Cart cart = cartServices.getCartByCartId(cartId);
	        //UPDATE CARTID FOR CUSTOMERORDER - SET CARTID
	        customerOrder.setCart(cart);

	        Customer customer = cart.getCustomer();
	        //SET CUSTOMERID
	        customerOrder.setCustomer(customer);
	        //SET BILLINGADDRESSID
	        customerOrder.setBillingAddress(customer.getBillingAddress());
	        //SET SHIPPINGADDRESSID
	        customerOrder.setShippingAddress(customer.getShippingAddress());

	        customerOrderServices.addCustomerOrder(customerOrder);

	        return "redirect:/checkout?cartId=" + cartId;

	    }
}
