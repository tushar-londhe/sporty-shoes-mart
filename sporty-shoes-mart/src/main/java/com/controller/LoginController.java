package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.service.DataBaseService;
import com.utilities.CommonUtilities;
import com.vo.User;

@Controller
@RequestMapping(value = "/", method = RequestMethod.GET)
public class LoginController 
{
	@Autowired
	private DataBaseService dbService;
	
	@RequestMapping(value = "/dispResetPass", method = RequestMethod.GET) 
	public String displayPass(Model model) 
	{ 	     
	    return "ResetPass"; 
	}
	
	@RequestMapping(value = "/resetPass", method = RequestMethod.POST) 
	public String resetPass(Model model, @RequestParam("userName") String userName, @RequestParam("oldPassword") String oldPassword, @RequestParam("newPassword") String newPassword, @RequestParam("confirmPassword") String confirmPassword) 
	{ 	
		String forwardPage = "ResetPass";
		String message = "";
		
		if(!CommonUtilities.checkNullOrEmpty(userName) && !CommonUtilities.checkNullOrEmpty(oldPassword) && !CommonUtilities.checkNullOrEmpty(newPassword) && !CommonUtilities.checkNullOrEmpty(confirmPassword))
		{	
			if(dbService.validateOldPass(userName, oldPassword))
			{
				if(newPassword.equals(confirmPassword))
				{
					dbService.resetPassword(userName, oldPassword, newPassword);
					message = "Password Reset Successful !";
				}
				else
				{
					message = "Password & Confirm Password are not the same";
				}
			}
			else
			{
				message = "Password is incorrect";
			}
		}
		else
		{
			message = "One of the password fields is empty !"; 
		}
		
		model.addAttribute("errorMessage", message);
	 
		return forwardPage;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String displayLogin(Model model) 
	{ 
	    model.addAttribute("user", new User()); 
	    return "Login"; 
	}
	
	@RequestMapping(value = "/entry", method = RequestMethod.GET)
	public String showLogin(Model model) 
	{ 
	    model.addAttribute("user", new User()); 
	    return "Login"; 
	}
	
	@RequestMapping(method = RequestMethod.POST, path = "/authenticate")
	public String validateLogin(@ModelAttribute("user") User user, Model model)
	{
		String userID = user.getUserID();
		String userPass = user.getUserPass();
		boolean userValid = false;
		
		if(!CommonUtilities.checkNullOrEmpty(userID) && !CommonUtilities.checkNullOrEmpty(userPass))
		{			
			userValid = dbService.validateUser(userID, userPass);
			if(userValid)
			{				
				return "Dashboard";
			}
			else
			{
				model.addAttribute("errorMessage", "Login Failed !"); 
				return "Login";
			}
		}
		else
		{
			model.addAttribute("errorMessage", "UserName and Password are mandatory fields !");
			return "Login";
		}		
		
	}	
}