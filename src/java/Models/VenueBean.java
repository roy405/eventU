package Models;

import java.io.Serializable;

public class VenueBean implements Serializable {
    private int venueID;
    private String type;
    private String description;
    private String rating;
    private String address;
    private float amount;
    private int availabiliy;
    private int ownerID;

    public VenueBean() {
        
    }

    public int getVenueID() {
        return venueID;
    }

    public void setVenueID(int venueID) {
        this.venueID = venueID;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public int getAvailabiliy() {
        return availabiliy;
    }

    public void setAvailabiliy(int availabiliy) {
        this.availabiliy = availabiliy;
    }

    public int getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(int ownerID) {
        this.ownerID = ownerID;
    }
    
    
}
