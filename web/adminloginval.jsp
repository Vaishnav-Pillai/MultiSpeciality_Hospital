<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid = request.getParameter("uname");
String password = request.getParameter("pwd");
try {
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vp_ai_b?characterEncoding=utf-8", "root", "root123");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from adminreg where uname='" + userid + "' and upass='" + password + "'");
 if(rs.next())
 {
    out.println("Welcome to : ");
    String redirectURL = "adminafterlogin.html";
    response.sendRedirect(redirectURL);
 }
 else
 {
    out.println("Wrong credentials");
 }
} catch (Exception e) {
 e.printStackTrace();
}
%>