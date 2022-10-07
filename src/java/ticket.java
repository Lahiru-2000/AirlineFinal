
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL
 */
class Ticket {
    
Statement st;
    private String tdest;
    private String tdate;
    private String tdest;
    private String tdate;

    void addTicket(String tid, String tdate, String tfrom, String tdest, String tprice) {
       
        connctionToDB();
        
        String query="INSERT INTO ticket(Id,Date,From,Destination,Price,Seat) VALUES('"+tid+"','"+tdate+"','"+tfrom+"','"+tdest+"','"+tprice+"')";
    
        try {
        st.executeUpdate(query);
    } catch (SQLException ex) {
        Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
    }
        
    }

    private void connctionToDB() {
        
       String url="jdbc:mysql://localhost:3306/ticketdb"; 
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection(url,"root","");
        
        st=con.createStatement();
        
    } catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
    }
       
       
    }
    
public boolean delete(String id, String tdest, String tdate)
   {
       connctionToDB();
  
     
    //int nid=Integer.parseInt("id");
    
    String sql="DELETE FROM ticket WHERE id='"+id+"' ";
    try {
      int r=  st.executeUpdate(sql);
       
     if(r>0)
      {
          boolean isSucess = true;
      }
      else
      {
          boolean isSucess = false;
      
    } 
      }catch (SQLException ex) {
        Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
    }
    return false;
    


    void Update(String tid = null, String tdate, String tstart = null, String tdest,)  String = null tprice
{
       
       connctionToDB();
        String tdate;
        String tdest;
      
      String sql=" UPDATE tiket_data SET Id = '"+tid+"',Date='"+tdate+"' Start='"+tstart+"' Destination='"+tdest+"' Price='"+tprice+"' WHERE Id = '"+tid+"'";
     
      try {
        st.executeUpdate(sql);
    } catch (SQLException ex) {
        Logger.getLogger(Ticket.class.getName()).log(Level.SEVERE, null, ex);
    } 
      
  
   }


