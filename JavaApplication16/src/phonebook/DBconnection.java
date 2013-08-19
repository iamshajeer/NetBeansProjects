/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package phonebook;

import java.sql.DriverManager;

import java.sql.Connection;

import javax.swing.JOptionPane;

/**
 *
 * @author Administrator
 */
public class DBconnection {

    public static Connection conn;
    String url = "jdbc:odbc://localhost/login";
    String driver = "sun.jdbc.odbc.JdbcOdbcDriver";
    String userName = "sa";
    String password = "12345";

    public DBconnection() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Record Database Seleted", "Success",
                    JOptionPane.INFORMATION_MESSAGE);
        }
    }
}
