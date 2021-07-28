<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"  %>
<%ResultSet resultset =null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body style="background:lightyellow">
<h2 style="margin-left:20px">Please Enroll into course</h2>

<table class="table table-bordered" style="width:80%;margin-left: 20px">
			
			<tr>
			<th> Course Id </th>
			<th> Course Name </th>
			<th> Course Price </th>
			</tr>
			 
			
			
			
			
			<% 
			try{
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
		Statement st=con.createStatement();
	
		ResultSet rs= st.executeQuery("select * from course");
		
		while(rs.next()){
			%>
			<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			</tr>
			<%
			
		}  
	}catch (Exception e){
		System.out.println(e);
	}
			
			%>
			
			
			
			
			</table>


	<form action="loginRegister" method="post">
		<table
			style="background-color: lightyellow; margin-left: 20px; margin-top: 20px">
		
		<tr>
				<td>Your Name :</td>
				<td><input type="text" name="name"></td>
			</tr>
			
			<tr>
				<td>Course Id :</td>
				<td><input type="text" name="courseid"></td>
			</tr>
			<tr>
				<td>Course Name :</td>
				<td><input type="text" name="coursename"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="enroll"></td>
				
			</tr>
			
			
		</table>
	</form>



</body>
</html>