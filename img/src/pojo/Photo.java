package pojo;
// Generated May 22, 2013 8:44:12 PM by Hibernate Tools 3.2.1.GA



/**
 * Photo generated by hbm2java
 */
public class Photo  implements java.io.Serializable {


     private Integer id;
     private byte[] img;

    public Photo() {
    }

    public Photo(byte[] img) {
       this.img = img;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public byte[] getImg() {
        return this.img;
    }
    
    public void setImg(byte[] img) {
        this.img = img;
    }




}


