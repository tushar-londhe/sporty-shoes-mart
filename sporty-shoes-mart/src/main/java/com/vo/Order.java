package com.vo;

import java.math.BigDecimal;
import java.util.Date;

public class Order
{
	private String ordID;
	private String ordBillNo;
	private Date ordDate;
	private String pdtName;
	private String pdtCategory;
	private int ordQty;
	private String custFName;
	private String custLName;
	private String custEmail;
	private String custMob;
	private BigDecimal ordAmt;
	
	public String getOrdID()
	{
		return ordID;
	}
	public void setOrdID(String ordID)
	{
		this.ordID = ordID;
	}
	public String getOrdBillNo()
	{
		return ordBillNo;
	}
	public void setOrdBillNo(String ordBillNo)
	{
		this.ordBillNo = ordBillNo;
	}
	public Date getOrdDate()
	{
		return ordDate;
	}
	public void setOrdDate(Date ordDate)
	{
		this.ordDate = ordDate;
	}
	public String getPdtName()
	{
		return pdtName;
	}
	public void setPdtName(String pdtName)
	{
		this.pdtName = pdtName;
	}
	public String getPdtCategory()
	{
		return pdtCategory;
	}
	public void setPdtCategory(String pdtCategory)
	{
		this.pdtCategory = pdtCategory;
	}
	public int getOrdQty()
	{
		return ordQty;
	}
	public void setOrdQty(int ordQty)
	{
		this.ordQty = ordQty;
	}
	public String getCustFName()
	{
		return custFName;
	}
	public void setCustFName(String custFName)
	{
		this.custFName = custFName;
	}
	public String getCustLName()
	{
		return custLName;
	}
	public void setCustLName(String custLName)
	{
		this.custLName = custLName;
	}
	public String getCustEmail()
	{
		return custEmail;
	}
	public void setCustEmail(String custEmail)
	{
		this.custEmail = custEmail;
	}
	public String getCustMob()
	{
		return custMob;
	}
	public void setCustMob(String custMob)
	{
		this.custMob = custMob;
	}
	public BigDecimal getOrdAmt()
	{
		return ordAmt;
	}
	public void setOrdAmt(BigDecimal ordAmt)
	{
		this.ordAmt = ordAmt;
	}	
}