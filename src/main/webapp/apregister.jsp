<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.* " %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<b>


<% String fn=request.getParameter("fname"); %>
<% String ln=request.getParameter("lname"); %>
<% String em=request.getParameter("email"); %>
<% String ph=request.getParameter("phoneno"); %>
<% String su=request.getParameter("subject"); %>
<% String dis=request.getParameter("des"); %>

<%
try{
	 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rectify","root","");
    Statement s=con.createStatement();
    String qur="insert into appointment(FName,LName,Email,Phoneno,Subject,Discription) values(' "+fn+"',' "+ln+"',' "+em+"',' "+ph+"',' "+su+"',' "+dis+"') ";
    s.executeUpdate(qur);
   	
    response.sendRedirect("index.html");
	
	
}catch(Exception e){
	System.out.println(e);
}
%>
</b>
</body>
</html>