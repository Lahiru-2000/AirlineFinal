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
        <title>User Account Details</title>
    </head>
    <body style="background-color:powderblue">
        
        <h1>User Account Details</h1>
        <br>
        <table border="2px  black groove" bgcolor="#c6e3f7">
            <thead>
         
                <tr height="40px">
                    
                     <td width="2%"><b><center>First Name</center><b></td>
                     <td width="2%"><b><center>Last Name</center><b></td>
                     <td width="2%"><b><center>Date Of Birth</center><b></td>
                     <td width="1%"><b><center>Gender</center><b></td>
                     <td width="2%"><b><center>Mobile</center><b></td>
                     <td width="2%"><b><center>Email</center><b></td>
                     <td width="2%"><b><center>Passport No</center><b></td>
                     <td width="2%"><b><center>Country</center><b></td>
                     <td width="2%"><b><center>City</center><b></td>
                     <td width="1%"><b><center>Zip Code</center><b></td>
                     
                     <td width="1%"><b><center>Update</center><b></td>
                     <td width="1%"><b><center>Delete</center><b></td>
                </tr>
                
            </thead>
            
           <%
                
            String url="jdbc:mysql://localhost:3306/useraccountsdb";
            
            String query = "SELECT * FROM user";
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection(url, "root","");
          
           
           Statement st = con.createStatement();
           ResultSet rs = st.executeQuery(query);
           while(rs.next())
               
           {%>
           
               <tr height="30px">
                   
                   <td><%=rs.getString("FirstName") %></td>
                   <td><%=rs.getString("LastName")%></td>
                   <td><%=rs.getString("DOB")%></td>
                   <td><%=rs.getString("Gender")%></td>
                   <td><%=rs.getString("Mobile")%></td>
                   <td><%=rs.getString("Email")%></td>
                   <td><%=rs.getString("PassportNo")%></td>
                   <td><%=rs.getString("Country")%></td>
                   <td><%=rs.getString("City")%></td>
                   <td><%=rs.getString("ZipCode")%></td>
                   <td> 
                       <a href="userUpdatejsp.jsp" ><center><input type="submit" value="Update" name="update"></center></a>
                   </td>
                   <td>
                       <a href="Deletejsp.jsp" ><center><input type="reset" value="Block" name="del" ></center></a>
                   </td>
               </tr>
           
          <% }

            %>    
            <tr>
    
            </tr>
        </table>
    </body>
</html>
