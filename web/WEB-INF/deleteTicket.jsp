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
        
        <h1>Delete Ticket Details</h1>
        <br>
         <%
    

             String qid=request.getParameter("id");
             String qdate=request.getParameter("date");
             String qstart=request.getParameter("start");
             String qdest=request.getParameter("destination");
             String qseats=request.getParameter("seats");
            
             String url="jdbc:mysql://localhost:3306/ticket";
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection(url, "root", "");
         
         Statement st=con.createStatement();
         
  
   
       %>
       
   

       <form action="deleteTickettServlet"  method="POST" name="frm">
           
           <table border="2px  black groove" bgcolor="#c6e3f7" >
               <tr>
                   
                   
               <!--  use readonly in here -->
      
               
                   <td width="40%"> Ticket Id :</td>
                   <td><input type="text" name="id" value="<%=qid%>"></td>  
               </tr>
               <tr>
                   <td> Date :</td>  
                   <td><input type="text" name="date" value="<%=qdate%>"></td>
               </tr>
               <tr>
                   <td>  Start : </td>
                   <td><input type="text" name="start" value="<%=qstart%>"></td>
               </tr>
               <tr>
                   <td> Destination : </td>
                   <td><input type="text" name="dest" value="<%=qdest%>"></td>
                </tr>
                 <tr>
                     <td> Price : </td>
                     <td><input type="text" name="price" value="<%=qseats%>"></td>
                <tr>
                      </table>
                
                <br>
                 <input type="submit" name="sub" value="Delete Ticket" style="background-color:#87cefa">
                
                 <input type="reset" name="reset" value="Cancel" style="background-color:#87cefa">
   
       </form>
   </body>
</html>
