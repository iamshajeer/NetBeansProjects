package db;
// Generated Jul 2, 2013 2:58:38 PM by Hibernate Tools 3.2.1.GA



/**
 * Selectbid generated by hbm2java
 */
public class Selectbid  implements java.io.Serializable {


     private Integer sed;
     private Integer vid;
     private Integer tid;

    public Selectbid() {
    }

    public Selectbid(Integer vid, Integer tid) {
       this.vid = vid;
       this.tid = tid;
    }
   
    public Integer getSed() {
        return this.sed;
    }
    
    public void setSed(Integer sed) {
        this.sed = sed;
    }
    public Integer getVid() {
        return this.vid;
    }
    
    public void setVid(Integer vid) {
        this.vid = vid;
    }
    public Integer getTid() {
        return this.tid;
    }
    
    public void setTid(Integer tid) {
        this.tid = tid;
    }




}


