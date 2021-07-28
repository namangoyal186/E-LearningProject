<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"  %>
<%ResultSet resultset =null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<h2 style="margin-left:50px;margin-bottom:20px">Welcome Admin</h2>
<div>
<table class="table table-bordered" style="width:30%;float:left;margin-left:50px">
			
			<tr>
			
			<th> All Courses </th>
			
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
			
			<td><%=rs.getString(2) %></td>
		
			</tr>
			<%
			
		}  
	}catch (Exception e){
		System.out.println(e);
	}
			
			%>
			
			
			
			
			</table>
			

<table class="table table-bordered" style="width:30%; float:left; margin-left:50px">
			
			<tr>
			
			<th> All Users </th>
			
			</tr>
			 
			
			
			
			
			<% 
			try{
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/orcl","sys as sysdba","system");
		Statement st=con.createStatement();
	
		ResultSet rs= st.executeQuery("select * from customer");
		
		while(rs.next()){
			%>
			<tr>
			
			<td><%=rs.getString(3) %></td>
		
			</tr>
			<%
			
		}  
	}catch (Exception e){
		System.out.println(e);
	}
			
			%>
			
			
			
			
			</table>
			
	</div>		

</body>
</html>