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
        
             <%
            try
            {
            String roll=request.getParameter("a0");
            Class.forName("com.mysql.cj.jdbc.Driver");
            
           
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/RCollege?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","root");
            PreparedStatement ps=con.prepareStatement("select * from students where roll=?");
            
            ps.setString(1,roll);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
             
           %>
               
               
             
       
           
        
    </center>
       <div style="height: 30px;width:100%;background-color:navy">
            <a href="index.html" style="color:white;font-size:20px;text-decoration: none;padding-left:850px" > 
                Home
            </a>&nbsp;&nbsp;
            <b style="color: white">|</b>
            <a href="" style="color:white;font-size:20px;text-decoration: none;padding-left:50px" > 
                About Us
            </a>&nbsp;&nbsp;
            <b style="color: white">|</b>
            <a href="" style="color:white;font-size:20px;text-decoration: none;padding-left:50px" > 
                Contact Us
            </a>&nbsp;&nbsp;
            <b style="color: white">|</b>
            <a href="" style="color: white;font-size:20px;text-decoration: none;padding-left:50px" > 
                Register
            </a>&nbsp;&nbsp;
            <b style="color: white">|</b>
            <a href="" style="color:white;font-size:20px;text-decoration: none;padding-left:50px" > 
                Login
            </a>
        </div> 
    <center>
        
        <div style="height:700px;width:50%;background-color: white;border-radius:10px;border: 8px solid navy;margin-top:50px;">
             <form action="searchstudent.jsp">
            <h4 style="color: white;font-size:50px;margin-top: 50px">
               
                    <input type="text" placeholder="Enter Student's Id" name="a0"/>&nbsp;&nbsp;&nbsp;
    
        <br>
        <input style="border-radius:5px;background-color: navy;font-size: 30px;color: white" type="submit" value="Search"/> 
        
                </form>
               <br>
               <form action="updatestudent.jsp">
                   <input type="hidden" value="<%=roll%>" name="thidden"/>
                   <input type="text" placeholder="Enter Student's password" value="<%=rs.getString(2)%>" readonly/> &nbsp;&nbsp;&nbsp;
                     <input type="text" name="a2" placeholder="Enter Student's Name" value="<%=rs.getString(3)%>" readonly/>
                       
        <br>
       
            <input type="text" placeholder="Enter Student's Father Name" name="a3" value="<%=rs.getString(4)%>" />&nbsp;&nbsp;&nbsp;
            <input type="text" placeholder="Enter Student's Mother Name" name="a4" value="<%=rs.getString(5)%>"/>               
        <br>
       
            <input type="text" placeholder="Enter Student's Course" name="a5" value="<%=rs.getString(6)%>" readonly/>&nbsp;&nbsp;&nbsp;
            <input type="text" placeholder="Enter Student's Phone." name="a6" value="<%=rs.getString(7)%>" />
        <br>
        
         <input type="text" placeholder="Enter Student's Email" name="a7" value="<%=rs.getString(8)%>" />&nbsp;&nbsp;&nbsp;            
         <input type="text" placeholder="Enter Student's Aadhar" name="a8" value="<%=rs.getString(9)%>"/> 
         <br>
         <input type="date"  name="a9" value="<%=rs.getString(10)%>" readonly/>
         <input type="text" placeholder="Enter Student's Address" name="a10" value="<%=rs.getString(11)%>"/> 
         <br><br>
        <input style="border-radius:5px;background-color: navy;font-size: 30px;color: white" type="submit" value="UPDATE"/> 
  
               </form>
        <form action="deletestudent.jsp">
            <input type="hidden" value="<%=roll%>" name="thidden"/>
            <input style="border-radius:5px;background-color: navy;font-size: 30px;color: white" type="submit" value="DELETE"/> 
  
        </form>
               </h4> 
        </div>
    </center>
 <%   }
else
{
out.println("Record not found");
out.println("<a href='update.html'>Go Back to Update Correct ID</a>");
}
            }
            catch(Exception e)
            {}
            %>
        
    </body>
</html>

