/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionlist;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Random;

/**
 *
 * @author Shajeer
 */
public class Actionlist {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws IOException {
      BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
      System.out.println("Enter the number"); 
       Random rand=new Random();
       
        String ch=(br.readLine());
        char ch1=ch.charAt(0);
       int r=rand.nextInt(100);
       do{
      int i=Integer.parseInt( br.readLine());
        if(i==r){
            System.out.println("You are correct !");
          }
        else{
        System.out.println("Not correct\n do you want to guess again ? press y/n ");
    
        }
        }while(ch1=='y');
        }
    
}
