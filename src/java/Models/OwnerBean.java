package Models;

import java.io.Serializable;

public class OwnerBean implements Serializable {
    private int ownerID;
    private String fName;

    public OwnerBean() {
        
    }

    public int getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(int ownerID) {
        this.ownerID = ownerID;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }
    
    
}
