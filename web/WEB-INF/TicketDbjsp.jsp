<%-- 
    Document   : dbDisplayjsp
    Created on : Oct 4, 2022, 10:59:32 PM
    Author     : DELL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Details</title>
    </head>
    
    <body style="background-color:powderblue">
        
        <h1>Ticket Information</h1>
        <br>
         
          
        <br>  
        <table border="2px  black groove" bgcolor="#c6e3f7">
            <thead>
     
                <tr height="40px" >
                    <td width="120px"><b><center>Ticket Id</center><b></td>
                     <td width="120px"><b><center>Travel date</center><b></td>
                     <td width="120px"><b><center>From</center><b></td>
                     <td width="120px"><b><center>Destination</center><b></td>
                     <td width="120px"><b><center>Price</center><b></td>
                </tr>
                
            </thead>
            
           <%
                
            String url="jdbc:mysql://localhost:3306/ticket";
            
            String query = "SELECT * FROM ticket_data";
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, "root","");
          
           
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
               
           {%>
           
               <tr height="30px">
                   <td><%=rs.getString("Ticket_Id") %></td>
                   <td><%=rs.getString("Date")%></td>
                   <td><%=rs.getString("From")%></td>
                   <td><%=rs.getString("Destination")%></td>
                   <td><%=rs.getString("price")%></td>
              
               </tr>
           
          <% }

            %>    
            <tr>
    
            </tr>
        </table>
    </body>
</html>

