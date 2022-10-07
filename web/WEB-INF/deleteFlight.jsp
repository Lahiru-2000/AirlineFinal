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
        
        <h1>Delete Flight Details</h1>
        <br>
         <%
    

             String did=request.getParameter("id");
             String dname=request.getParameter("name");
             String ddate=request.getParameter("date");
             String dstart=request.getParameter("start");
             String ddest=request.getParameter("destination");
             String dseats=request.getParameter("seats");
            
             String url="jdbc:mysql://localhost:3306/flightdb";
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection(url, "root", "");
         
         Statement st=con.createStatement();
         
         String query="SELECT * FROM flight WHERE id='"+did+"'";
    
        st.executeQuery(query);
  
   
       %>
       
   

       <form action="deleteFlightServlet"  method="POST" name="frm">
           
           <table border="2px  black groove" bgcolor="#c6e3f7" >
               <tr>
                   
                   
               <!--  use readonly in here -->
      
               
                   <td width="40%"> Flight Id :</td>
                   <td><input type="text" name="id" value="<%=did%>" ></td>  
               </tr>
               <tr>
                   <td > Flight Name : </td>
                   <td><input type="text" name="name" value="<%=dname%>"></td>
               </tr>
               <tr>
                   <td> Date :</td>  
                   <td><input type="text" name="date" value="<%=ddate%>"></td>
               </tr>
               <tr>
                   <td>  Start : </td>
                   <td><input type="text" name="start" value="<%=dstart%>"></td>
               </tr>
               <tr>
                   <td> Destination : </td>
                   <td><input type="text" name="dest" value="<%=ddest%>"></td>
                </tr>
                 <tr>
                     <td> Seats : </td>
                     <td><input type="text" name="seats" value="<%=dseats%>"></td>
                <tr>
                      </table>
                
                <br>
                 <input type="submit" name="sub" value="Delete Flight" style="background-color:#87cefa">
                
                 <input type="reset" name="reset" value="Cancel" style="background-color:#87cefa">
   
       </form>
   </body>
</html>
