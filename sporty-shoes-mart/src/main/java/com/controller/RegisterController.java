package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.service.DataBaseService;
import com.utilities.CommonUtilities;
import com.vo.Customer;

@Controller
public class RegisterController
{
	@Autowired
	DataBaseService dbService;
	
	@RequestMapping(value = "/dispRegister", method = RequestMethod.GET) 
	public String displayRegister(Model model) 
	{ 	     
		model.addAttribute("customer", new Customer());
	    return "RegisterUser"; 
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST) 
	public String register(@ModelAttribute("customer") Customer customer, Model model ) 
	{
		String custFirstName = customer.getCustFirstName();
		String custLastName = customer.getCustLastName();
		String custEmail = customer.getCustEmail();
		String custMob = customer.getCustMob();
		String userID = customer.getUserID();
		String userPass = customer.getUserPass();
		
		String message = "";
		
		if(!CommonUtilities.checkNullOrEmpty(custFirstName) && !CommonUtilities.checkNullOrEmpty(custLastName) && !CommonUtilities.checkNullOrEmpty(custEmail) && !CommonUtilities.checkNullOrEmpty(custMob) && 
				!CommonUtilities.checkNullOrEmpty(userID) && !CommonUtilities.checkNullOrEmpty(userPass))
		{
			boolean flag = dbService.registerCustomer(customer);
			if(flag)
			{
				message = "Registered successfully !!";
			}
			else
			{
				message = "Registration Failed !";
			}
		}
		else
		{
			message = "All Fields are Mandatory";
		}		
		
		model.addAttribute("customer", new Customer());
		
		model.addAttribute("message", message);
		
		return "RegisterUser";
	}
	
}
