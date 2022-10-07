<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : deletejsp
    Created on : Oct 5, 2022, 2:18:53 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            frm{
                color:LightGray ;
            }
        </style>
    </head>
    <body style="background-color:powderblue">
        
        <h1>Update User Details</h1>
        <br>
         <%
    

             String ufname=request.getParameter("fname");
             String ulname=request.getParameter("lname");
             String udob=request.getParameter("dob");
             String ugender=request.getParameter("gender");
             String umobile=request.getParameter("mobile");
             String uemail=request.getParameter("email");
             String upass=request.getParameter("pass");
             String ucountry=request.getParameter("country");
             String ucity=request.getParameter("city");
            String uzip=request.getParameter("zip");
            
             String url="jdbc:mysql://localhost:3306/useraccountsdb";
         
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection(url, "root", "");
         
             Statement st=con.createStatement();

       %>
       
   

       <form action="updateUserServlet"  method="POST" name="frm">
           
           <table border="2px  black groove" bgcolor="#c6e3f7" >
               <tr>
                  
               <!--  use readonly in here -->

                   <td width="40%"> First Name :</td>
                   <td><input type="text" name="fname" value="<%=ufname%>" ></td>  
               </tr>
               <tr>
                   <td > Last Name : </td>
                   <td><input type="text" name="lname" value="<%=ulname%>" ></td>
               </tr>
               <tr>
                   <td> Date Of Birth :</td>  
                   <td><input type="text" name="dob" value="<%=udob%>"></td>
               </tr>
               <tr>
                   <td>  Gender : </td>
                   <td><input type="text" name="gender" value="<%=ugender%>"></td>
               </tr>
               <tr>
                   <td> Mobile : </td>
                   <td><input type="text" name="mobile" value="<%=umobile%>" ></td>
                </tr>
                 <tr>
                     <td> Email : </td>
                     <td><input type="text" name="email" value="<%=uemail%>"></td>
                <tr>
                 <tr>
                     <td> Passport No : </td>
                     <td><input type="text" name="passs" value="<%=upass%>"></td>
                <tr>
                <tr>
                     <td> Country : </td>
                     <td><input type="text" name="country" value="<%=ucountry%>" ></td>
                <tr>
                <tr>
                     <td> City : </td>
                     <td><input type="text" name="country" value="<%=ucity%>" ></td>
                <tr>
                <tr>
                     <td> Zip Code : </td>
                     <td><input type="text" name="zip" value="<%=uzip%>" ></td>
                <tr>
                 </table>
                
                <br>
                 <input type="submit" name="sub" value="Update Account" style="background-color:#87cefa">
                
                 <input type="reset" name="reset" value="Cancel" style="background-color:#87cefa">
 
       </form>
    
    </body>
</html>
