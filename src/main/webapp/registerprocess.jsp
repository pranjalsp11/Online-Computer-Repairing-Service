<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String userid = request.getParameter("userid");
String password = request.getParameter("password");
String confirmPassword=request.getParameter("confirmpassword");
String gender= request.getParameter("gender");
try {
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rectify", "root", "");
 Statement st = conn.createStatement();
 int i = st.executeUpdate("insert into registration(FName,LName,Email,UserId,Password,ConfirmPassword,Gender)values('" + fname + "','" + lname
 + "','" + email + "','" + userid + "','" + password + "' ,'" +confirmPassword + "' ,'" + gender + "')");
 response.sendRedirect("loginpagecode.html");
} catch (Exception e) {
 System.out.print(e);
 e.printStackTrace();
}
%>