package com.ensias.workplace.beans;

import java.io.Serializable;
import java.util.Date;

public class Certification implements Serializable {
    
    private String certificationID;
    private String title;
    private String provider;
    private Date date;
    private String description;
    
    public Certification() {
        
    }

    public String getCertificationID() {
        return certificationID;
    }

    public String getTitle() {
        return title;
    }

    public String getProvider() {
        return provider;
    }

    public Date getDate() {
        return date;
    }
    
    public String getDescription() {
        return description;
    }

    public void setCertificationID(String certificationID) {
        this.certificationID = certificationID;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}