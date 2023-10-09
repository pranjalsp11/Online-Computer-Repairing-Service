<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String name = (String)session.getAttribute("name");
int price = (int)session.getAttribute("price");

 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rectify", "root", "");
 Statement st = con.createStatement();

 try {
	 
	 
		 st.executeUpdate("insert into cart(Name,Price) values(' "+name+" ',' "+price+"')");
		 response.sendRedirect("printcart.jsp");
	 
	} catch (Exception e) {
		System.out.println(e); 
	}
%>
</body>
</html>