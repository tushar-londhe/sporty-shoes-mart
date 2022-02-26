package com.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DataBaseDAO;
import com.vo.Customer;
import com.vo.Order;
import com.vo.Products;

@Service
public class DataBaseService 
{
	@Autowired
	DataBaseDAO dbDao;	
	
	public boolean validateOldPass(String userName, String oldPassword)
	{
		return dbDao.validateOldPass(userName, oldPassword);
	}
	
	public boolean resetPassword(String userName, String oldPassword, String newPassword)
	{
		return dbDao.resetPassword(userName, oldPassword, newPassword);
	}
	
	public boolean validateUser(String userName, String password)
	{
		return dbDao.validateUser(userName, password);
	}
	
	public boolean registerCustomer(Customer customer)
	{
		return dbDao.registerCustomer(customer);
	}
	
	public Map<String, Products> getProductList()
	{
		return dbDao.getProductList();
	}
	
	public Map<String, Customer> getCustomerDetails(String query, boolean searchFlag, String custFName)
	{
		return dbDao.getCustomerDetails(query, searchFlag, custFName);
	}
	
	public Map<String, Order> getOrderDetails(String query, boolean searchFlag, String ordDate, String ordCategory)
	{
		return dbDao.getOrderDetails(query, searchFlag, ordDate, ordCategory);
	}
}
