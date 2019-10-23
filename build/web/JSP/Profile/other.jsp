<%@page import="com.ensias.workplace.beans.Freelancer"%>
<%@page import="com.ensias.workplace.model.Database"%>
<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList,java.util.Date,java.text.SimpleDateFormat,java.text.ParseException;" %>
<%
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM yyyy");
    
    Freelancer user = (Freelancer) request.getAttribute("user");
      
%>

<div class="fre-page-wrapper list-profile-wrapper">
    
    <div class="fre-page-title">
        <div class="container">
            <h2>Profile of <%= user.getFirstName() %> <%= user.getLastName() %></h2>
        </div>
    </div>

    <div class="fre-page-section">
        <div class="container">
            <div class="author-freelance-wrap">

                <div class="fre-profile-box">
                    <div class="profile-freelance-info-wrap">
                        <div class="profile-freelance-info">
                            <div class="freelance-info-avatar">					
                                <span class="freelance-avatar">					
                                    <img alt="" src="<%= user.getPhoto() %>" class="avatar avatar-70 photo avatar-default" height="70" width="70">									
                                </span>
                                <span class="freelance-name"><%= user.getFirstName() %> <%= user.getLastName() %>										                                                
                                    <span><%= user.getHeadline() %></span>				                                    
                                </span>
                            </div>
                            <div class="freelance-info-content">
                                <div class="freelance-rating">
                                    <span class="rate-it" data-score="<%= user.getReview() %>" title="good">
                                    <%
                                        Float review = user.getReview();
                                        for(int i = 1; i < 6; i++) {
                                            if (review >= 1) {
                                                %>     <i data-alt="<%=i%>" class="fa fa-star star-on-png" title="good"></i>&nbsp; <%   
                                            } else if (review == 0.5) {
                                                %>     <i data-alt="<%=i%>" class="fa fa-star-half-o star-half-png" title="good"></i>&nbsp; <%   
                                            } else {
                                                %>     <i data-alt="<%=i%>" class="fa fa-star-o star-off-png" title="good"></i>&nbsp; <%  
                                            }
                                            review--;
                                        }   
                                    %>
                                    </span> 					                                            
                                    <span><%= user.getYearsExperience() %> years experience</span>
                                    <span><%= user.getProjectWorked() %> projects worked </span>
                                    <span><%= user.getCountry() %></span>                                    
                                </div>    
                                <div class="freelance-hourly">
                                    <span><b>$<%= user.getHourly() %></b> /hr </span>
                                    <span>$<%= user.getEarned() %> earned</span>
                                </div>

                                <div class="freelance-about">						
                                    <p>
                                        <%= user.getDescription() %>
                                    </p>
                                </div>                                 
                            </div>

                            <div class="freelance-info-edit"></div>

                        </div>
                    </div>
                </div>
                 
                <div class="fre-profile-box">
                    <div class="freelancer-project-history">
                        <div class="profile-freelance-work">
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <h2 class="freelance-work-title">Work History (0)</h2>
                                </div>
                            </div>
                            <ul class="list-work-history-profile author-project-list">
                                <li class="bid-item">
                                    <span class="profile-no-results" style="padding: 0">There are no activities yet.</span>
                                </li>            
                            </ul>
                        </div>
                    </div>
                </div>
                
                
            </div>
        </div>
    </div>
                                    
</div>
