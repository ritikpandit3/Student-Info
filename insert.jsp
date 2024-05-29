<%-- 
    Document   : register
    Created on : Mar 23, 2024, 10:51:20 AM
    Author     : Soberr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body>
        <%
            try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RCollege?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            PreparedStatement ps=con.prepareStatement("insert into students values(?,?,?,?,?,?,?,?,?,?,?)");
               ps.setString(1, request.getParameter("a0"));
            ps.setString(2, request.getParameter("a1"));
            ps.setString(3, request.getParameter("a2"));
            ps.setString(4, request.getParameter("a3"));
            ps.setString(5, request.getParameter("a4"));
            ps.setString(6, request.getParameter("a5"));
            ps.setString(7, request.getParameter("a6"));
            ps.setString(8, request.getParameter("a7"));
            ps.setString(9, request.getParameter("a8"));
            ps.setString(10, request.getParameter("a9"));
            ps.setString(11, request.getParameter("a10"));
            
           
           
            ps.executeUpdate();%>
            <h1>Student ADDED SUCCESSFULLY...</h1>
            
            <%
            
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
            %>
    </body>
</html>
