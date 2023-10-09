<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid = request.getParameter("userid");

String password = request.getParameter("password");
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rectify", "root", "");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM `registration` WHERE UserId='"+userid+"' and Password='"+password+"';");

try {
 rs.next();
 if (rs.getString("Password").equals(password) && rs.getString("UserId").equals(userid)) {
	 session.setAttribute("userid",userid);
	 session.setAttribute("pass",password);
	 response.sendRedirect("index.html");
 } else {
	 
 }
} catch (Exception e) {
	response.sendRedirect("registerpagecode.html");
}
%>