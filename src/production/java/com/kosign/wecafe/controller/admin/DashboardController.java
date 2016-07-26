package com.kosign.wecafe.controller.admin;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosign.wecafe.services.ProductService;
import com.kosign.wecafe.services.SellProductsService;
import com.kosign.wecafe.services.SellService;
import com.kosign.wecafe.services.UserService;
import com.kosign.wecafe.services.report.AdminReportService;

@Controller
public class DashboardController {

	@Autowired
	UserService userService;
	
	@Autowired
	SellProductsService sellProductService;
	
	@Autowired
	SellService sellerService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	AdminReportService adminReportService;
	
	@RequestMapping(value={"/admin/dashboard","/admin/","/admin/home"})
	public String dashboard(/*Map<String, Object> model*/){
		/*model.put("TOTAL_SALES", sellerService.getAllSellCount());
		model.put("NEW_ORDERS", sellProductService.getOrdered().size());
		model.put("REQUEST_STOCK", sellProductService.getRequestStock().size());
		model.put("TOTAL_USERS", userService.getAllUsers().size());*/
		return "admin/dashboard";
	}
	@RequestMapping(value="/admin/dashboardsize")
	public ResponseEntity<Map<String, Object>> dashboardsize(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("TOTAL_SALES", sellerService.getSellAmount());
		//map.put("NEW_ORDERS", sellProductService.getOrdered().size());
		map.put("Total_Purchase", adminReportService.getTotalPurchase());
		map.put("AllProduct", productService.AllProducts());
		map.put("REQUEST_STOCK", sellProductService.getRequestStock().size());
		//map.put("TOTAL_USERS", userService.count());
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);	 
	}
}
