
import java.util.TimerTask;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Shajeer
 */
public class st extends TimerTask {

    int i = 0;

    public void run() {
        i++;
        if (i <= 5) {
            System.out.println("alive");
        } else {
            
            System.out.println("stoped");
            this.cancel();
        }
    }
}
