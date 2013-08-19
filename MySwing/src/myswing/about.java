/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myswing;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

/**
 *
 * @author Shajeer
 */
public class about {
    about(){
    final JFrame frame=new JFrame("about");
    frame.setSize(200,200);
    frame.setVisible(true);
    frame.setLayout(new FlowLayout());
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    JLabel l=new JLabel("hai myself shajeer ahamed kp\ndoing Mca @ cusat\n ring me at 9809856484\ninfo4shajeer@gmail.com");
    frame.add(l);
    JButton b=new JButton("back");
    frame.add(b);
    b.addActionListener(new ActionListener(){
            private String[] args;
    public void actionPerformed(ActionEvent e){
    frame.setVisible(false);
    myswing.MySwing.main(args);
    }
    });
    }
    
}
