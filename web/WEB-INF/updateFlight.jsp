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
            body{
               background-color:powderblue; 
            } 
        </style>
    </head>
    <body style="background-color:powderblue">
        
        <h1>Update Flight Details </h1>
        <br>
         <%
    

             String uid=request.getParameter("id");
             String uname=request.getParameter("name");
             String udate=request.getParameter("date");
             String ustart=request.getParameter("start");
             String udest=request.getParameter("destination");
             String useats=request.getParameter("seats");
            
             String url="jdbc:mysql://localhost:3306/flightdb";
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection(url, "root", "");
         
         Statement st=con.createStatement();
         
    
         String query="SELECT * FROM flight WHERE id='"+uid+"'";
    
        st.executeQuery(query);
    
       

       %>
              <h2>Update Records</h2>
       
       <form action="UpdateFlightServlet"  method="POST" name="frm">
           
           <table border="2px  black groove" bgcolor="#c6e3f7">
               <tr>
                   <td> Flight Id :</td>
                   <td><input type="text" name="id" value="<%=uid%>"></td>  
               </tr>
               <tr>
                   <td> Flight Name : </td>
                   <td><input type="text" name="name" value="<%=uname%>"></td>
               </tr>
               <tr>
                   <td> Date :</td>  
                   <td><input type="text" name="date" value="<%=udate%>" ></td>
               </tr>
               <tr>
                   <td>  Start : </td>
                   <td><input type="text" name="start" value="<%=ustart%>"></td>
               </tr>
               <tr>
                   <td> Destination : </td>
                   <td><input type="text" name="dest" value="<%=udest%>"></td>
                </tr>
                 <tr>
                     <td> Seats : </td>
                     <td><input type="text" name="seats" value="<%=useats%>"y></td>
                <tr>
                    </table>
                <br>
                <input type="submit" name="sub" value="Update Flight " style="background-color:#87cefa">
                
                    <input type="reset" name="reset" value="Cancel" style="background-color:#87cefa">
 
       </form>
            
                    <%
                        
      ResultSet rs = st.executeQuery(query);
           while(rs.next())
               
           {%>
           
               <tr height="30px">
                   <td><%=rs.getString("id") %></td>
                   <td><%=rs.getString("name")%></td>
                   <td><%=rs.getString("date")%></td>
                   <td><%=rs.getString("start")%></td>
                   <td><%=rs.getString("destination")%></td>
                   <td><%=rs.getString("seats")%></td>
                   <td> 
           <% }

            %>   
   
    </body>
</html>
