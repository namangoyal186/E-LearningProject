<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: lightpink">
<form action="adminlogincheck.jsp" method="post">
		<table
			style="background-color: lightpink; margin-left: 20px; margin-top: 20px">
			
			<tr>
				<td><h3 style="color: black">Admin Login Page</h3>
			</tr>
			<tr>
				<td>Username :</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="Sign In"></td>
				
			</tr>
			
			
		</table>
	</form>
</body>
</html>