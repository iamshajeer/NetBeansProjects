/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package localhost.name.change;

import java.awt.FlowLayout;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Locale;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.plaf.basic.BasicArrowButton;

/**
 *
 * @author Shajeer
 */
public class LocalhostNameChange {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
       File f=new File("C:/Windows/System32/drivers/etc/hosts");
       JFrame frame=new JFrame("shaj");
       frame.setSize(350,100);
       frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
       JTextField jt=new JTextField(20);
       JButton bt=new JButton("Click me");
       bt.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(null, "Successfully updated registry");
                 System.exit(1);
            }
        });
       frame.add(jt);
       frame.add(bt);
       frame.setLayout(new GridBagLayout());
       frame.setVisible(true);
       frame.setLocation(400, 300);
       if(f.exists()){
           FileWriter fw=new FileWriter(f,true);
           BufferedWriter bw=new BufferedWriter(fw);
           bw.newLine();
           bw.write("127.0.0.1  greatShajeer.com");
           bw.close();
       }
    }
}
