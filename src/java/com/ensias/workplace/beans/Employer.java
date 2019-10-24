package com.ensias.workplace.beans;

import java.io.Serializable;
import java.util.Date;

public class Employer extends User implements Serializable  {
    
    private String subscription;
    private Date inscription;
    private Integer projectPosted;
    private Integer hiredFreelancers;
    
    public Employer() {
        super();
    }

    public Date getInscription() {
        return inscription;
    }

    public String getSubscription() {
        return subscription;
    }
    
    public Integer getProjectPosted() {
        return this.projectPosted;
    }
    
    public Integer getHiredFreelancers() {
        return this.hiredFreelancers;
    }

    public void setSubscription(String subscription) {
        this.subscription = subscription;
    }

    public void setInscription(Date inscription) {
        this.inscription = inscription;
    }
    
    public void setProjectPosted(Integer projectPosted) {
        this.projectPosted = projectPosted;
    }
    
    public void setHiredFreelancers(Integer hiredFreelancers) {
        this.hiredFreelancers = hiredFreelancers;
    }
    
}
