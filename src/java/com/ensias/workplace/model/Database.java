package com.ensias.workplace.model;

import com.ensias.workplace.beans.*;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.Date;


public class Database {
    
    protected final String username = "root"; 
    protected final String password = "12341234";
    protected final String server = "localhost";
    protected final String port = "3306";
    protected final String database = "WorkPlace";
    
    private Connection connection;
    
   
    public Database() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                this.connection = DriverManager.getConnection("jdbc:mysql://"+this.server+":"+this.port+"/"+this.database+"?autoReconnect=true&useSSL=false", this.username, this.password);
            } catch (SQLException exception) {
                
            }
        } catch (ClassNotFoundException exception) {

        }   
    }
    
    public Connection getConnection() {
        return this.connection;
    }
        
    public PreparedStatement PrepareStatement(String sql) throws SQLException {
        return this.getConnection().prepareStatement(sql);
    }
    
    public int executeUpdate(PreparedStatement statement) throws SQLException {
        return statement.executeUpdate();
    }
    
    public ResultSet executeQuery(PreparedStatement statement) throws SQLException {
        return statement.executeQuery();
    }
    
    public Object fetchResult(ResultSet result) throws SQLException {
        return result.next();
    }
    

    
    
    public int toDatabase(User user) {
        
        try {
            
            String sql = "INSERT INTO Users (FirstName, LastName, Email, Password, Type, Username) VALUES " + "(?, ?, ?, MD5(?), ?, ?);";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            
            if (user instanceof Freelancer) {
                statement.setString(5, "Freelancer");
            } else if (user instanceof Employer) {
                statement.setString(5, "Employer");
            }
            
            statement.setString(6, user.getUsername());
            
            if (executeUpdate(statement) != -1) {
                
                String selectSQL = "SELECT UserID, Type FROM Users WHERE (Email=?);";
            
                PreparedStatement selectStatement = PrepareStatement(selectSQL);
                selectStatement.setString(1, user.getEmail());
                ResultSet result = executeQuery(selectStatement);
                
                if (result.next()) {
                    int userID = result.getInt("UserID");
                    
                    String type = result.getString("Type");

                    switch (type) {
                        case "Freelancer":
                        {
                            
                            String typeSQL = "INSERT INTO Freelancers (FreelancerID) VALUES (?);";
                            PreparedStatement typeStatement = PrepareStatement(typeSQL);
                            typeStatement.setInt(1, userID);
                            
                            executeUpdate(typeStatement);
                            return userID;
                        
                        }
                        case "Employer":
                        {
                            
                            String typeSQL = "INSERT INTO Employers (EmployerID) VALUES (?);";
                            PreparedStatement typeStatement = PrepareStatement(typeSQL);
                            typeStatement.setInt(1, userID);
                            
                            executeUpdate(typeStatement);
                            return userID;
                                                        
                        }
                        default:
                            return -1;
                    }
                } else {
                    return -1;
                }
                
            } else {
                return -1;
            }
            
        } catch (SQLException ex) {
            return -1;
        }
    }
    public Integer toDatabase(Project project) {
        
        try {

            String sql = "INSERT INTO Projects (OwnerID, Title, Description, Budget, Status, Country) VALUES (?, ?, ?, ?, ?, ?)";
            
            PreparedStatement statement = PrepareStatement(sql);

            statement.setInt(1, project.getOwnerID());
            statement.setString(2, project.getTitle());
            statement.setString(3, project.getDescription());
            statement.setFloat(4, project.getBudget());
            statement.setString(5, "Active");
            statement.setString(6, project.getCountry());
           
            return executeUpdate(statement);
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return -1;
    }
    
    public int verifyEmail(String email) {
        try {
            
            String sql =  "SELECT UserID FROM Users WHERE Email = ?;";
            PreparedStatement statement = PrepareStatement(sql);
            statement.setString(1, email);
            ResultSet result = executeQuery(statement);
            if (result.next()) {
                return result.getInt("UserID");
            } else {
                return 0;
            }
            
        } catch (SQLException ex) {
            return -1;
        }
    }
    public int verifyUsername(String username) {
        try {
            
            String sql =  "SELECT UserID FROM Users WHERE Username = ?;";
            PreparedStatement statement = PrepareStatement(sql);
            statement.setString(1, username);
            ResultSet result = executeQuery(statement);
            if (result.next()) {
                return result.getInt("UserID");
            } else {
                return 0;
            }
            
        } catch (SQLException ex) {
            return -1;
        }
    }
    public String verifyPassword(Integer userID) {
        try {
            
            String sql =  "SELECT Password FROM Users WHERE UserID = ?;";
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, userID);
            ResultSet result = executeQuery(statement);
            
            if (result.next()) {
                return result.getString("Password");
            } else {
                return null;
            }
            
        } catch (SQLException ex) {
            return null;
        }
    }
    
    /*** DONE & TESTED ***/
    public Integer logIn(String email, String password) {
        
        try {
            
            String sql = "SELECT UserID FROM Users WHERE (EMAIL=? OR USERNAME=?) AND PASSWORD=MD5(?)";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setString(1, email);
            statement.setString(2, email);
            statement.setString(3, password);
            
            ResultSet checking = executeQuery(statement);
            
            if (checking.next()) {
                return checking.getInt("UserID");
            } else {
                return 0;
            }
                      
        } catch (SQLException exception) {
            return -1;
        }
            
    }
    public int signUp(User user) {
        if ((this.verifyEmail(user.getEmail()) == 0) && (this.verifyUsername(user.getUsername()) == 0)) {
            return this.toDatabase(user);
        } else {
            return -1;
        }
    }

    
    
    
    
    
    
    public User getUser(int userID) {
        
        try {
            
            String sql = "SELECT * FROM Users WHERE UserID=?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, userID);
            ResultSet result = executeQuery(statement);
            
            if (result.next()) {
               
                String firstName = result.getString("FirstName");
                String lastName = result.getString("LastName");
                String email = result.getString("Email");
                String password = result.getString("Password");
                String phone = result.getString("Phone");
                String username = result.getString("Username");
                String type = result.getString("Type");
                String photo = result.getString("Photo");
                String headline = result.getString("Headline");
                String description = result.getString("Description");
                String country = result.getString("Country");
                Float review = result.getFloat("Review");
                
                if (type.equals("Freelancer")) {
                    
                    Freelancer user = new Freelancer();
                        
                    user.setUserID(userID);
                    
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                    user.setEmail(email);
                    user.setPassword(password);
                    user.setUsername(username);   
                    user.setPhone(phone);
                    user.setPhoto(photo);
                    user.setHeadline(headline);
                    user.setDescription(description);
                    user.setCountry(country);
                    user.setReview(review);
                    
                    sql = "SELECT * FROM Freelancers WHERE (FreelancerID=?);";
                    
                    statement = PrepareStatement(sql);
                    statement.setInt(1, userID);
                    result = executeQuery(statement);
            
                    if (result.next()) {
               
                        String subscription = result.getString("Subscription");
                        Float hourly = result.getFloat("Hourly");
                        String available = result.getString("Available");
                        Integer yearsExperience = result.getInt("YearsExperience");
                        Integer projectWorked = result.getInt("ProjectWorked");
                        Integer earned = result.getInt("Earned");
                        
                        if (available.equals("True")) {
                            user.setAvailable(true);
                        } else {
                            user.setAvailable(false);
                        }
                        
                        user.setSubscription(subscription);
                        user.setHourly(hourly);
                        user.setYearsExperience(yearsExperience);
                        user.setProjectWorked(projectWorked);
                        user.setEarned(earned);
                        
                    }
                    
                    return user;
                
                } else if (type.equals("Employer")) {
                        
                    Employer user = new Employer();
                    
                    user.setUserID(userID);
                    
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                    user.setEmail(email);
                    user.setPassword(password);
                    user.setUsername(username);   
                    user.setPhone(phone);
                    user.setPhoto(photo);
                    user.setHeadline(headline);
                    user.setDescription(description);
                    user.setCountry(country);
                    user.setReview(review);
                    
                    sql = "SELECT * FROM Employers WHERE (EmployerID=?);";
                    statement = PrepareStatement(sql);
                    statement.setInt(1, userID);
                    result = executeQuery(statement);
                    
                    if (result.next()) {
                        
                        String subscription = result.getString("Subscription");
                        Date inscription = result.getDate("Inscription");
                        Integer projectPosted = result.getInt("ProjectPosted");
                        Integer hiredFreelancers = result.getInt("HiredFreelancers");
                        
                        user.setInscription(inscription);
                        user.setSubscription(subscription);
                        user.setProjectPosted(projectPosted);
                        user.setHiredFreelancers(hiredFreelancers);
                        
                    }
                        
                    return user;
                
                }
            }

        } catch (SQLException ex) {
           return null; 
        }
        
        return null;
    }
    
    
    public Bid getBid(Integer bidID) {
        
        String sql = "SELECT * FROM Bids;";
        
        try {
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, bidID);
            ResultSet result = executeQuery(statement);
            
            if (result.next()) {
                
                Bid bid = new Bid();
                
                bid.setBidID(result.getInt("BidID"));
                bid.setFreelancerID(result.getInt("FreelancerID"));                
                bid.setBid(result.getInt("Bid"));
                bid.setDelivery(result.getInt("Delivery"));
                bid.setNote(result.getString("Note"));
                
                return bid;
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
    
    
    public ArrayList<Bid> getBids(Integer projectID) {
        
        ArrayList<Bid> bids = new ArrayList<>();
        
        try {
            
            String sql = "SELECT * FROM Bids WHERE ProjectID = ?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, projectID);
            ResultSet result = executeQuery(statement);
            
            while (result.next()) {
                
                Bid bid = new Bid();
                
                Integer freelancerID = result.getInt("FreelancerID");
                
                bid.setBidID(result.getInt("BidID"));
                bid.setFreelancerID(result.getInt("FreelancerID"));
                bid.setBid(result.getInt("Bid"));
                bid.setDelivery(result.getInt("Delivery"));
                bid.setNote(result.getString("Note"));
                bid.setStatus(result.getString("Status"));
                
                Freelancer bidder = this.getFreelancer(freelancerID);
                
                bid.setBidder(bidder);
                
                bids.add(bid);
                
            } 
            
            return bids;
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
    
    
    public Boolean bid(Bid bid) {
        
        
        // TODO: SEND NOTIFICATIONS
        // DONE: INSERT TO DATABASE
        try {
            
            String sql = "INSERT INTO `Bids`(`ProjectID`, `FreelancerID`, `Bid`, `Delivery`, `Notes`) VALUES (?, ?, ?, ?, ?);";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, bid.getProjectID());
            statement.setInt(2, bid.getFreelancerID());
            statement.setInt(3, bid.getBid());
            statement.setInt(4, bid.getDelivery());
 
            statement.setString(5, bid.getNote().replaceAll("(\r\n|\n)", "<br/>"));
            
            if (executeUpdate(statement) != -1) {
                return true;
            } else {
                return false;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    public Boolean cancelBid(Integer projectID, Integer freelancerID) {
        try {
            
            String sql = "DELETE FROM `Bids` WHERE `ProjectID` = ? AND `FreelancerID` = ?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, projectID);
            statement.setInt(2, freelancerID);
            
            if (executeUpdate(statement) != -1) {
                return true;
            } else {
                return false;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public Boolean acceptBid(Integer projectID, Integer freelancerID) {
        return false;
    }
    public Boolean refuseBid(Integer projectID, Integer freelancerID) {
        
        try {
            
            String sql = "UPDATE `Bids` SET `Status`='Refused' WHERE ProjectID = ? AND FreelancerID = ?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, projectID);
            statement.setInt(2, freelancerID);
            
            if (executeUpdate(statement) != -1) {
                return true;
            } else {
                return false;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    
    
    public ArrayList<Experience> getExperience(Integer freelancerID) {
        
        ArrayList<Experience> experiences = new ArrayList<>();
        
        try {
            String sql = "SELECT * FROM Experiences WHERE (FreelancerID=?)"; 
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, freelancerID);
            ResultSet result = executeQuery(statement);
           
            while (result.next()) {
                
                Experience experience = new Experience();
                
                experience.setExperienceID(result.getInt("ExperienceID"));
                experience.setTitle(result.getString("Title"));
                experience.setCompany(result.getString("Company"));
                experience.setStartDate(result.getString("StartDate"));        
                experience.setEndDate(result.getString("EndDate"));
                experience.setDescription(result.getString("Description"));
                
                experiences.add(experience);
                
            }
            
            return experiences;
            
        } catch (SQLException ex) {
           return null; 
        }
    }
    public ArrayList<Certification> getCertification(Integer freelancerID) {
        
        ArrayList<Certification> certifications = new ArrayList<>();
        
        try {
            String sql = "SELECT * FROM Certifications WHERE (FreelancerID=?)"; 
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, freelancerID);
            ResultSet result = executeQuery(statement);
           
            while (result.next()) {
                
                Certification certification = new Certification();
                
                certification.setTitle(result.getString("Title"));
                certification.setProvider(result.getString("Provider"));
                certification.setDate(result.getDate("Date"));        
                certification.setDescription(result.getString("Description"));
                
                certifications.add(certification);
                
            }
            
            return certifications;
            
        } catch (SQLException ex) {
           return null; 
        }
    }
    public ArrayList<Education> getEducation(Integer freelancerID) {
        
        ArrayList<Education> educations = new ArrayList<>();
        
        try {
            
            String sql = "SELECT * FROM Educations WHERE (FreelancerID=?)"; 
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, freelancerID);
            ResultSet result = executeQuery(statement);
           
            while (result.next()) {
                
                Education education = new Education();
                
                education.setSchool(result.getString("School"));
                education.setDegree(result.getString("Degree"));
                education.setStartDate(result.getDate("StartDate"));
                education.setEndDate(result.getDate("EndDate"));   
                education.setField(result.getString("Field"));    
                education.setDescription(result.getString("Description"));
                
                educations.add(education);
            
            }
            
            return educations;
            
        } catch (SQLException ex) {
           return null; 
        }
    }
    
    public Boolean newExperience(Integer freelancerID, Experience experience) {
        
        try {
            
            String sql = "INSERT INTO Experiences (`Title`, `Company`, `StartDate`, `EndDate`, `Description`, `FreelancerID`) VALUES " +
                         "(?, ?, ?, ?, ?, ?);";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setString(1, experience.getTitle());
            statement.setString(2, experience.getCompany());
            statement.setString(3, experience.getStartDate());
            statement.setString(4, experience.getEndDate());
            statement.setString(5, experience.getDescription());
            
            statement.setInt(6, freelancerID);
            
            if (executeUpdate(statement) != -1) {
                return true;
            }
            
        } catch (SQLException ex) {
            
        }
        return false;
    }
    public Boolean removeExperience(Integer experienceID) {
        try {
            
            String sql = "DELETE FROM Experiences WHERE ExperienceID=?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, experienceID);
            
            if (executeUpdate(statement) != -1) {
                return true;
            }
            
        } catch (SQLException ex) {
            
        }
        return false;
    }
    
    public Integer changeFirstName(Integer userID, String firstName) {
        try {
            
            String sql = "UPDATE Users SET FirstName=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, firstName);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changeLastName(Integer userID, String lastName) {
        try {
            
            String sql = "UPDATE Users SET LastName=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, lastName);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changePhoto(Integer userID, String photo) {
        try {
            
            String sql = "UPDATE Users SET Photo=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, username);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changeHeadline(Integer userID, String headline) {
        try {
            
                String sql = "UPDATE Users SET Headline=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, headline);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changeDescription(Integer userID, String description) {
        
        try {
            
            String sql = "UPDATE Users SET Description=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setString(1, description);
            statement.setInt(2, userID);
            
            return executeUpdate(statement);
                      
        } catch (SQLException exception) {
            return -1;
        }
        
    }
    public Integer changeYearsExperience(Integer freelancerID, Integer yearsExperience) {
        
        try {
            
            String sql = "UPDATE Freelancers SET YearsExperience=? WHERE FreelancerID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(1, yearsExperience);
            statement.setInt(2, freelancerID);
            
            return executeUpdate(statement);
                      
        } catch (SQLException exception) {
            return -1;
        }
        
    }
    public Integer changeCountry(Integer userID, String country) {
        try {
            
            String sql = "UPDATE Users SET Country=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, country);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changeHourly(Integer userID, Float hourly) {
        
        try {
            
            String sql = "UPDATE Freelancers SET Hourly=? WHERE FreelancerID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setFloat(1, hourly);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
        
    }
    
    public int changeAvailable(Integer userID) {
        
        try {
            
            String sql = "SELECT Available FROM Freelancers WHERE FreelancerID=?;";
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, userID);
            ResultSet result = executeQuery(statement);
            
            String newAvailable = new String();
            
            if (result.next()) {
                if (result.getString("Available").equals("True")) {
                    newAvailable = "False";
                } else {
                    newAvailable = "True";
                }
            }
            
            sql = "UPDATE Freelancers SET Available=? WHERE FreelancerID=?";
            
            statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, newAvailable);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    
    public Integer changeEmail(Integer userID, String email) {
        try {
            
            String sql = "UPDATE Users SET Email=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, email);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changePhone(Integer userID, String phone) {
        try {
            
            String sql = "UPDATE Users SET Phone=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, phone);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changePassword(Integer userID, String password) {
        try {
            
            String sql = "UPDATE Users SET Password=MD5(?) WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, password);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    public Integer changeUsername(Integer userID, String username) {
        try {
            
            String sql = "UPDATE Users SET Username=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, username);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    
    public int changeSubscription(Integer userID, String subscription) {
        try {
            
            String sql = "UPDATE Users SET Username=? WHERE UserID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            
            statement.setInt(2, userID);
            statement.setString(1, username);
            
            int checking = executeUpdate(statement);
            
            return checking;
                      
        } catch (SQLException exception) {
            return -1;
        }
    }
    
    
    
    
    
    
    public Project getProject(Integer projectID) {
        
        Project project = new Project();
        
        try {
            
            String sql = "SELECT ProjectID, OwnerID, Title, Description, Budget, Status, PublishDate, Country FROM Projects WHERE ProjectID=?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, projectID);
            ResultSet result = executeQuery(statement);
            
            if (result.next()) {
                
                project.setProjectID(result.getInt("ProjectID"));
                
                String bidSQL = "SELECT COUNT(*) AS NumberBids, AVG(Bid) AS Average FROM Bids WHERE ProjectID = ?;";
                
                PreparedStatement bidStatement = PrepareStatement(bidSQL);
                bidStatement.setInt(1, projectID);
                ResultSet bidResult = executeQuery(bidStatement);
                
                project.setOwnerID(result.getInt("OwnerID"));
                
                project.setTitle(result.getString("Title"));
                project.setDescription(result.getString("Description"));
                project.setBudget(result.getFloat("Budget"));
                project.setStatus(result.getString("Status"));
                project.setPublishDate(result.getTimestamp("PublishDate"));    
                project.setCountry(result.getString("Country"));  
                
                if (bidResult.next()) {
                    project.setNumberBid(bidResult.getInt("NumberBids"));
                    project.setAverageBid(bidResult.getFloat("Average"));
                } else {
                    project.setNumberBid(0);
                    project.setAverageBid(0.0F);
                }
                
                return project;
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return project;
    }
    
    public void deleteProject(Integer projectID) {
        
        try {
            String sql = "UPDATE `Projects` SET `Status`='Deleted' WHERE `ProjectID`=?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, projectID);
            executeUpdate(statement);
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void archiveProject(Integer projectID) {
        
        try {
            String sql = "UPDATE `Projects` SET `Status`='Archived' WHERE `ProjectID`=?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, projectID);
            executeUpdate(statement);
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void renewProject(Integer projectID) {
        
        try {
            String sql = "UPDATE `Projects` SET `Status`='Active' WHERE `ProjectID`=?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, projectID);
            executeUpdate(statement);
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public ArrayList<Project> getMyProjects(Integer employerID) {
       
        ArrayList<Project> projects = new ArrayList<>();
        
        try {
            
            String sql = "SELECT ProjectID, Title, Budget, Status, PublishDate FROM Projects WHERE OwnerID=?;";

            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, employerID);
            ResultSet result = executeQuery(statement);
            
            while (result.next()) {
                
                Integer projectID = result.getInt("ProjectID");
                
                Project project = new Project();
                
                project.setProjectID(result.getInt("ProjectID"));
                project.setTitle(result.getString("Title"));
                project.setBudget(result.getFloat("Budget"));
                project.setStatus(result.getString("Status"));
                project.setPublishDate(result.getDate("PublishDate"));
                
                projects.add(project);
                
                                
            }
            
            return projects;
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
            
       
       return null;
    }
    
    public ArrayList<Project> getMyCompletedProjects(Integer employerID) {
       
        ArrayList<Project> projects = new ArrayList<Project>();
        
        try {
            
            String sql = "SELECT ProjectID, Title, Budget, Status, PublishDate FROM Projects WHERE OwnerID=? Status='Completed';";
            String innerSQL = "SELECT COUNT(*) AS NumberBid, AVG(Bid) AS AverageBid FROM Bids WHERE ProjectID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, employerID);
            ResultSet result = executeQuery(statement);
            
            while (result.next()) {
                
                PreparedStatement innerStatement = PrepareStatement(innerSQL);
                innerStatement.setInt(1, result.getInt("ProjectID"));
                ResultSet tempResult = executeQuery(innerStatement);
                
                Project project = new Project();
                
                project.setProjectID(result.getInt("ProjectID"));
                project.setTitle(result.getString("Title"));
                project.setBudget(result.getFloat("Budget"));
                project.setStatus(result.getString("Status"));
                
                if (tempResult.next()) {
                    project.setAverageBid(tempResult.getFloat("AverageBid"));
                    project.setNumberBid(tempResult.getInt("NumberBid"));
                }
                
                projects.add(project);
                
            }
            
            return projects;
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
            
       
       return null;
   }
    
    
    public ArrayList<Project> getProjects() {
        
        ArrayList<Project> projects = new ArrayList<>();
        
        try {
            
            String sql = "SELECT * FROM Projects WHERE Status='Active' ORDER BY PublishDate DESC;";
            
            PreparedStatement statement = PrepareStatement(sql);
            ResultSet result = executeQuery(statement);
            
            while (result.next()) {
                
                Project project = new Project();
                
                project.setProjectID(result.getInt("ProjectID"));
                
                project.setOwnerID(result.getInt("OwnerID"));
                project.setTitle(result.getString("Title"));
                project.setDescription(result.getString("Description"));
                project.setBudget(result.getFloat("Budget"));
                project.setStatus(result.getString("Status"));
                project.setCountry(result.getString("Country"));
                
                String bidSQL = "SELECT COUNT(*) AS NumberBid, AVG(Bid) AS AverageBid FROM Bids WHERE ProjectID=?";
                
                PreparedStatement bidStatement = PrepareStatement(bidSQL);
                bidStatement.setInt(1, result.getInt("ProjectID"));
                ResultSet bidResult = executeQuery(bidStatement);
                
                if (bidResult.next()) {
                    project.setNumberBid(bidResult.getInt("NumberBid"));
                    project.setAverageBid(bidResult.getFloat("AverageBid"));
                } else {
                    project.setNumberBid(0);
                    project.setAverageBid(0.0F);
                }
                
                
                
                projects.add(project);
                
                
            }
            
            return projects;   
                
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
    public ArrayList<Project> getBiddingProjects(Integer freelancerID) {
        
        ArrayList<Project> projects = new ArrayList<Project>();
        
        try {
            
            String sql = "SELECT ProjectID FROM Bids WHERE FreelancerID = ?;";
            
            String innerSQL = "SELECT Title, Status FROM Projects WHERE ProjectID = ?;";
            String projectSQL = "SELECT COUNT(*) AS NumberBid, AVG(Bid) AS AverageBid FROM Bids WHERE ProjectID=?";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, freelancerID);
            
            ResultSet result = executeQuery(statement);
            
            while (result.next()) {
                
                Project project = new Project();
                
                project.setProjectID(result.getInt("ProjectID"));
                
                PreparedStatement innerStatement = PrepareStatement(innerSQL);
                innerStatement.setInt(1, result.getInt("ProjectID"));
                
                PreparedStatement projectStatement = PrepareStatement(projectSQL);
                projectStatement.setInt(1, result.getInt("ProjectID"));
                
                ResultSet innerResult = executeQuery(innerStatement);
                
                ResultSet projectResult = executeQuery(projectStatement);
                
                if (innerResult.next()) {
                    project.setTitle(innerResult.getString("Title"));
                    project.setStatus(innerResult.getString("Status"));
                }
                
                if (projectResult.next()) {
                    project.setNumberBid(projectResult.getInt("NumberBid"));
                    project.setAverageBid(projectResult.getFloat("AverageBid"));
                }
                
                projects.add(project);
                
            }
            
            return projects;
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    public Bid getBid(Integer freelancerID, Integer projectID) {
        
        try {
            
            String sql = "SELECT Bid, Delivery, Notes, Status FROM Bids WHERE FreelancerID = ? AND ProjectID = ?;";
            
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, freelancerID);
            statement.setInt(2, projectID);
            
            ResultSet result = executeQuery(statement);
            
            if (result.next()) {
                
                Bid bid = new Bid();
                
                bid.setBid(result.getInt("Bid"));
                bid.setDelivery(result.getInt("Delivery"));
                bid.setNote(result.getString("Note"));
                bid.setStatus(result.getString("Status"));
                
                return bid;
                
            } else {
                return null;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    
    
    
    
    
    
    public Freelancer getFreelancer(Integer freelancerID) {
        
        try {
            
            String sql = "SELECT * FROM Users, Freelancers WHERE Users.UserID = Freelancers.FreelancerID AND UserID = ?;";
            PreparedStatement statement = PrepareStatement(sql);
            statement.setInt(1, freelancerID);
            ResultSet result = executeQuery(statement);
            
            if (result.next()) {
                
                Freelancer freelancer = new Freelancer();
                
                freelancer.setUserID(result.getInt("UserID"));
                freelancer.setFirstName(result.getString("FirstName"));
                freelancer.setLastName(result.getString("LastName"));
                freelancer.setEmail(result.getString("Email"));
                
                freelancer.setUsername(result.getString("Username"));   
                freelancer.setPhone(result.getString("Phone"));
                freelancer.setPhoto(result.getString("Photo"));
                freelancer.setHeadline(result.getString("Headline"));
                freelancer.setDescription(result.getString("Description"));
                freelancer.setCountry(result.getString("Country"));
                freelancer.setReview(result.getFloat("Review"));
                freelancer.setSubscription(result.getString("Subscription"));
                freelancer.setHourly(result.getFloat("Hourly"));
                freelancer.setAvailable(result.getString("Available"));
                freelancer.setYearsExperience(result.getInt("YearsExperience"));
                freelancer.setProjectWorked(result.getInt("ProjectWorked"));
                freelancer.setEarned(result.getInt("Earned"));
                
                return freelancer;
                
            } 
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
    
    public ArrayList<Freelancer> getFreelancers() {
        
        ArrayList<Freelancer> freelancers = new ArrayList<>();
        
        String sql = "SELECT UserID FROM Users WHERE Type='Freelancer';";
        
        try {
            
            PreparedStatement statement = PrepareStatement(sql);
            ResultSet result = executeQuery(statement);  

            while (result.next()) {

                freelancers.add(this.getFreelancer(result.getInt("UserID")));

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return freelancers;
                
    }
    
    
        
}
