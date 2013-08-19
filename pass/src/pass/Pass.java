/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pass;

import java.awt.Toolkit;

/**
 *
 * @author Shajeer
 */
public class Pass {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)  {
        /*String newpassword = null;
        byte[] passinbyte = new byte[50];
        String password="shajeer";
        MessageDigest md = MessageDigest.getInstance("SHA1");
        md.reset();
        passinbyte = password.getBytes();
        md.update(passinbyte);
        JOptionPane.showMessageDialog(null,md.digest());
        */
        Toolkit.getDefaultToolkit().beep();
        System.out.println("\007");
 //       newpassword = passinbyte.toString();
    }
}
