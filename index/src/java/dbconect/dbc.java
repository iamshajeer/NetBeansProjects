/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Shajeer
 */
public class dbc {
    
   Connection con;
Statement st;
ResultSet res;
public void dbc() throws ClassNotFoundException {
connect();
}    
public void connect() throws ClassNotFoundException {
    try{
        JOptionPane.showMessageDialog(null,"hhhhhhhhhhhi");
        String driver="sun.jdbc.odbc.JdbcOdbcDriver";
        Class.forName(driver);
        JOptionPane.showMessageDialog(null,"driver loaded");
        String url="jdbc:odbc:db3";
        con=DriverManager.getConnection(url);
        JOptionPane.showMessageDialog(null,"registering driver");
        st=con.createStatement();
        JOptionPane.showMessageDialog(null,"connection established");
    }catch(SQLException e){
       JOptionPane.showMessageDialog(null,e.getMessage());
    }
    }
    
}
