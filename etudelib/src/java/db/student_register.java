package db;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import javax.swing.JOptionPane;

/**
 *
 * @author MUHAMMAD RASHID
 */
public class student_register {
    public student_register(String dbname){            
            try {
                //Connect to the Database
               // JOptionPane.showMessageDialog(null, "hi");
                dbCon db = new dbCon();
                   System.out.print("success");
                //creatung student registration
                String mytable="CREATE TABLE student_registration("+
                "u_id varchar(15) primary key,"+
                "u_name varchar(50) NOT NULL,"+
                "dob DATE,"+
                "address VARCHAR(100),"+
                "place varchar(30),"+
                "pincode integer,"+
                "phone bigint,"+
                "email VARCHAR(50),"+
                "doj date,"+
                "batch VARCHAR(30),"+
                "photo varchar(100),"+
                "rollnumber integer)";
                
                db.stmt.executeUpdate("use "+dbname);
                db.stmt.executeUpdate(mytable);
                                
            } catch (Exception ex) {
                
                                JOptionPane.showMessageDialog(null, ex.getMessage());

            }

    } 
    
}
