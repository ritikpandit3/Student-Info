<%-- 
    Document   : updatefaculty
    Created on : Apr 6, 2024, 10:15:59 AM
    Author     : Soberr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("thidden");
         
             try
            {
          
            Class.forName("com.mysql.cj.jdbc.Driver");
            
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RCollege?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            PreparedStatement ps=con.prepareStatement("delete from students where roll=?");
       
            
            ps.setString(1,id);
            ps.executeUpdate();
            out.println("Record Deleted Successfully...");
            out.println("<a href='index.html'>Click Here Goto Faculty Page</a>");
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
        %>
    </body>
</html>
