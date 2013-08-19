
package dbcon;
import java.sql.*;
import javax.swing.*;
/**
 *
 * @author Shajeer
 */
public final class Dbcon {
    Dbcon(){
    connect();
    }
    
Connection con;
Statement st;
ResultSet res;
     public void connect(){
    try{
     // JOptionPane.showMessageDialog(null,"hhhhhhhhhhhi");
        String driver="sun.jdbc.odbc.JdbcOdbcDriver";
        Class.forName(driver);
        JOptionPane.showMessageDialog(null,"driver loaded");
        String url="jdbc:mysql://localhost/db1";
        con=DriverManager.getConnection(url,"root","sha123");
          JOptionPane.showMessageDialog(null,"registering driver");
        st=con.createStatement();
        JOptionPane.showMessageDialog(null,"connection established");
    }catch(Exception e){
    JOptionPane.showMessageDialog(null,e.getMessage());
    }
    }
    
     public static void main(String[] args){
    new Dbcon();
     }
   
}
    