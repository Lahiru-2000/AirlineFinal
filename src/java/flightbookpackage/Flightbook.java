/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package flightbookpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
class Flightbook {
    
Statement st;
private void connectoDb(){
          String url="jdbc:mysql://localhost:3306/flightdb";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException |SQLException ex) {
            Logger.getLogger(Flightbook.class.getName()).log(Level.SEVERE, null, ex);
        }
}
        
    
Vector viewFlight() {
        
        String sql="SELECT * FROM flight";
        Vector flightlist = new Vector();
        
        connectoDb();
    try {
        ResultSet rs=st.executeQuery(sql);
         flightlist.add(rs.getString("flightid"));
        flightlist.add(rs.getString("flightname"));
        flightlist.add(rs.getString("tdate"));
        flightlist.add(rs.getString("start"));
        flightlist.add(rs.getString("destination"));
         flightlist.add(rs.getString("seats"));
        
        
    } catch (SQLException ex) {
        Logger.getLogger(Flightbook.class.getName()).log(Level.SEVERE, null, ex);
    }

    return flightlist;
}   
}
    

