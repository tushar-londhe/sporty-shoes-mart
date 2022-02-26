<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<script type="text/javascript" src="<spring:url value="/resources/js/jquery-3.6.0.min.js" />"></script> 
<script type="text/javascript" src="<spring:url value="/resources/js/main.js"/>"></script>
<link href="<spring:url value="/resources/css/main.css"/>" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>:: Login ::</title>
</head>
<body>

<div align="left">
<img alt="welcome to sporty-shoes" height="900px" src="<spring:url value="/resources/images/login-logo.jpg" />">
</div>

<div class="login" align="center">
	<h1>
	LOGIN
	</h1>
	
	<form:form action="authenticate" name="loginForm" id="loginForm" modelAttribute="user" method="post">	
		<table>
			<tr>
				<td><span style="font-family:verdana">USERNAME:</span></td>
				<td><form:input path="userID" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">PASSWORD:</span></td>
				<td><form:password path="userPass" name="password" id="password" /></td>
			</tr>
			<tr>
				<td>
					<input type="submit" name="btnSub" id="btnSub" value="Submit" />
				</td>
				<td>
					<a href="dispResetPass" title="Click here to Reset Password">Reset Password</a>
				</td>
				<td>
					<a href="dispRegister" title="Click here to Register">Register</a>
				</td>
			</tr>
			
		</table>
	</form:form>
</div>

<div id="errorDiv" class="loginPageError">
${errorMessage}
</div>

</body>
</html>