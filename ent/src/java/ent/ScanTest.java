package ent;
// Generated Jul 2, 2013 11:18:19 PM by Hibernate Tools 3.2.1.GA



/**
 * ScanTest generated by hbm2java
 */
public class ScanTest  implements java.io.Serializable {


     private Integer siNo;
     private String regId;
     private String scanDate;
     private String scanName;
     private String remark1;
     private String remark2;
     private String remark3;

    public ScanTest() {
    }

    public ScanTest(String regId, String scanDate, String scanName, String remark1, String remark2, String remark3) {
       this.regId = regId;
       this.scanDate = scanDate;
       this.scanName = scanName;
       this.remark1 = remark1;
       this.remark2 = remark2;
       this.remark3 = remark3;
    }
   
    public Integer getSiNo() {
        return this.siNo;
    }
    
    public void setSiNo(Integer siNo) {
        this.siNo = siNo;
    }
    public String getRegId() {
        return this.regId;
    }
    
    public void setRegId(String regId) {
        this.regId = regId;
    }
    public String getScanDate() {
        return this.scanDate;
    }
    
    public void setScanDate(String scanDate) {
        this.scanDate = scanDate;
    }
    public String getScanName() {
        return this.scanName;
    }
    
    public void setScanName(String scanName) {
        this.scanName = scanName;
    }
    public String getRemark1() {
        return this.remark1;
    }
    
    public void setRemark1(String remark1) {
        this.remark1 = remark1;
    }
    public String getRemark2() {
        return this.remark2;
    }
    
    public void setRemark2(String remark2) {
        this.remark2 = remark2;
    }
    public String getRemark3() {
        return this.remark3;
    }
    
    public void setRemark3(String remark3) {
        this.remark3 = remark3;
    }




}


