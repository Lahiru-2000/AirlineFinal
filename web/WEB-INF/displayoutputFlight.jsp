<%-- 
    Document   : DisplayOutputjsp
    Created on : Oct 5, 2022, 12:00:56 AM
    Author     : DELL
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <h1>Flight</h1>
               <table>
                   <thead>
                       <tr>
                           <td>Flight Id</td>
                           <td>Flight Name</td>
                           <td>Date</td>
                           <td>Start</td>
                           <td>Destination</td>
                           <td>Seats</td>
                       </tr>
                   </thead>
        <%
            Vector fresult=(Vector)request.getAttribute("flight");
            Enumeration e = fresult.elements();
            while(e.hasMoreElements())
            {%>
            <tr>
                <td><%=e.nextElement()%></td>
            </tr>  
            <%}
   %>
        </table>
    </body>
</html>
