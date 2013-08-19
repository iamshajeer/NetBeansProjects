/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cpuscheduling;

import java.util.Scanner;

/**
 *
 * @author Shajeer
 */

public class CpuScheduling {

    static int wait_time;
    public static void fcfs(int[] burst_time, int no_process, int[] arrival_time) {
        wait_time = 0;
        int burst=0;
        for (int i = 0; i < no_process; i++) {
            wait_time += (burst-arrival_time[i]);
            burst+=burst_time[i];
        }
        System.out.println("Total wait time is : " + wait_time+"\nAverage Waiting time is : "+(float)wait_time/no_process+"\n");
    }

    public static void roundRobin(int[] burst_time, int no_process, int[] arrival_time) {
         wait_time = 0;
        int burst=0;
        
        System.out.println("Enter the time quantum:");
        int time_quantum=new Scanner(System.in).nextInt();
        for (int i=0;i<no_process ;i++ ) {
            int j=0;
            while(burst_time[j]>0){
                wait_time+=(burst-arrival_time[j]) ;
                burst+=burst_time[j];
                burst_time[j]=-time_quantum;
                j++;
                if(j>=no_process)
                    break;
            }
            System.out.println("waiting time = "+wait_time);
        }    
     
    }
    public static void sjf(int[] burst_time, int no_process, int[] arrival_time) {
        wait_time = 0;
        int burst=0,i,j,temp;
        int d[]=new int[no_process];
        for(i=0;i<no_process;i++)
	{
         d[i]=burst_time[i]-arrival_time[i]; 
	}
        for(i=0;i<no_process;i++)
         for(j=0;j<no_process-i-1;j++)
           {
            if(d[j]>d[j+1])
             {
              temp=d[j];
              d[j]=d[j+1];
	      d[j+1]=temp;
              temp=burst_time[j];
              burst_time[j]=burst_time[j+1];
	      burst_time[j+1]=temp;
              temp=arrival_time[j];
              arrival_time[j]=arrival_time[j+1];
	      arrival_time[j+1]=temp;

             }
           }
        for (i = 0; i < no_process; i++) {
            wait_time += (burst-arrival_time[i]);
            burst+=burst_time[i];
        }
        System.out.println("Total wait time is : " + wait_time+"\nAverage Waiting time is : "+(float)wait_time/no_process+"\n");
    }

    public static void main(String[] args) {
        //Scanner object is created for reading input from keyboard;
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter the choice\n1:FCFS Schedulinh\n2:ROund Robin Scheduling\n3:SJF-Non preemptive scheduling");
        int choice = scan.nextInt();
        System.out.print("Enter the number of processes:");
        int no_process = scan.nextInt();
        int burst_time[] = new int[no_process];
        int arrival_time[] = new int[no_process];
        for (int i = 1; i <= no_process; i++) {
            System.out.print("Enter burst time for process P" + i+" : ");
            burst_time[i - 1] = scan.nextInt();
            System.out.print("Enter arrival time for process P" + i+" : ");
            arrival_time[i - 1] = scan.nextInt();
        }
        switch (choice) {
            case 1: {
                //calling fcfs function
                System.out.println("**************FCFS SCHEDULING**************\n\n");
                fcfs(burst_time, no_process, arrival_time);
                break;
            }
            case 2: {
                roundRobin(burst_time, no_process, arrival_time);
                break;
            }
            case 3: {
                sjf(burst_time, no_process, arrival_time);
                break;
            }
            default: {
                System.out.println("Invalid choice");
            }
        }
    }
}
