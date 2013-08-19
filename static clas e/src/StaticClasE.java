
import java.util.Timer;
import java.util.TimerTask;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author Shajeer
 */
public class StaticClasE {

  
    public static void main(String[] args) throws InterruptedException {
        Timer t=new Timer();
        t.schedule(new st(), 100,1000);
    }
}
