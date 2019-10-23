package com.ensias.workplace.beans;

import java.io.Serializable;

public class Freelancer extends User implements Serializable {
    
    private Float hourly;
    private String subscription;
    private Boolean available;
    private Integer yearsExperience;
    private Integer projectWorked;
    private Integer earned;
    
    
    public Freelancer() {
        super();
    }
    
    public Float getHourly() {
        return this.hourly;
    } 
    
    public String getSubscription() {
        return this.subscription;
    }
    
    public Boolean isAvailable() {
        return this.available;
    }
    
    public Integer getYearsExperience() {
        return this.yearsExperience;
    }
    
    public Integer getProjectWorked() {
        return this.projectWorked;
    }
    
    public Integer getEarned() {
        return this.earned;
    }
    
    public void setHourly(Float hourly) {
        this.hourly = hourly;
    } 
    
    public void setSubscription(String subscription) {
        this.subscription = subscription;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
    
    public void setAvailable(String available) {
        this.available = available.equals("True");
    }
    
    public void setYearsExperience(Integer yearsExperience) {
        this.yearsExperience = yearsExperience;
    }
    
    public void setProjectWorked(Integer projectWorked) {
        this.projectWorked = projectWorked;
    }
    
    public void setEarned(Integer earned) {
        this.earned = earned;
    }
    
}