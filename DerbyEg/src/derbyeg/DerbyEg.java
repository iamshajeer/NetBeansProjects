/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package derbyeg;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Shajeer
 */
public class DerbyEg {

    private String driver = "org.apache.derby.jdbc.EmbeddedDriver";
    private String protocol = "jdbc:derby:";

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ClassNotFoundException {
        try {
            new DerbyEg().dbConnect();
        } catch (SQLException ex) {
        }
    }

    public void dbConnect() throws SQLException {
        try {
            Class.forName(driver).newInstance();
            Connection con = DriverManager.getConnection(protocol + "myDb;create=true", "", "");
            Statement st = con.createStatement();

            DatabaseMetaData meta = con.getMetaData();
            ResultSet res = meta.getTables(null, null, "DATA", null);
            if (!res.next()) {
                st.executeUpdate("create table data(num int primary key, addr varchar(40))");
                st.executeUpdate("create table (num int primary key, addr varchar(40))");
                
            }else{
           // st.executeUpdate("drop table DATA");
            }
            ResultSet re = st.executeQuery("select * from data");
            while (re.next()) {
                System.out.println(re.getInt(1));
                System.out.println(re.getString(2));
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

    }
}
