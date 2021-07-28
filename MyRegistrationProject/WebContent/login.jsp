<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: lightgreen">
	<form action="loginRegister" method="post">
		<table
			style="background-color: lightgreen; margin-left: 20px; margin-top: 20px">
			<tr>
			<td><h3 style="color:red">${message}</h3>
			<h3  style="color:green"> ${successMessage}</h3>
			</td>
			</tr>
			<tr>
				<td><h3 style="color: black">User Login Page</h3>
			</tr>
			<tr>
				<td>Username :</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password1"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="login"></td>
				<td><a href="register.jsp">Registration</a></td>
			</tr>
			
			
		</table>
	</form>
		<h4 style="margin-left:20px"><a href="adminlogin.jsp">Admin Login</a></h4>
</body>
</html>