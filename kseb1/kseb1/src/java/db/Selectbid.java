package db;
// Generated May 26, 2013 11:34:48 PM by Hibernate Tools 3.2.1.GA



/**
 * Selectbid generated by hbm2java
 */
public class Selectbid  implements java.io.Serializable {


     private Integer sed;
     private int vid;
     private int tid;

    public Selectbid() {
    }

    public Selectbid(int vid, int tid) {
       this.vid = vid;
       this.tid = tid;
    }
   
    public Integer getSed() {
        return this.sed;
    }
    
    public void setSed(Integer sed) {
        this.sed = sed;
    }
    public int getVid() {
        return this.vid;
    }
    
    public void setVid(int vid) {
        this.vid = vid;
    }
    public int getTid() {
        return this.tid;
    }
    
    public void setTid(int tid) {
        this.tid = tid;
    }




}


