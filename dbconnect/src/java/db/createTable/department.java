/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db.createTable;

import javax.swing.JOptionPane;

/**
 *
 * @author Shajeer
 */
public class department {

    public department(String dbname) {
        try {
            dbCon db = new dbCon();
            String mytable = "CREATE TABLE department("
                    + "d_id varchar(15) primary key,"
                    + "d_name varchar(25) NOT NULL,"
                    + "l_name varchar(25),"
                    + "l_uname VARCHAR(25),"
                    + "l_id varchar(25),"
                    + "l_password varchar(25),"
                    + "l_address varchar(100),"
                    + "l_place varchar(30),"
                    + "l_pincode integer,"
                    + "l_email varchar(50),"
                    + "l_phone bigint)";
                db.stmt.executeUpdate("use "+dbname);
            db.stmt.executeUpdate(mytable);
        } catch (Exception ex) {
                            JOptionPane.showMessageDialog(null, ex.getMessage());

            
            
        }
    }
}
