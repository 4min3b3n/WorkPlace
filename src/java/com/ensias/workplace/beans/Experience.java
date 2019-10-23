package com.ensias.workplace.beans;

import java.io.Serializable;

public class Experience implements Serializable {
    
    private Integer experienceID;
    private String title;
    private String company;
    private String startDate;
    private String endDate;
    private String description;
    
    public Experience() {
        
    }

    public Integer getExperienceID() {
        return experienceID;
    }

    public String getTitle() {
        return title;
    }

    public String getCompany() {
        return company;
    }

    public String getStartDate() {
        return startDate;
    }

    public String getEndDate() {
        return endDate;
    }
    
    public String getDescription() {
        return description;
    }

    public void setExperienceID(Integer experienceID) {
        this.experienceID = experienceID;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
