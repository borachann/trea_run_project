package com.kosign.wecafe.services;

import java.util.List;

import com.kosign.wecafe.entities.Customer;
import com.kosign.wecafe.entities.OwedCustomer;
import com.kosign.wecafe.entities.Pagination; 

public interface CustomerService {
	public List<Customer> getAllCustomer(Pagination pagination );
	public List<Customer> getAllCustomers();
	public Customer getCustomer(Long cusId);
	public Boolean saveCustomer(Customer customer);
	public Boolean updateCustomer(Customer customer);
	public List<Customer> searchCustomer(String str);
	public Long count();
	public Boolean saveCusOwed(OwedCustomer cusowed);
}
