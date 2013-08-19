/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbthread;

import java.sql.SQLException;

/**
 *
 * @author Shajeer
 */
public class DbThread {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // TODO code application logic here
        Asc t1=new Asc();
        Dsc t2=new Dsc();
        t1.start();
        t2.start();
    }
}
