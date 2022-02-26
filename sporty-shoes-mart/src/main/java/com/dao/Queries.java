package com.dao;

public class Queries
{
	public static String VALIDATE_USERS = "select count(*) from users where USER_NAME=? and USER_PASS=?";
	public static String USERS_VAL_OLD_PASS = "select count(*) from users where USER_NAME=? and USER_PASS=?";
	public static String USERS_UPD_PASS = "update users set USER_PASS=? where USER_NAME=? and USER_PASS=? ";
	public static String REG_CUSTOMER = "insert into customers(CUST_F_NAME, CUST_L_NAME, CUST_EMAIL, CUST_MOB) VALUES (?,?,?,?)";
	public static String REG_LOGIN = "insert into users(USER_NAME, USER_PASS, USER_ROLE) VALUES (?,?,?)";
	
	public static String GET_PRODUCTS = "SELECT * FROM PRODUCTS";
	public static String GET_CUSTOMERS = "SELECT * FROM CUSTOMERS";
	public static String GET_ORDERS = "SELECT * FROM ORDER_REGISTER";
	public static String SEARCH_CUSTOMER = "SELECT * FROM CUSTOMERS where CUST_F_NAME=?";
	public static String SEARCH_ORDERS = "SELECT * FROM ORDER_REGISTER where convert(ORD_DATE, DATE)=? and ORD_PDT_CATEGORY=?";
}
