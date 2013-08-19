/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package file;

import java.util.Scanner;

/**
 *
 * @author Shajeer
 */
public class NewClass {

    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("Enter the limit:");
        int n = s.nextInt();
        for (int a = 1; a <= n; a++) {
            int a3 = a * a * a;
            if (a3 > n) {
                break;
            }

            for (int b = a; b <= n; b++) {
                int b3 = b * b * b;
                if (b3 + a3 > n) {
                    break;
                }
                for (int c = a + 1; c <= n; c++) {
                    int c3 = c * c * c;
                    if (c3 > a3 + b3) {
                        break;
                    }
                    for (int d = c; d <= n; d++) {
                        int d3 = d * d * d;
                        if (c3 + d3 > a3 + b3) 
                            break;
                        
                        if (c3 + d3 == a3 + d3) 
                            System.out.print((a3 + b3) + " = " + a + "+" + b + "=" + c + "+" + d);
                    
                    }
                }
            }
        }
    }
}
