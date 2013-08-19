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
public class transaction {
     public transaction(String dbname){            
            try {
                //Connect to the Database
                dbCon db = new dbCon();
                 //System.out.print("success");
                //table transactio creation
                String mytable="CREATE TABLE transaction("+
                    "type varchar(10) ,"+
                    "t_no integer,"+
                    "u_id varchar(15),"+
                    "b_id varchar(15),"+
                    "doi date,"+
                    "dor date,"+
                    "doren date,"+
                    "nor integer)";     
                db.stmt.executeUpdate("use "+dbname);
                db.stmt.executeUpdate(mytable);               
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(null, ex.getMessage());
          }
    } 
}
