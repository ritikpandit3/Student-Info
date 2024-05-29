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
        <title>Update</title>
    </head>
    <body>
        <%
            String roll=request.getParameter("thidden");
            String name=request.getParameter("a2");
            String fname=request.getParameter("a3");
            String mname=request.getParameter("a4");
            String phone=request.getParameter("a6");
            String address=request.getParameter("a10");
             try
            {
          
            Class.forName("com.mysql.cj.jdbc.Driver");
            
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RCollege?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            PreparedStatement ps=con.prepareStatement("update students set s_name=?,father_name=?,mother_name=?,phone=?,address=? where roll=?");
            ps.setString(1,name);
            ps.setString(2,fname);
            ps.setString(3,mname);
            ps.setString(4,phone);
            ps.setString(5,address);
             ps.setString(6,roll);
            
           
            ps.executeUpdate();
            out.println("Record Updated Successfully...");
            out.println("<a href='index.html'>Click Here Goto Faculty Page</a>");
        }
        catch(Exception e)
        {
        out.println(e.getMessage());
        }
        %>
    </body>
</html>
