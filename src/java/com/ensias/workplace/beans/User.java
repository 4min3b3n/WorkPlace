package com.ensias.workplace.beans;

import java.io.Serializable;

public abstract class User implements Serializable {
    
    private int userID;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String password;
    private String username;
    private String photo;
    private String headline;
    private String description;
    private String country;
    private Float review;
    
    public User() {
        
    }
    
    public int getUserID() {
        return this.userID;
    }

    public String getFirstName() {
        return this.firstName;
    }
    
    public String getLastName() {
        return this.lastName;
    }
    
    public String getEmail() {
        return this.email;
    }
    
    public String getPassword() {
        return this.password;
    }
    
    public String getUsername() {
        return this.username;
    }
    
    public String getPhone() {
        return this.phone;
    }
    
    public String getPhoto() {
        return this.photo;
    }
    
    public String getHeadline() {
        return this.headline;
    }
    
    public String getDescription() {
        return description;
    }
    
    public String getCountry() {
        return this.country;
    }
    
    public Float getReview() {
        return this.review;
    }
    
    public void setUserID (int userID) {
        this.userID = userID;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
  
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    
    public void setHeadline(String headline) {
        this.headline = headline;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    
    public void setReview(Float review) {
        this.review = review;
    }

}