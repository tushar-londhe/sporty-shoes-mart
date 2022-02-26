package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.Queries;
import com.service.DataBaseService;
import com.vo.Customer;
import com.vo.Order;

@Controller
public class SearchController
{
	@Autowired
	private DataBaseService dbService;
	
	@RequestMapping(value = "/search", method=RequestMethod.POST)
	public String searchCustomer(@RequestParam("custFName") String custFName, Model model)
	{
		Map<String, Customer> mapOfCustomers = dbService.getCustomerDetails(Queries.SEARCH_CUSTOMER, true, custFName);
		model.addAttribute("mapOfCustomers", mapOfCustomers);
		return "Dashboard";
	}
	
	@RequestMapping(value="/searchPurReport", method = RequestMethod.POST)
	public String displayOrders(@RequestParam("ordDate") String ordDate, @RequestParam("ordCategory") String ordCategory, Model model)
	{
		Map<String, Order> mapOfOrders = dbService.getOrderDetails(Queries.SEARCH_ORDERS, true, ordDate, ordCategory);
		model.addAttribute("mapOfOrders", mapOfOrders);
		return "Dashboard";
	}
}
