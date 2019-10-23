package com.ensias.workplace.beans;

import java.io.Serializable;

// SELECT B.FreelancerID, Photo, Headline, Country, YearsExperience, ProjectWorked, Bid, Delivery, Notes FROM Users U, Freelancers F, Bids B WHERE ProjectID = 5 AND B.FreelancerID = F.FreelancerID  AND F.FreelancerID = U.UserID;

public class Bid implements Serializable {
    
    private Integer bidID;
    private Integer projectID;
    private Integer freelancerID;
    
    
    private Integer delivery;
    private String note;
    private Integer bid;
    
    private String status;
    
    private Freelancer bidder;

    public Freelancer getBidder() {
        return bidder;
    }

    public void setBidder(Freelancer bidder) {
        this.bidder = bidder;
    }
    
    
    public Bid() {
        
    }

    public String getStatus() {
        return this.status;
    }
    
    public Boolean getStatus(String anotheStatus) {
        return this.status.equals(anotheStatus);
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    
    public Integer getProjectID() {
        return projectID;
    }

    public void setProjectID(Integer projectID) {
        this.projectID = projectID;
    }

    public Integer getBidID() {
        return bidID;
    }

    public void setBidID(Integer bidID) {
        this.bidID = bidID;
    }

    public Integer getFreelancerID() {
        return freelancerID;
    }

    public void setFreelancerID(Integer freelancerID) {
        this.freelancerID = freelancerID;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Integer getDelivery() {
        return delivery;
    }

    public void setDelivery(Integer delivery) {
        this.delivery = delivery;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
    
}
