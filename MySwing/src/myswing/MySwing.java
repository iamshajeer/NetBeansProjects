
package myswing;
import java.awt.FlowLayout;
import java.awt.event.*;
import javax.swing.*;
/**
 *
 * @author Shajeer
 */
public class MySwing {
    public static void newframe(){
    about a=new about();
    }
    public static void main(String[] args) 
    {
       final JFrame frame=new JFrame("Shajeer Mini Java App");
          
            frame.setSize(350,100);
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
       JPanel panel=new JPanel();
            panel.setLayout(new FlowLayout());
            frame.add(panel);
       JLabel label1=new JLabel("Enter the number:   ");
            panel.add(label1);
       final JTextField text1=new JTextField(15);
            panel.add(text1);
            text1.setToolTipText("Enter the text here please");
       JButton button1=new JButton("Check !");
       JButton about=new JButton("about");
       panel.add(about);
       about.addActionListener(new ActionListener(){

            @Override
            public void actionPerformed(ActionEvent e) {
            frame.setVisible(false);
                newframe();
            }
        

});
       about.setToolTipText("about me !");
       button1.setToolTipText("Click to check the entered is valid !");
            panel.add(button1);
            panel.add(about);
            button1.addActionListener(new ActionListener() {

        
                @Override
            public void actionPerformed(ActionEvent e) {
               String text=text1.getText();
               int i=0,l=0;
               byte count=0,numcount=0,countneg=0;
               boolean flag=true;
               char arr[]=new char[8];
             arr=text.toCharArray();  
             l=text.length();
                if(l<3 || l>8)
                {
                   JOptionPane.showMessageDialog(null, "Error in text length");
                   text1.setText("")     ;
                   flag=false;
                   
                }
           
                else
                {
                    for(i=0;i<l;i++)
                    {
                        if(i!=0)
                        {
                                if(arr[i]=='-')
                                {
                                    countneg++;
                                    break;
                                }
                        }
                        if(arr[i]=='.')
                        {
                           count++;                    
                        }
                        if(arr[i]<'0'||arr[i]>'9' &&arr[i]!='.'&&arr[i]!='-')
                        {
                            numcount++ ;
                            
                        }
                        
                      }
                }

                       if(countneg>0)
                       {
                           JOptionPane.showMessageDialog(null, "Misplaced -ve sign \n try again !!");
                           text1.setText("")   ;
                           flag=false;
                       }
                       else
                       {
                            if(count>2)
                            {
                                JOptionPane.showMessageDialog(null,"Error !\nMore than two decimal points !");
                                text1.setText("");
                                flag=false;
                            }
                            else
                                if(numcount>0)
                                {
                                    JOptionPane.showMessageDialog(null, "Text other than Number, . , - Found !");
                                    text1.setText("");
                                    flag=false;
                                } 
                       }
                       if(flag)
                       {
                            int n= JOptionPane.showConfirmDialog(null, " Input Valid ! \nDo you want to try again","Please choose",JOptionPane.YES_NO_OPTION);                       
                            if(n==JOptionPane.YES_OPTION)
                            {
                            text1.setText("");                              
                            }
                           else
                            {
                               System.exit(1);
                            }
                       }
            }  
        });     
       frame.setResizable(false);
       frame.setLocation(545,275);
       frame.setVisible(true);
     
  }
    

   
}
