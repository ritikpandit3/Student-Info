<%-- 
    Document   : bike
    Created on : Mar 28, 2024, 10:44:00 AM
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
    <body bgcolor='lightcyan'>
        
    <center>
        <h1>List of All Students</h1>
         <table border='1'>
             <%
            try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RCollege?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            PreparedStatement ps=con.prepareStatement("select * from students");
            
            
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
             %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(11)%></td>
               
                <td><a href="update.html">Update</a></td>
                <td><a href="deletestudent.jsp">Delete</a></td>
            </tr>
            <%}
            }
            catch(Exception e)
            {}
            %>
           
           
        </table>
    </center>
       
        
    </body>
</html>

