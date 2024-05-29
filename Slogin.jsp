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
        <title>Faculty</title>
    </head>
    <body>
        <%
            try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RCollege?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            PreparedStatement ps=con.prepareStatement("select * from students where roll=? and password=?");
            ps.setString(1, request.getParameter("b1"));
            ps.setString(2, request.getParameter("b2"));
            
           
             ResultSet rs=ps.executeQuery();
             if(rs.next())
             {
             %>
             <h1 style="background-color:lightcyan;color: white">Welcome to the Student page...</h1>
            
           
                 <jsp:forward page="StudentSec.html"/>
             <%}
             else
{
out.println("Invalid id and password");
%>
<jsp:include page="login.html"/>
<%
}
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
            %>
    </body>
</html>
