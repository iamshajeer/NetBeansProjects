/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package movingapplet;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Graphics;

/**
 *
 * @author Shajeer
 */
public class MovingApplet extends Applet implements Runnable {
    String msg=" My moving applet program";
    boolean stop;
    Thread t=null;
    @Override
    public void init(){
     setBackground(Color.PINK);
     setForeground(Color.blue);
    }
    @Override
    public void start(){
     t=new Thread(this);
     stop=false;
     t.start();
    }
    @Override
    public void run(){
     char ch;
     for(;;){
         try{
      repaint();
      Thread.sleep(500);
      ch=msg.charAt(0);
      msg=msg.substring(1, msg.length());
      msg+=ch;
      if(stop){
       break;
     }
        }catch(Exception e){
        System.out.println(e.getMessage());
        }
    }
    }
    @Override
public void stop(){
 stop=true;
 t=null;
}
@Override
public void paint(Graphics g){
    g.drawString(msg, 50, 40);
 }
}
