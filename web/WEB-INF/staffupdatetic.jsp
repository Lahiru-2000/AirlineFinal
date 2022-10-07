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
        
        <h1>Update Ticket Details</h1>
        <br>
         <%
    

             String ttid=request.getParameter("id");
             String ttdate=request.getParameter("date");
             String ttstart=request.getParameter("start");
             String ttdest=request.getParameter("destination");
             String ttprice=request.getParameter("price");
            
             String url="jdbc:mysql://localhost:3306/ticket";
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection(url, "root", "");
         
         Statement st=con.createStatement();
         
         String query="SELECT * FROM ticket_data WHERE id='"+ttid+"'";
    
        st.executeQuery(query);
  
   
       %>
       
   

       <form action="UpdateTicketServlet"  method="POST" name="frm">
           
           <table border="2px  black groove" bgcolor="#c6e3f7" >
               <tr>
                   
                   
               <!--  use readonly in here -->
      
               
                   <td width="40%"> Ticket Id :</td>
                   <td><input type="text" name="id" value="<%=ttid%>"></td>  
               </tr>  
               <tr>
                   <td> Date :</td>  
                   <td><input type="text" name="date" value="<%=ttdate%>"></td>
               </tr>
               <tr>
                   <td>  Start : </td>
                   <td><input type="text" name="start" value="<%=ttstart%>"></td>
               </tr>
               <tr>
                   <td> Destination : </td>
                   <td><input type="text" name="dest" value="<%=ttdest%>"></td>
                </tr>
                 <tr>
                     <td> Price : </td>
                     <td><input type="text" name="seats" value="<%=ttprice%>"></td>
                <tr>
                      </table>
                
                <br>
                 <input type="submit" name="sub" value="Update" style="background-color:#87cefa">
                
                 <input type="reset" name="reset" value="Cancel" style="background-color:#87cefa">
   
       </form>
   </body>
</html>
