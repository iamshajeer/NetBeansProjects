package ent;
// Generated Jul 2, 2013 11:18:19 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;

/**
 * Medicine generated by hbm2java
 */
public class Medicine  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String exp;
     private BigDecimal price;
     private Integer medcount;

    public Medicine() {
    }

    public Medicine(String name, String exp, BigDecimal price, Integer medcount) {
       this.name = name;
       this.exp = exp;
       this.price = price;
       this.medcount = medcount;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getExp() {
        return this.exp;
    }
    
    public void setExp(String exp) {
        this.exp = exp;
    }
    public BigDecimal getPrice() {
        return this.price;
    }
    
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public Integer getMedcount() {
        return this.medcount;
    }
    
    public void setMedcount(Integer medcount) {
        this.medcount = medcount;
    }




}


