package com.spring.dao;
import java.util.List;

import com.spring.model.Customer;

public interface CustomerDao {

	void addCustmoer(Customer customer);

	List<Customer> getAllCustomers();
	
	Customer getCustomerByUsername(String username);
}
