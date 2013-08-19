/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fg;

import java.awt.GridBagLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

/**
 *
 * @author Shajeer
 */
public class Fg {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        final JFrame frame = new JFrame("Shajeer Mini Java App");
        frame.setSize(350, 100);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        JPanel panel = new JPanel();
        panel.setLayout(new GridBagLayout());
        frame.add(panel);
        JButton b = new JButton("click me");
        panel.add(b);

        b.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String l = null;
                File[] lof = null;
                File[] r = File.listRoots();
                String[] dir = new String[10];
                System.out.println("Found " + r.length + " roots ");
                for (int i = 0; i < r.length; i++) {
                    System.out.println(r[i].toString() + "   =   " + r[i].exists());
                    dir[i] = r[i].toString();
                    File f = new File("d:/");

                    if (f.isDirectory()) {
                        lof = f.listFiles();
                    }
                    l = lof.toString();
                    JOptionPane.showMessageDialog(null, l.length());
                }
                JOptionPane.showMessageDialog(null, dir, "Directories", JOptionPane.OK_OPTION);

            }
        });

        frame.setVisible(true);
        frame.setLocation(545, 275);
    }
}
