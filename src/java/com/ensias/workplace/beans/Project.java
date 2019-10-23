/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensias.workplace.beans;

import java.util.Date;

import java.io.Serializable;

public class Project implements Serializable {
    
    private Integer projectID;
    private Integer ownerID;
    
    private String title;               
    private String description;     
    private Float budget;           
    
    private String status;
    private Date publishDate;
    
    private String country;
    
    private Float averageBid;
    private Integer numberBid;

    
    public Project() {
        
    }

    public Integer getProjectID() {
        return projectID;
    }

    public Integer getOwnerID() {
        return ownerID;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public Float getBudget() {
        return budget;
    }

    public String getStatus() {
        return status;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    

    public Float getAverageBid() {
        return averageBid;
    }

    public Integer getNumberBid() {
        return numberBid;
    }
    

    public void setProjectID(Integer projectID) {
        this.projectID = projectID;
    }

    public void setOwnerID(Integer ownerID) {
        this.ownerID = ownerID;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setBudget(Float budget) {
        this.budget = budget;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }
    

    

    public void setAverageBid(Float averageBid) {
        this.averageBid = averageBid;
    }

    public void setNumberBid(Integer numberBid) {
        this.numberBid = numberBid;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    
}