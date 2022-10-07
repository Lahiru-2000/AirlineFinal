<%-- 
    Document   : display
    Created on : Oct 6, 2022, 5:18:19 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Flight Details</h1>
        <br>
        <table border="2px  black groove" bgcolor="#c6e3f7">
            <thead>
         
                <tr height="40px">
                    <td width="110px"><b><center>Flight Id</center><b></td>
                     <td width="130px"><b><center>Flight Name</center><b></td>
                     <td width="130px"><b><center>Travel date</center><b></td>
                     <td width="160px"><b><center>Start</center><b></td>
                     <td width="160px"><b><center>Destination</center><b></td>
                     <td width="110px"><b><center>Seats</center><b></td>
                </tr>
                
            </thead>
            
           <%
                
            String url="jdbc:mysql://localhost:3306/flightdb";
            
            String query = "SELECT * FROM flight";
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, "root","");
          
           
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
               
           {%>
           
               <tr height="30px">
                   <td><%=rs.getString("flightid") %></td>
                   <td><%=rs.getString("flightname")%></td>
                   <td><%=rs.getString("tdate")%></td>
                   <td><%=rs.getString("start")%></td>
                   <td><%=rs.getString("destination")%></td>
                   <td><%=rs.getString("seats")%></td>
               </tr>
           
          <% }

            %>    
            <tr>
    
            </tr>
        </table>
    </body>
</html>
