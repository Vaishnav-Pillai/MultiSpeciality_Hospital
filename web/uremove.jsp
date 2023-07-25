<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>
<%
String userid = request.getParameter("uname");
String umail = request.getParameter("umail");
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vp_ai_b?characterEncoding=utf-8", "root", "root123");
    Statement st = con.createStatement();
    int rs = st.executeUpdate("delete from reg where uname='" + userid + "' and umail='" + umail + "'");
    out.println("Data Deleted Successfully..");
} catch (Exception e) {
 e.printStackTrace();
}
%>