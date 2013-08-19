
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Shajeer
 */
public class dbcon {

    public Connection con = null;
    public Statement stmt = null;

    public dbcon(String dbname) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "sha123");
            stmt = con.createStatement();
            stmt.executeUpdate("use "+dbname);
            System.out.print("success");
        } catch (Exception ex) {
            System.out.print(ex);
        }
    }

    /**
     *
     * @param uid
     * @param uname
     * @param dob
     * @param address
     * @param place
     * @param pincode
     * @param phone
     * @param phone
     * @param doj
     * @param batch
     * @param photo
     * @param rollnum
     */
    public void insertstudent(String uid, String uname, int dob, String address, String place, int pincode, long phone, int doj, String batch, String photo, int rollnum) throws SQLException {
        String sql = "insert into student_registration values("
                + uid + ","
                + uname + ","
                + dob + ","
                +address+","
                +place+","
                +pincode+","
                +phone+","
                +doj+","
                +batch+","
                +photo+","
                +rollnum+")";
        stmt.executeQuery(sql);
                
 
    }
    
}
