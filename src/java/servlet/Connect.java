/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Arun
 */
public class Connect {
     private Connection conn=null;
    public Connection getCon() throws SQLException{
    try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/paradise?zeroDateTimeBehavior=convertToNull", "root","");
        } catch (ClassNotFoundException ex) {   
             Logger.getLogger(Connect.class.getName()).log(Level.SEVERE, null, ex);
         }
    return conn;
    }
}
