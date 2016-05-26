package com.kosign.wecafe.controller.admin;

import java.security.Principal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kosign.wecafe.entities.Customer;
import com.kosign.wecafe.entities.OwedCustomer;
import com.kosign.wecafe.entities.Pagination;
import com.kosign.wecafe.services.CustomerService;

@Controller
public class CustomerController {
	
	@Inject
	private CustomerService customerService;
	
	@RequestMapping(value = "/admin/customerlist", method = RequestMethod.GET)
	public String listAllSuppliers(/*Map<String, Object> model*/) {
		//model.put("suppliers", SupplierService.getAllSupplier());
	
		return "admin/customerlist";
	} 
	
	@RequestMapping(value="/admin/viewupdatecus/{cusid}", method=RequestMethod.GET) 
	public ResponseEntity<Map<String, Object>> viewupdatecus(@PathVariable("cusid") Long cusid){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("customer", customerService.getCustomer(cusid));
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}
	@RequestMapping(value="/admin/updatecus", method=RequestMethod.POST) 
	public Boolean updatecus(
			@RequestParam(value="customerName") String customerName,
			@RequestParam(value="phoneNumber") String phoneNumber){
		try {
			Customer customers = new Customer();
			//Long cusId = Long.parseLong(cus_id);
			customers.setCustomerId(11l); 
			customers.setCustomerName(customerName);
			customers.setPhoneNumber(phoneNumber); 
			return customerService.updateCustomer(customers);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;

		 
	}
	
	@RequestMapping(value="/admin/listcustomer", method=RequestMethod.GET) 
	public ResponseEntity<Map<String, Object>> getAllcustomer(Pagination pagination){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("customer", customerService.getAllCustomer(pagination));
		pagination.setTotalCount(customerService.count());
		pagination.setTotalPages(pagination.totalPages());
		map.put("pagination",pagination);
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/admin/addcustomer", method=RequestMethod.POST, consumes= MediaType.APPLICATION_JSON_VALUE,produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Boolean addNewCustomer(@RequestBody Customer customerForm){
		
		try {
			Customer customers = new Customer();
			 
			customers.setCustomerName(customerForm.getCustomerName());
			customers.setPhoneNumber(customerForm.getPhoneNumber());			 
			return customerService.saveCustomer(customers);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
	@RequestMapping(value="/admin/saveCusOwed", method=RequestMethod.POST, consumes= MediaType.APPLICATION_JSON_VALUE,produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Boolean saveCusOwed(@RequestBody OwedCustomer owedCus){
		
		try {
			OwedCustomer Owed = new OwedCustomer();
			 
			Owed.setCus_id(owedCus.getCus_id());
			Owed.setTotalAmount(owedCus.getTotalAmount());			
			Owed.setOwedDate(new Date());
			Owed.setStatus(true); 
			return customerService.saveCusOwed(Owed);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
}
