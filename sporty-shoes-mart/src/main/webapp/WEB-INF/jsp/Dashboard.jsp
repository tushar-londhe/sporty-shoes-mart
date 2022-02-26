<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<spring:url value="/resources/js/jquery-3.6.0.min.js" />"></script> 
<script type="text/javascript" src="<spring:url value="/resources/js/main.js"/>"></script>
<link href="<spring:url value="/resources/css/main.css"/>" rel="stylesheet" type="text/css">

<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>

<div align="left" >	
	
	<h1>ADMIN TASKS</h1>	
	
	<a href="products">Review Products</a>
	<br/>
	<a href="orders">Purchase Reports</a>
	<br/>
	<a href="customers">Customer Report</a>
	<br/>
	<a href="entry">Exit</a>	
	
</div>

<div class="products">
<br/>
<div align="center" class="mainHeading">REVIEW PRODUCTS</div>
<br/>
	<table style="width:100%">
		<tr>
			<th>ID #</th>
			<th>Name</th>
			<th>Category</th>
			<th>Cost (Rs.)</th>
			<th>Origin Country</th>
		</tr>
		<c:forEach var="products" items="${mapOfProducts}">		
			<tr>
				<c:set var="pdt" value="${products.value}"></c:set>				
				<td><span style="font-family: courier"><c:out value="${pdt.pdtID}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${pdt.pdtName}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${pdt.pdtCategory}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${pdt.pdtCost}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${pdt.pdtOriginCountry}" /></span></td>
			</tr>
		</c:forEach>		
	</table>
</div>


<div class="orders">
<br/>
<div align="center" class="mainHeading">PURCHASE REPORTS</div>
	<br/>
	
	
	<div align="left">
		<form name="searchPurReport" method="post" action="searchPurReport">
			<table>
				<tr>
					<td>
						Order Date: <input type="text" name="ordDate" />						
						Category: <input type="text" name="ordCategory" />
						<input type="submit" name="btnSub" value="Submit" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<br/>
			
	<table style="width:100%">
		<tr>
			<th>ID #</th>
			<th>Bill No.</th>
			<th>Date</th>
			<th>Product Name</th>
			<th>Product Category</th>
			<th>Qty.</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Contact</th>
			<th>Amt (Rs.)</th>
			
		</tr>
		<c:set var="noOfOrders" value="${mapOfOrders.size()}" />
		<c:if test="${noOfOrders == 0 }">
		<tr>
		<td colspan="11" style="text-align:center">
		<span> No Records Found</span>
		</td>
		</tr>
		</c:if>
		<c:forEach var="orders" items="${mapOfOrders}">		
			<tr>
				<c:set var="ord" value="${orders.value}"></c:set>				
				<td><span style="font-family: courier"><c:out value="${ord.ordID}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.ordBillNo}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.ordDate}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.pdtName}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.pdtCategory}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.ordQty}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.custFName}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.custLName}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.custEmail}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.custMob}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${ord.ordAmt}" /></span></td>
			</tr>
		</c:forEach>		
	</table>
</div>


<div class="users">
<br/>
<div align="center" class="mainHeading">CUSTOMER REPORT</div>
	<br/>

		<div align="left">
			<form name="searchCust" method="post" action="search">
				<table>
					<tr>
						<td>
							Customer First Name: <input type="text" name="custFName" />
							<input type="submit" name="btnSubmit" value="Submit" />
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<br/>
				
		<table style="width:100%">
		<tr>
			<th>ID #</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Contact</th>
		</tr>
		
		<c:set var="noOfCustomers" value="${mapOfCustomers.size()}" />
		<c:if test="${noOfCustomers == 0 }">
		<tr>
		<td colspan="5" style="text-align:center">
		<span> No Records Found</span>
		</td>
		</tr>
		</c:if>
		
		
		<c:forEach var="customers" items="${mapOfCustomers}">		
			<tr>
				<c:set var="cust" value="${customers.value}"></c:set>				
				<td><span style="font-family: courier"><c:out value="${cust.custID}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${cust.custFirstName}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${cust.custLastName}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${cust.custEmail}" /></span></td>
				<td><span style="font-family: courier"><c:out value="${cust.custMob}" /></span></td>
			</tr>
		</c:forEach>		
	</table>
</div>
</body>
</html>