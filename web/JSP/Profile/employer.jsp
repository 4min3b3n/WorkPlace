<%@page import="com.ensias.workplace.beans.*"%>
<%@page import="com.ensias.workplace.model.*"%>
<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList,java.text.SimpleDateFormat,java.text.ParseException;" %>
<%
    Database database = (Database) getServletContext().getAttribute("database");
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM d, yyyy");  
    
    Employer employer = (Employer) database.getUser((Integer) session.getAttribute("userID"));
    String memberSince = formatter.format(employer.getInscription());
%>


<div class="fre-page-wrapper list-profile-wrapper">

    <div class="fre-page-title">
        <div class="container">
            <h2>My Profile</h2>
        </div>
    </div>
                            
    <div class="fre-page-section">
        <div class="container">
            <div class="profile-employer-wrap">		                
                <div class="fre-profile-box">
                    
                    <div class="profile-employer-info-wrap active">

                        <div class="profile-freelance-info cnt-profile-hide" id="cnt-profile-default" style="display: block">
                            
                            <div class="freelance-info-avatar">
                                <span class="freelance-avatar">
                                    <img alt="" src="<%= employer.getPhoto() %>" class="avatar avatar-125 photo avatar-default" height="125" width="125"> 
                                </span>
                                <span class="freelance-name">
                                    <%= employer.getFirstName() %> <%= employer.getLastName() %>
                                    <span> <%= employer.getHeadline() %> </span>
				</span>
                                
                            </div>
                                
                            <div class="employer-info-content">
                                <div class="freelance-rating">        
                                    <span class="rate-it" data-score="<%= employer.getReview() %>" title="good">
                                        <%
                                            Float review = employer.getReview();
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
                                        <span class=""><%= employer.getProjectPosted() %> projects posted</span>
                                        <span> hire <%= employer.getHiredFreelancers() %> freelancers</span>
                                        <span><%= employer.getCountry() %></span>                                
                                </div>
				                                    
                                <div class="employer-mem-since">
                                    <span>
                                        Member since: <%= memberSince %>                                            
                                    </span>    
                                </div>
								

                                <div class="freelance-about">						
                                    <p><%= employer.getDescription() %></p>
                                </div>
                                
                            </div>
                                
                            <div class="employer-info-edit">
                                <a href="javascript:edit()" class="fre-normal-btn-o employer-info-edit-btn profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-profile">Edit</a>
                            </div>
                                
                            <a href="" class="fre-view-as-others">View my profile as others</a>
                            
                        </div>
                               
                        <div class="profile-employer-info-edit cnt-profile-hide" id="ctn-edit-profile" style="display: none;">
                            
                            <div class="employer-info-avatar avatar-profile-page">
                                <span class="employer-avatar img-avatar image">
                                    <img alt="" src="<%= employer.getPhoto() %>" class="avatar avatar-125 photo avatar-default" height="125" width="125">                                
                                </span>
                                <a id="user_avatar_browse_button">Change</a>
                            </div>
                            
                                <div class="fre-employer-info-form" id="accordion" role="tablist" aria-multiselectable="true">
                                
                                
                                <form id="profile_form" class="form-detail-profile-page" action="profile" method="post">
                                    
                                    <div class="fre-input-field">
                                        <input type="hidden" name="form" value="changeProfile">
                                    </div>
                                    
                                    <div class="fre-input-field">
                                        <input type="text" value="<%= employer.getFirstName() %>" name="first_name" id="display_firstname" placeholder="First name">
                                    </div>
                                    <div class="fre-input-field">
                                        <input type="text" value="<%= employer.getLastName() %>" name="last_name" id="display_lastname" placeholder="Last name">
                                    </div>
                                    <div class="fre-input-field">
                                        <input type="text" value="<%= employer.getHeadline() %>" name="headline" placeholder="Headline">
                                    </div>
                                    
                                    
                                    <div class="fre-input-field">				
                                        <select name="country" class="form-control" id="sel1" style="border: 1;box-shadow: none;background-image: none;height: 44px;padding-left: 15px;line-height: 44px;font-size: 16px;color: #415161;border: 1px solid #dbdbdb;border-radius: 0px;position: relative;display: inline-block;vertical-align: middle;font-size: 16px;zoom: 1;     -webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;">
                                            <jsp:include page="../countries.jsp"></jsp:include>
                                        </select>
                                        
                                    </div>          
                                    
                                    
                                    <div class="fre-input-field">
                                        <div id="wp-post_content-wrap" class="wp-core-ui wp-editor-wrap tmce-active">
                                            <div id="wp-post_content-editor-container" class="wp-editor-container">
                                                <textarea class="wp-editor-area" rows="20" autocomplete="off" cols="40" name="description" id="post_content" aria-hidden="true" style="display: block;"><%= employer.getDescription() %></textarea>
                                            </div>
                                        </div>
                                    </div>

									
                                    <div id="cancel-btn" class="employer-info-save btn-update-profile btn-update-profile-top">
                                        <a href="javascript:closeEdit()" class="employer-info-cancel-btn profile-show-edit-tab-btn" data-ctn_edit="cnt-profile-default">
                                            Cancel &nbsp;
                                        </a>
                                        <input type="submit" class="fre-normal-btn btn-submit" value="Save">
                                    </div>
                                    
                                </form>
                                
                            </div>
                        </div>
                                           
                    </div>					                
                </div>

                <div class="fre-profile-box">
                    <div class="profile-employer-secure-wrap active">

                        <h2>My Account</h2>

                        <div class="profile-employer-secure cnt-profile-hide" id="cnt-account-default" style="display: block">
                            <p>
                                <span>Email address</span>
                                <%= employer.getEmail() %>
                            </p>
														
							
                            <div class="employer-secure-edit">
                                <a href="" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-account">Edit</a>
                            </div>
                        </div>
                            
                            
                        <div class="profile-employer-secure cnt-profile-hide" id="cnt-account-default" style="display: block">
                            <p>
                                <span>Subscription</span>
                                
                            </p>
														
							
                            <div class="employer-secure-edit">
                                <a href="" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-account">Edit</a>
                            </div>
                        </div>
                            
                        
                        <div class="profile-employer-secure cnt-profile-hide" id="cnt-account-default" style="display: block">
                            <p>
                                <span>Phone</span>
                                
                            </p>
														
							
                            <div class="employer-secure-edit">
                                <a href="" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-account">Edit</a>
                            </div>
                        </div>
                                
                    </div>
                                
                    <div class="profile-secure-code-wrap">
                        <p>
                            <span>Password</span>
                            <a href="" class="change-password">Change Password</a>
                        </p>		                   
                    </div>
                                
                </div>


				
				
            </div>
        </div>
    </div>

</div>
                                                                              


<script>
    function edit() {
        let profile = document.getElementById('cnt-profile-default');
        let edit = document.getElementById('ctn-edit-profile');
        if (profile.style.display === "block") {
            profile.style.display = "none";
            edit.style.display = "block";
        }
    }
    function closeEdit() {
        let profile = document.getElementById('cnt-profile-default');
        let edit = document.getElementById('ctn-edit-profile');
        if (profile.style.display === "none") {
            profile.style.display = "block";
            edit.style.display = "none";
        }
    }
</script>