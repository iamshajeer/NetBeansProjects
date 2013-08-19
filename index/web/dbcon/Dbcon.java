
package dbcon;
import java.awt.HeadlessException;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;
/**
 *
 * @author Shajeer
 */
public class Dbcon {
    
    
Connection con;
Statement st;
ResultSet res;

    public void Dbcon(){
    connect();
    frame();
    }
    public void connect(){
    try{
        String driver="sun.jdbc.odbc.JdbcOdbcDriver";
        Class.forName(driver);
        JOptionPane.showMessageDialog(null,"driver loaded");
        String url="jdbc:odbc:localhost/db1";
        con=DriverManager.getConnection(url,"root","sha123");
          JOptionPane.showMessageDialog(null,"registering driver");
        st=con.createStatement();
        JOptionPane.showMessageDialog(null,"connection established");
    }catch(Exception e){
    JOptionPane.showMessageDialog(null,e.getMessage());
    }
    }
    public void frame(){
        JFrame f=new JFrame("login");
        f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        f.setSize(400, 100);
        JLabel l=new JLabel();
        l.setText("User ID");
        JTextField t=new JTextField(10);
        JLabel l2=new JLabel();
        l2.setText("Password");
        JTextField t2=new JTextField(10);
        JButton b=new JButton("Login");
        JPanel p=new JPanel();
        p.add(l);
        p.add(t);
        p.add(l2);
        p.add(t2);
        p.add(b);
        f.add(p);
        b.addActionListener(new ActionListener(){
        public void actionPerformed(ActionEvent e){
                try {
                    res=st.executeQuery("select username from table1;");
                   while(res.next()){
                    
                   System.out.println(res.toString());
                   }
                   } catch (SQLException ex) {
                      JOptionPane.showMessageDialog(null,ex.getMessage());
                   }
        
        }
        
        });
    f.setVisible(true);
    }
    public static void main(String[] args) {
     Dbcon c= new Dbcon();
     c.Dbcon();
    }
}
    