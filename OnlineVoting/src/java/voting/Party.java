package voting;
// Generated Apr 5, 2013 12:53:13 PM by Hibernate Tools 3.2.1.GA



/**
 * Party generated by hbm2java
 */
public class Party  implements java.io.Serializable {


     private Integer siNo;
     private Integer partyId;
     private String partyName;

    public Party() {
    }

    public Party(Integer partyId, String partyName) {
       this.partyId = partyId;
       this.partyName = partyName;
    }
   
    public Integer getSiNo() {
        return this.siNo;
    }
    
    public void setSiNo(Integer siNo) {
        this.siNo = siNo;
    }
    public Integer getPartyId() {
        return this.partyId;
    }
    
    public void setPartyId(Integer partyId) {
        this.partyId = partyId;
    }
    public String getPartyName() {
        return this.partyName;
    }
    
    public void setPartyName(String partyName) {
        this.partyName = partyName;
    }




}

