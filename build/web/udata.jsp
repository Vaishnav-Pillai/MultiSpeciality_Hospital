<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <title>VPT</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai&display=swap" rel="stylesheet">
        <style>
        /* CSS Reset */
        body {
            font-family: 'Baloo Bhai', cursive;
            color: white;
            margin: 0px;
            padding: 0px;
            background: url("Images/hbg.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        body image{
            opacity: 0.2;
        }
        .header{
            border: 2px black solid;
            border-radius: 7px;
            height: 68px;
            background: linear-gradient(to bottom, #003300 0%, #006600 100%);
        }
        .left {
            display: inline-block;
            position: absolute;
            left: 30px;
            top: 10px;
        }

        .left img {
            width: 60px;
        }

        .left div {
            line-height: 19px;
            font-size: 26px;
            text-align: center;
        }

        .mid {
            display: inline;
            width: 40%;
            margin: auto 50px 5px 100px;
        }

        .right {
            position: absolute;
            right: 17px;
            top: 18px;
            display: inline-block;
        }

        .navbar {
            display: inline-block;
        }

        .navbar li {
            display: inline-block;
            font-size: 22px;
        }

        .navbar li a {
            color: white;
            text-decoration: none;
            padding: 0px 23px;
            transition: all 0.9s ease 0s;
        }

        .navbar li a:hover, .navbar li a.active {
            text-decoration: underline;
            color: black;
            background: white;
            border-radius: 15px;
        }
        .btn {
            font-family: 'Baloo Bhai', cursive;
            margin: 0px 9px;
            background-color: black;
            color: white;
            padding: 4px 14px;
            border: 2px solid grey;
            border-radius: 10px;
            font-size: 20px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn:hover {
            background-color: rgb(31, 30, 30);
        }
        .right .btn{
            height: 35px;
            width: 90px;
            font-size: 15px;
        }
        .right a{
            text-decoration: none;
            color: white;
        }
        .container {
            color: black;
            margin-left: 4px;
            width: 90%;
            padding-left: 80px;
            font-family: 'Baloo Bhai',cursive;
            font-size: 45px;
            border: 2px black solid;
            border-radius: 10px;
            background: white;
            text-align: center;
        }
        .tabledec,th,td{
            width: 100%;
            background: black;
            border: 1px solid;
            text-align: center;
        }
        th{
            height: 50px;
        }
        .tabledec:hover{
            background-color: red;
            
        }
        
        </style>
        
    </head>
<body>
    <header class="header">
        <div class="left">
            <img id="nobg" src="Images/hlogo.png" alt="">
        </div>
        <div class="mid">
            <ul class="navbar">
                <li><a href="afterlogin.html">Home</a></li>
                <li><a href="udata.jsp" class="active">User-Data</a></li>
                <li><a href="uremove.html">Remove User</a></li>
            </ul>
        </div>
    </header>
    <center><h1 class="container">...User - Data... </h1></center>
    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vp_ai_b?characterEncoding=utf-8", "root", "root123");
    Statement st = con.createStatement();
    ResultSet resultset = st.executeQuery("select * from reg");
    %>
    <TABLE class="tabledec">
      <TR>
      <TH>Name</TH>
      <TH>E-Mail</TH>
      <TH>Password</TH>
      <TH>D.O.B</TH>
      <TH>Gender</TH>
      <TH>Phone No.</TH>
      <TH>Country</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
       <TD> <%= resultset.getString(7) %></TD>
      </TR>
      <% } %>
    </body>
</html>