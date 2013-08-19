package tictactoe;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Shajeer
 */
public class UIComp extends javax.swing.JFrame implements ActionListener {

    final JButton jb1 = new JButton("");
    final JButton jb2 = new JButton("");
    final JButton jb3 = new JButton("");
    final JButton jb4 = new JButton("");
    final JButton jb5 = new JButton("");
    final JButton jb6 = new JButton("");
    final JButton jb7 = new JButton("");
    final JButton jb8 = new JButton("");
    final JButton jb9 = new JButton("");
    int position[][] = new int[3][3];
    boolean flag = false;
    int count = 0;

    public UIComp() {
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                position[i][j] = 2;
            }
        }

        setSize(300, 300);
        setLayout(new GridLayout(3, 3));
        add(jb1);
        add(jb2);
        add(jb3);
        add(jb4);
        add(jb5);
        add(jb6);
        add(jb7);
        add(jb8);
        add(jb9);
        jb1.addActionListener(this);
        jb2.addActionListener(this);
        jb3.addActionListener(this);
        jb4.addActionListener(this);
        jb5.addActionListener(this);
        jb6.addActionListener(this);
        jb7.addActionListener(this);
        jb8.addActionListener(this);
        jb9.addActionListener(this);

        setVisible(true);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    public void actionPerformed(ActionEvent e) {
        JButton jb = (JButton) e.getSource();
        jb.setEnabled(false);
        if (flag) {
            if (jb == jb1) {
                position[0][0] = 1;
            } else if (jb == jb2) {
                position[0][1] = 1;
            } else if (jb == jb3) {
                position[0][2] = 1;
            } else if (jb == jb4) {
                position[1][0] = 1;
            } else if (jb == jb5) {
                position[1][1] = 1;
            } else if (jb == jb6) {
                position[1][2] = 1;
            } else if (jb == jb7) {
                position[2][0] = 1;
            } else if (jb == jb8) {
                position[2][1] = 1;
            } else if (jb == jb9) {
                position[2][2] = 1;
            }
            jb.setText("0");
            flag = false;
        } else {

            if (jb == jb1) {
                position[0][0] = 0;
            } else if (jb == jb2) {
                position[0][1] = 0;
            } else if (jb == jb3) {
                position[0][2] = 0;
            } else if (jb == jb4) {
                position[1][0] = 0;
            } else if (jb == jb5) {
                position[1][1] = 0;
            } else if (jb == jb6) {
                position[1][2] = 0;
            } else if (jb == jb7) {
                position[2][0] = 0;
            } else if (jb == jb8) {
                position[2][1] = 0;
            } else if (jb == jb9) {
                position[2][2] = 0;
            }
            jb.setText("X");
            flag = true;
        }
        count++;
        check();
        if (count == 9) {
            JOptionPane.showMessageDialog(null, "Game Over");

        }
    }

    public void check() {
                if (position[0][0] == 0 && position[1][0] == 0 && position[2][0] == 0 || position[0][0] == 0 && position[0][1] == 0 && position[0][2] == 0 || position[0][1] == 0 && position[1][1] == 0 && position[2][1] == 0 || position[1][0] == 0 && position[1][1] == 0 && position[1][2] == 0 || position[0][2] == 0 && position[1][2] == 0 && position[2][2] == 0 || position[2][0] == 0 && position[2][1] == 0 && position[2][2] == 0 || position[0][0] == 0 && position[1][1] == 0 && position[2][2] == 0 || position[0][2] == 0 && position[1][1] == 0 && position[2][0] == 0) {
                    JOptionPane.showMessageDialog(null, "Player 1 Wins");
                    new TicTacToe();
                }
                if (position[0][0] == 1 && position[1][0] == 1 && position[2][0] == 1 || position[0][0] == 1 && position[0][1] == 1 && position[0][2] == 1 || position[0][1] == 1 && position[1][1] == 1 && position[2][1] == 1 || position[1][0] == 1 && position[1][1] == 1 && position[1][2] == 1 || position[0][2] == 1 && position[1][2] == 1 && position[2][2] == 1 || position[2][0] == 1 && position[2][1] == 1 && position[2][2] == 1 || position[0][0] == 1 && position[1][1] == 1 && position[2][2] == 1 || position[0][2] == 1 && position[1][1] == 1 && position[2][0] == 1) {
                    JOptionPane.showMessageDialog(null, "Player 2 Wins");
                    System.exit(1);
                    new TicTacToe();
                }

            }
     
}
