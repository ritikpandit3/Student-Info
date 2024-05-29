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
        <title>contact</title>
    </head>
    <body>
        <%
            try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RCollege?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            PreparedStatement ps=con.prepareStatement("insert into contactus values(?,?,?,?,?)");
            ps.setString(1, request.getParameter("s1"));
            ps.setString(2, request.getParameter("s2"));
            ps.setString(3, request.getParameter("s3"));
            ps.setString(4, request.getParameter("s4"));
            ps.setString(5, request.getParameter("s5"));
            
            
           
           
            ps.executeUpdate();%>
            <h1>Message send SUCCESSFULLY...</h1>
            
            <%
            
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
            %>
    </body>
</html>
