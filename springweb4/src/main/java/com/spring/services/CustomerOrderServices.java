package com.spring.services;

import com.spring.model.CustomerOrder;


public interface CustomerOrderServices {

	 void addCustomerOrder(CustomerOrder customerOrder);

	    double getCustomerOrderGrandTotal(int cartId);
}
