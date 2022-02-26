<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<spring:url value="/resources/js/jquery-3.6.0.min.js" />"></script> 
<script type="text/javascript" src="<spring:url value="/resources/js/main.js"/>"></script>
<link href="<spring:url value="/resources/css/main.css"/>" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>

<div align="left">
<img alt="welcome to sporty-shoes" height="900px" src="<spring:url value="/resources/images/login-logo.jpg" />">
</div>

<div class="register" align="center">
	<h1>
	PLEASE REGISTER TO CREATE PROFILE
	</h1>
	
	<form:form action="register" name="registerForm" id="registerForm" modelAttribute="customer" method="post">	
		<table>
			<tr>
				<td><span style="font-family:verdana">First Name:</span></td>
				<td><form:input path="custFirstName" name="custFirstName" id="custFirstName" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">Last Name:</span></td>
				<td><form:input path="custLastName" name="custLastName" id="custLastName" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">Email:</span></td>
				<td><form:input path="custEmail" name="custEmail" id="custEmail" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">Mobile:</span></td>
				<td><form:input path="custMob" name="custMob" id="custMob" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">User Name:</span></td>
				<td><form:input path="userID" name="userID" id="userID" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">Password:</span></td>
				<td><form:password path="userPass" name="userPass" id="userPass" /></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			
			<tr>
				<td>
					<input type="submit" name="btnSub" id="btnSub" value="Submit" />
				</td>	
				<td>
					Already A User <a href=entry >Click Here</a>
				</td>
			</tr>
			
		</table>
	</form:form>
</div>

<div id="errorDiv" class="registerPageError" align="center">
${message}
</div>

</body>
</html>