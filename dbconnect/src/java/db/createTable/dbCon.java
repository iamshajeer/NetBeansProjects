/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db.createTable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author MUHAMMAD RASHID
 */
public class dbCon {

    public Connection con = null;
    public Statement stmt = null;

    public dbCon() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "sha123");
            stmt = con.createStatement();
            System.out.print("success");
        } catch (Exception ex) {
            System.out.print(ex);
        }
    }

    public void create_db(String dbname) {
        try {

            if (!dbname.isEmpty()) {
                stmt.executeUpdate("create database " + dbname);
                stmt.executeUpdate("use " + dbname);
                new student_register(dbname);
                new transaction(dbname);
                new department(dbname);
            }
            else{
            JOptionPane.showMessageDialog(null, "Enter a department name !","Error",JOptionPane.OK_OPTION);
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Department name already exists \n try any other name!");
        } finally {
            
        }
    }
/*
    public boolean check(String dbname) {
        char[] dbnamechar = new char[dbname.length()];
        boolean flag=false;
        dbnamechar = dbname.toCharArray();
        for (int i = 0; i < dbname.length(); i++) {
            char c = dbnamechar[i];
            if (c <= 65 || c >= 90 && c <= 97 || c >= 122 && c<=48||c>=56) {
                flag=true;
            }
        
        }
        return false;
    }
    
    */
}
