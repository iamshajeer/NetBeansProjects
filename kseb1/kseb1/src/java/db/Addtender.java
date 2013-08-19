package db;
// Generated May 26, 2013 11:34:48 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Addtender generated by hbm2java
 */
public class Addtender  implements java.io.Serializable {


     private Integer tenderId;
     private String tenderName;
     private String productName;
     private int quantity;
     private double price;
     private String status;
     private String startDate;
     private String endDate;
     private String tenderDetails;
     private Set bidders = new HashSet(0);

    public Addtender() {
    }

	
    public Addtender(String productName, int quantity, double price, String status) {
        this.productName = productName;
        this.quantity = quantity;
        this.price = price;
        this.status = status;
    }
    public Addtender(String tenderName, String productName, int quantity, double price, String status, String startDate, String endDate, String tenderDetails, Set bidders) {
       this.tenderName = tenderName;
       this.productName = productName;
       this.quantity = quantity;
       this.price = price;
       this.status = status;
       this.startDate = startDate;
       this.endDate = endDate;
       this.tenderDetails = tenderDetails;
       this.bidders = bidders;
    }
   
    public Integer getTenderId() {
        return this.tenderId;
    }
    
    public void setTenderId(Integer tenderId) {
        this.tenderId = tenderId;
    }
    public String getTenderName() {
        return this.tenderName;
    }
    
    public void setTenderName(String tenderName) {
        this.tenderName = tenderName;
    }
    public String getProductName() {
        return this.productName;
    }
    
    public void setProductName(String productName) {
        this.productName = productName;
    }
    public int getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public double getPrice() {
        return this.price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public String getStartDate() {
        return this.startDate;
    }
    
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }
    public String getEndDate() {
        return this.endDate;
    }
    
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
    public String getTenderDetails() {
        return this.tenderDetails;
    }
    
    public void setTenderDetails(String tenderDetails) {
        this.tenderDetails = tenderDetails;
    }
    public Set getBidders() {
        return this.bidders;
    }
    
    public void setBidders(Set bidders) {
        this.bidders = bidders;
    }




}


