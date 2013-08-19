/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package date;

import java.util.Iterator;
import java.util.TreeSet;
/**
 *
 * @author Shajeer
 */
public class Date {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        TreeSet tree=new TreeSet();
        tree.add(1);
        tree.add(2);
        tree.add(4);
        Iterator it=tree.iterator();
        while(it.hasNext()){
        System.out.println(it.next());
        }
    }
}
