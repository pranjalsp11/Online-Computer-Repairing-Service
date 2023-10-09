<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name="Norton Internet Security";
int price=2400;
session.setAttribute("name",name);
session.setAttribute("price",price);
response.sendRedirect("addtocart.jsp");
%>
</body>
</html>