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
<title>Reset Password</title>
</head>
<body>

<div align="left">
<img alt="welcome to sporty-shoes" height="900px" src="<spring:url value="/resources/images/login-logo.jpg" />">
</div>

<div class="resetPass" align="center">
	<h1>
	RESET PASSWORD
	</h1>
	<form action="resetPass" name="resetPass" method="post">
		<table>
			<tr>			
				<td><span style="font-family:verdana">User Name:</span></td>
				<td><input type="text" name="userName" id="userName" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">Old Password:</span></td>
				<td><input type="password" name="oldPassword" id="oldPassword" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">New Password:</span></td>
				<td><input type="password" name="newPassword" id="newPassword" /></td>
			</tr>
			<tr>
				<td><span style="font-family:verdana">Confirm Password:</span></td>
				<td><input type="password" name="confirmPassword" id="confirmPassword" /></td>
			</tr>
			<tr>
				<td>
					<input type="submit" name="btnSub" id="btnSub" value="Submit" />
				</td>	
				<td>
					Already A User <a href="/login" >Click Here</a>
				</td>			
			</tr>
			
		</table>
	</form>
</div>

<div id="errorDiv" class="resetPassPageError">
${errorMessage}
</div>


</body>
</html>