<%@ page language="java" import="java.sql.*,java.util.*"%>
<%
    String name = request.getParameter("uname");
    String email = request.getParameter("uemail");
    String pass = request.getParameter("upass");
    String dob = request.getParameter("udob");
    String gender = request.getParameter("ugender");
    String phone = request.getParameter("uphone");
    String country = request.getParameter("uloc");
    String role = request.getParameter("urole"); 
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vp_ai_b?characterEncoding=utf-8", "root", "root123");
        PreparedStatement ps = con.prepareStatement("insert into reg values(?,?,?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pass);
        ps.setString(4, dob);
        ps.setString(5, gender);
        ps.setString(6, phone);
        ps.setString(7, country);
        ps.executeUpdate();
        out.println("Data saved successfully. Now please Login to Continue...");
        String redirectURL = "index.html";
        response.sendRedirect(redirectURL);
    } catch (Exception e) {
        out.println(e);
    } 
%>
