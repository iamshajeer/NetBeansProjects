/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbthread;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Shajeer
 */
public class Dsc extends Thread {

    ResultSet result;
    Statement statement;
    Connection connection;

    public Dsc() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost/inventry", "root", "sha123");
        statement = connection.createStatement();
    }

    @Override
    public void run() {
        String query = "SELECT * FROM data order by name desc limit 5";
        try {
            result = statement.executeQuery(query);

            while (result.next()) {
                System.out.print("\n"+result.getInt(1) + "\t");
                System.out.print(result.getString(2) + "\t\t");
                System.out.print(result.getDouble(3) + "\t\t");
                System.out.print(result.getString(4) + "\t\t\n");

            }

        } catch (SQLException ex) {
            Logger.getLogger(Asc.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
