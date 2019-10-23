<%@page import="com.ensias.workplace.beans.*"%>
<%@page import="com.ensias.workplace.model.*"%>
<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList,java.util.Date,java.text.SimpleDateFormat,java.text.ParseException;" %>
<%
    Database database = new Database();
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM yyyy");
    Integer userID = (Integer) session.getAttribute("userID");
    Freelancer freelancer = (Freelancer) database.getUser((Integer) session.getAttribute("userID"));
    %>
    <%--
    ArrayList<String> skills = database.getSkills((Integer) session.getAttribute("userID"));
    --%>    



<div class="fre-page-wrapper list-profile-wrapper">
    <div class="fre-page-title">
        <div class="container">
            <h2>My Profile</h2>
        </div>
    </div>
    
    <div class="fre-page-section">
        <div class="container">
            <div class="profile-freelance-wrap">
		
                <%-- Profile --%>
                <%-- SKILL REMAINING --%>
                <div class="fre-profile-box">
                    
                    <div class="profile-freelance-info-wrap active">
                        
                        <%-- DO NOT TOUCH --%>
                        <div class="profile-freelance-info cnt-profile-hide" id="cnt-profile-default" style="display: block">
                            <div class="freelance-info-avatar">
                                <span class="freelance-avatar">
                                    <img alt="" src="<%= freelancer.getPhoto() %>" class="avatar avatar-125 photo avatar-default" height="125" width="125">
                                </span>
                                <span class="freelance-name">
                                    <%= freelancer.getFirstName() %> <%= freelancer.getLastName() %>
                                    <span> <%= freelancer.getHeadline() %> </span>
                                </span>
                            </div>
                            <div class="freelance-info-content">
                                <div class="freelance-rating">
                                    <span class="rate-it" data-score="<%= freelancer.getReview() %>" title="good">
                                        <%
                                            Float review = freelancer.getReview();
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
                                    
                                    <span class="freelance-empty-info">
                                        <%= freelancer.getYearsExperience() %> years experience                                        
                                    </span>
                                    <span> <%= freelancer.getProjectWorked() %> projects worked </span>					
                                    <span> <%= freelancer.getCountry() %></span>
                                </div>			
                                <div class="freelance-hourly">
                                    <span><b>$ <%= freelancer.getHourly() %></b>/hr</span>
                                    <span>$ <%= freelancer.getEarned() %> earned</span>
                                </div>
                                    
                                <div class="freelance-skill">
                                <%--      for(String skill:skills) {  %>
                                            <span class="fre-label"><%= skill %></span>
                                <%      }                           --%>
                                </div>
                                
                                <div class="freelance-about">
                                    <p><%= freelancer.getDescription() %></p>
                                </div>

                            </div>
                                
                            <div class="employer-info-edit">
                                <a id="edit-button" class="fre-normal-btn-o employer-info-edit-btn profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-profile">Edit</a>
                            </div>
                                
                            <a href="./profile?id=<%= userID %>" class="fre-view-as-others">View my profile as others</a>
                            
                        </div>
                            
                        <%-- Profile Changing --%>        
                        <div class="profile-employer-info-edit cnt-profile-hide" id="ctn-edit-profile" style="display: none;">
                            
                            <div class="employer-info-avatar avatar-profile-page">
                                <span class="employer-avatar img-avatar image">
                                    <img alt="" src="<%= freelancer.getPhoto() %>" class="avatar avatar-125 photo avatar-default" height="125" width="125">                                
                                </span>
                                <a id="user_avatar_browse_button">Change</a>
                            </div>
                            
                                <div class="fre-employer-info-form" id="accordion" role="tablist" aria-multiselectable="true">
                                
                                
                                <form id="profile_form" class="form-detail-profile-page" action="profile" method="post">
                                    
                                    <div class="fre-input-field">
                                        <input type="hidden" name="form" value="changeProfile">
                                    </div>
                                    
                                    <div class="fre-input-field">
                                        <input type="text" value="<%= freelancer.getFirstName() %>" name="first_name" id="display_firstname" placeholder="First name">
                                    </div>
                                    <div class="fre-input-field">
                                        <input type="text" value="<%= freelancer.getLastName() %>" name="last_name" id="display_lastname" placeholder="Last name">
                                    </div>
                                    <div class="fre-input-field">
                                        <input type="text" value="<%= freelancer.getHeadline() %>" name="headline" placeholder="Headline">
                                    </div>
                                    
                                    
                                    <div class="fre-input-field">				
                                        <select name="country" class="form-control" id="sel1" style="border: 1;box-shadow: none;background-image: none;height: 44px;padding-left: 15px;line-height: 44px;font-size: 16px;color: #415161;border: 1px solid #dbdbdb;border-radius: 0px;position: relative;display: inline-block;vertical-align: middle;font-size: 16px;zoom: 1;     -webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;">
                                            <jsp:include page="../countries.jsp"></jsp:include>
                                        </select>
                                        
                                    </div>          
                                    
                                    <div class="fre-input-field fre-experience-field">
                                        <input type="number" value="<%= freelancer.getYearsExperience() %>" name="experience" id="et_experience" max="40" min="0" placeholder="Total">
                                        <span> years experience</span>     
                                    </div>
                                    
                                    <div class="fre-input-field fre-hourly-field">
                                        <input type="number" value="<%= freelancer.getHourly() %>" name="hour_rate" id="hour_rate" step="1" min="0" placeholder="Hour rate">
                                        <span> $/hr</span>    
                                    </div>
                                    
                                    <%-- Skills --%>    
                                    <div class="fre-input-field">    
                                        <div class="chosen-container chosen-container-multi  edit-profile-skills" title="" id="skill_chosen" style="width: 100%;">
                                            
                                            <ul class="chosen-choices">
  
                                                <li class="search-choice"><span>.NET Framework</span>
                                                    <a class="search-choice-close" data-option-array-index="0"></a>
                                                </li>
                                                
                                                <li class="search-choice"><span>3D Modeling &amp; CAD</span>
                                                    <a class="search-choice-close" data-option-array-index="1"></a>
                                                </li>
                                                <li class="search-choice"><span>WordPress</span>
                                                    <a class="search-choice-close" data-option-array-index="146"></a>
                                                </li>
                                                
                                                <li class="search-field">
    
                                                    <input class="chosen-search-input" type="text" autocomplete="off" value=" Skills" style="width: 30px;">
  
                                                </li>

                                            </ul>

                                            <div class="chosen-drop">
  
                                                <ul class="chosen-results"></ul>

                                            </div>
                                        </div>    
                                    </div>

                                    <%-- DO NOT TOUCH --%>
                                    <div class="fre-input-field">
                                        <div id="wp-post_content-wrap" class="wp-core-ui wp-editor-wrap tmce-active">
                                            <div id="wp-post_content-editor-container" class="wp-editor-container">
                                                <textarea class="wp-editor-area" rows="20" autocomplete="off" cols="40" name="description" id="post_content" aria-hidden="true" style="display: block;"><%= freelancer.getDescription() %></textarea>
                                            </div>
                                        </div>
                                    </div>

									
                                    <div id="cancel-btn" class="employer-info-save btn-update-profile btn-update-profile-top">
                                        <span class="employer-info-cancel-btn profile-show-edit-tab-btn" data-ctn_edit="cnt-profile-default">Cancel &nbsp;
                                        </span>
                                        <input type="submit" class="fre-normal-btn btn-submit" value="Save">
                                    </div>
                                    
                                </form>
                                
                            </div>
                        </div>      
        
                    </div>
                       
                    <%-- DO NOT TOUCH --%>		                        
                    <div class="profile-freelance-available">
                        <h2>Available for hire</h2>

                        <div class="fre-input-field">
                            <label for="fre-switch-user-available" class="fre-switch">
                                <form id="available_form" class="form-detail-profile-page" action="profile" method="post">
                                    <div class="fre-input-field">
                                        <input type="hidden" name="form" value="changeAvailable">
                                    </div>
                                    <input id="fre-switch-user-available" name="available" type="checkbox" <% if (freelancer.isAvailable().equals(true)) { %> checked value="1"<% } else { %> value="0" <% } %> >
                                    <div class="fre-switch-slider">
                                    </div>
                                </form>    
                            </label>
                        </div>
                        <p class="freelance-available-desc">
                            Turn on to display an “Invite me”  button on your profile, allowing potential employers to suggest projects for you.
                        </p>
                    </div>	

                </div>

                <%-- My Account --%>                 
                <div class="fre-profile-box">
                    
                    <div class="profile-employer-secure-wrap active">

                        <h2>My Account</h2>

                        <div class="profile-employer-secure cnt-profile-hide" id="cnt-account-default" style="display: block">
                            <p>
                                <span>Email address</span>
                                <%= freelancer.getEmail() %>
                            </p>
														
							
                            <div class="employer-secure-edit">
                                <a href="" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-account">Edit</a>
                            </div>
                        </div>
                            
                            
                        <div class="profile-employer-secure cnt-profile-hide" id="cnt-account-default" style="display: block">
                            <p>
                                <span>Subscription</span>
                                <%= freelancer.getSubscription() %>
                            </p>
														
							
                            <div class="employer-secure-edit">
                                <a href="" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-account">Edit</a>
                            </div>
                        </div>
                            
                        
                        <div class="profile-employer-secure cnt-profile-hide" id="cnt-account-default" style="display: block">
                            <p>
                                <span>Phone</span>
                                <%= freelancer.getPhone() %>
                            </p>
														
							
                            <div class="employer-secure-edit">
                                <a href="" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-account">Edit</a>
                            </div>
                        </div>
                            
                            

                        <div class="profile-employer-secure-edit cnt-profile-hide" id="ctn-edit-account" style="display: none">
                            <form id="account_form" novalidate="">
                                
                                <div class="fre-input-field">
                                    <label>Email address</label>
                                    <input type="email" class="" id="user_email" name="user_email" value="martinharvey@mailinator.com" placeholder="Enter email">
                                </div>
				
                                <div class="employer-info-save btn-update-profile">
                                    <input type="submit" class="fre-normal-btn fre-btn" name="" style="width: 100%" value="Save">
                                    <span class="employer-info-cancel-btn profile-show-edit-tab-btn" data-ctn_edit="cnt-account-default">Cancel</span>
                                </div>
                                
                            </form>
                        </div>
                            
                    </div>
                            
                    <div class="profile-secure-code-wrap">
                        <p>
                            <span>Password</span>
                        
                            <a id="btn-change-pass" href="#" class="change-password">Change Password</a>
                        
                        </p>				                    
                    </div>
                            
                            
                            
                    
                </div>

                <%-- TODO: Portfolio --%> 
                <div class="fre-profile-box">           
                    <div class="portfolio-container">
                        <div class="profile-freelance-portfolio">
                            <div class="row">
                                <div class="col-sm-6 col-xs-12">
                                    <h2 class="freelance-portfolio-title">Portfolio</h2>
                                </div>
					    
                                <div class="col-sm-6 col-xs-12">
                                    <div class="freelance-portfolio-add">
                                        <a href="#" class="fre-normal-btn-o portfolio-add-btn add-portfolio">Add new</a>
                                    </div>
                                </div>                
                            </div>
                            
                            <ul class="freelance-portfolio-list row">
						            
                                <li class="col-md-4 col-sm-6 col-sx-12">
                                    <div class="freelance-portfolio-wrap" id="portfolio_item_1376">
                                        <div class="freelance-portfolio">
                                            <a href="javascript:void(0)" class="fre-view-portfolio-new" data-id="1376">
                                                <img src="https://cdn.enginethemes.com/freelanceengine/2016/09/Zippy.jpg" alt="Zippy">
                                            </a>
                                        </div>
                                        <div class="portfolio-title">
                                            <a class="fre-view-portfolio-new" href="javascript:void(0)" data-id="1376"> Zippy </a>
                                        </div>
                                        <div class="portfolio-action">
                                            <a href="javascript:void(0)" class="edit-portfolio" data-id="1376"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                                            <a href="javascript:void(0)" class="remove_portfolio" data-portfolio_id="1376"><i class="fa fa-trash-o" aria-hidden="true"></i>Remove</a>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="col-md-4 col-sm-6 col-sx-12">
                                    <div class="freelance-portfolio-wrap" id="portfolio_item_1376">
                                        <div class="freelance-portfolio">
                                            <a href="javascript:void(0)" class="fre-view-portfolio-new" data-id="1376">
                                                <img src="https://cdn.enginethemes.com/freelanceengine/2016/09/Zippy.jpg" alt="Zippy">
                                            </a>
                                        </div>
                                        <div class="portfolio-title">
                                            <a class="fre-view-portfolio-new" href="javascript:void(0)" data-id="1376"> Zippy </a>
                                        </div>
                                        <div class="portfolio-action">
                                            <a href="javascript:void(0)" class="edit-portfolio" data-id="1376"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                                            <a href="javascript:void(0)" class="remove_portfolio" data-portfolio_id="1376"><i class="fa fa-trash-o" aria-hidden="true"></i>Remove</a>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="col-md-4 col-sm-6 col-sx-12">
                                    <div class="freelance-portfolio-wrap" id="portfolio_item_1376">
                                        <div class="freelance-portfolio">
                                            <a href="javascript:void(0)" class="fre-view-portfolio-new" data-id="1376">
                                                <img src="https://cdn.enginethemes.com/freelanceengine/2016/09/Zippy.jpg" alt="Zippy">
                                            </a>
                                        </div>
                                        <div class="portfolio-title">
                                            <a class="fre-view-portfolio-new" href="javascript:void(0)" data-id="1376"> Zippy </a>
                                        </div>
                                        <div class="portfolio-action">
                                            <a href="javascript:void(0)" class="edit-portfolio" data-id="1376"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                                            <a href="javascript:void(0)" class="remove_portfolio" data-portfolio_id="1376"><i class="fa fa-trash-o" aria-hidden="true"></i>Remove</a>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="col-md-4 col-sm-6 col-sx-12">
                                    <div class="freelance-portfolio-wrap" id="portfolio_item_1376">
                                        <div class="freelance-portfolio">
                                            <a href="javascript:void(0)" class="fre-view-portfolio-new" data-id="1376">
                                                <img src="https://cdn.enginethemes.com/freelanceengine/2016/09/Zippy.jpg" alt="Zippy">
                                            </a>
                                        </div>
                                        <div class="portfolio-title">
                                            <a class="fre-view-portfolio-new" href="javascript:void(0)" data-id="1376"> Zippy </a>
                                        </div>
                                        <div class="portfolio-action">
                                            <a href="javascript:void(0)" class="edit-portfolio" data-id="1376"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                                            <a href="javascript:void(0)" class="remove_portfolio" data-portfolio_id="1376"><i class="fa fa-trash-o" aria-hidden="true"></i>Remove</a>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="col-md-4 col-sm-6 col-sx-12">
                                    <div class="freelance-portfolio-wrap" id="portfolio_item_1376">
                                        <div class="freelance-portfolio">
                                            <a href="javascript:void(0)" class="fre-view-portfolio-new" data-id="1376">
                                                <img src="https://cdn.enginethemes.com/freelanceengine/2016/09/Zippy.jpg" alt="Zippy">
                                            </a>
                                        </div>
                                        <div class="portfolio-title">
                                            <a class="fre-view-portfolio-new" href="javascript:void(0)" data-id="1376"> Zippy </a>
                                        </div>
                                        <div class="portfolio-action">
                                            <a href="javascript:void(0)" class="edit-portfolio" data-id="1376"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                                            <a href="javascript:void(0)" class="remove_portfolio" data-portfolio_id="1376"><i class="fa fa-trash-o" aria-hidden="true"></i>Remove</a>
                                        </div>
                                    </div>
                                </li>
                                            
                            </ul>
				            
                        </div>            
                    </div>
                </div>

                <%-- Experiences Almost Complete --%> 
                <div class="fre-profile-box">
                    <div class="profile-freelance-experience">
                        <div class="row">

                            <div class="col-sm-6 col-xs-12">
                                <h2 class="freelance-experience-title">Work Experiences</h2>
                            </div>

                            <span id="fre-empty-experience">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="freelance-experience-add">
                                        <a href="javascript:openNewExperience();" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-experience" data-ctn_hide="fre-empty-experience">Add new</a>
                                    </div>
                                </div>
                            </span>
                        </div>

                        <ul class="freelance-experience-list">
                            
                            <li class="freelance-experience-new-wrap cnt-profile-hide" id="ctn-edit-experience" style="display: none;">
                                <div class="freelance-experience-new">
                                    <form class="fre-experience-form freelance-experience-form" method="post">
                                        
                                        <div class="fre-input-field">
                                            <input type="hidden" name="form" value="addNewExperience">
                                        </div>
                                        
                                        <div class="fre-input-field">
                                            <input type="text" name="work_experience[title]" placeholder="Title">
                                        </div>

                                        <div class="fre-input-field">
                                            <input type="text" name="work_experience[company]" placeholder="Company">
                                        </div>

                                        <div class="fre-input-field no-margin-bottom work_experience_to">       
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <label class="fre-field-title" for="">From period</label>
                                                    <div>
                                                        <input type="date" id="start" name="work_experience[from-period]" value="" min="1960-01-01"  style="padding: 12px 15px;width: 100%;height: 44px;border: 1px solid #dbdbdb;border-radius: 2px;font-size: 16px;font-weight: 400;color: #415161;line-height: normal;margin-bottom: 16px;">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <label class="fre-field-title" for="">To period</label>
                                                    <div>
                                                        <input type="date" id="end" name="work_experience[to-period]" value="" min="1960-01-01" style="padding: 12px 15px;width: 100%;height: 44px;border: 1px solid #dbdbdb;border-radius: 2px;font-size: 16px;font-weight: 400;color: #415161;line-height: normal;margin-bottom: 16px;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="fre-input-field no-margin-bottom">
                                            <textarea name="work_experience[content]" id="" cols="30" rows="10" placeholder="Description (optional)"></textarea>
                                        </div>

                                        <div class="fre-form-btn">
                                            <input type="submit" class="fre-normal-btn btn-submit" name="" value="Save">
                                            <a href="javascript:closeNewExperience()" class="fre-experience-close profile-show-edit-tab-btn" data-ctn_edit="fre-empty-experience">Cancel</a>
                                        </div>
                                        
                                    </form>
                                </div>
                            </li>

                            <% 
                                ArrayList<Experience> experiences = database.getExperience((Integer) session.getAttribute("userID"));

                                if (experiences.isEmpty()) {
                            %>      
                            
                                <li class="cnt-profile-hide meta_history_item_5919" id="cnt-experience-default-5919" style="border-bottom: 6;padding-bottom: 30px;">
                                        <div class="freelance-experience-wrap">
                                            <h3>No items to display.</h3>
                                        </div>
                                </li>


                            <%  
                                }

                                for(Experience experience: experiences) {

                                    String strDate = formatter.format(new SimpleDateFormat("yyyy-MM-dd").parse(experience.getStartDate()));
                                    String endDate = formatter.format(new SimpleDateFormat("yyyy-MM-dd").parse(experience.getEndDate()));

                            %>

                                <li class="cnt-profile-hide meta_history_item_5919" id="cnt-experience-default-5919" style="border-bottom: 6;padding-bottom: 30px;">
                                    <div class="freelance-experience-wrap">
                                        <h2><%= experience.getTitle() %></h2>
                                        <h3><%= experience.getCompany() %></h3>
                                        <h4><%= strDate %> - <%= endDate %> </h4>
                                        <p><%= experience.getDescription() %></p>
                                    </div>

                                    <div class="freelance-experience-action">

                                        <a href="javascript:void(0)" class="profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-experience-5919">
                                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>    
                                            Edit    
                                        </a>
                                        
                                        <a href="./resources/experience?exID=<%= experience.getExperienceID() %>" onclick="window.location.reload(true);" class="remove_history_fre" data-id="5919">
                                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                                            Remove
                                        </a>
                                    </div>					                                
                                </li>
                                
                                <li class="freelance-experience-new-wrap cnt-profile-hide meta_history_item_5919" id="ctn-edit-experience-5919" style="display: none;">
                                    <div class="freelance-experience-new">
                                        <form class="fre-experience-form freelance-experience-form " method="post">

                                            <input type="hidden" value="5919" name="editExperience">
                                            
                                            <div class="fre-input-field">
                                                <input type="text" name="work_experience[title]" placeholder="Title" value="<%= experience.getTitle() %>">
                                            </div>

                                            <div class="fre-input-field">
                                                <input type="text" name="work_experience[subtitle]" value="<%= experience.getCompany() %>" placeholder="Company">
                                            </div>

                                            <div class="fre-input-field no-margin-bottom work_experience_to">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <label class="fre-field-title" for="">From period</label>
                                                        <div>
                                                            <input type="date" id="start" name="work_experience[from-period]" value="" min="1960-01-01"  style="padding: 12px 15px;width: 100%;height: 44px;border: 1px solid #dbdbdb;border-radius: 2px;font-size: 16px;font-weight: 400;color: #415161;line-height: normal;margin-bottom: 16px;">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label class="fre-field-title" for="">To period</label>
                                                        <div>
                                                            <input type="date" id="end" name="work_experience[to-period]" value="" min="1960-01-01" style="padding: 12px 15px;width: 100%;height: 44px;border: 1px solid #dbdbdb;border-radius: 2px;font-size: 16px;font-weight: 400;color: #415161;line-height: normal;margin-bottom: 16px;">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                            <div class="fre-input-field no-margin-bottom">
                                                <textarea name="work_experience[content]" id="" cols="30" placeholder="Description (optional)" rows="10"><%= experience.getDescription() %></textarea>
                                            </div>

                                            <div class="fre-form-btn">
                                                <input type="submit" class="fre-normal-btn btn-submit" name="" value="Save">
                                                <span class="fre-experience-close profile-show-edit-tab-btn" data-ctn_edit="cnt-experience-default-5919">Cancel</span>
                                            </div>
                                            
                                        </form>
                                    </div>
                                </li>

                            <%    
                                }
                            %>
                            
                            


                        </ul>
            
                    </div>
                </div>
           
                <%-- Certification Not Complete --%> 
                <div class="fre-profile-box">
                                <div class="profile-freelance-certificate">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12">
                                            <h2 class="freelance-certificate-title">Certification</h2>
                                        </div>
                                        <span id="fre-empty-certification">
                                            <div class="col-sm-6 col-xs-12">
                                                <div class="freelance-certificate-add">
                                                <a href="javascript:void(0)" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-certification" data-ctn_hide="fre-empty-certification">
								Add new                            </a>
                                                </div>
                                            </div>
                                            <p class="col-xs-12 fre-empty-optional-profile" style="display : none">
                                                Add work certification to your profile. (optional)                    
                                            </p>
                                        </span>
                                    </div>

                                    <ul class="freelance-certificate-list">
				        
                                        <%
                                             
                                            ArrayList<Certification> certifications = database.getCertification((Integer) session.getAttribute("userID"));
                                            
                                            if (certifications.isEmpty()) {
                                                
                                        %>      
                                                <li class="cnt-profile-hide meta_history_item_5919" id="cnt-experience-default-5919" style="border-bottom: 6;padding-bottom: 30px;">
                                                    <div class="freelance-experience-wrap">
                                                        <h3>No items to display.</h3>
                                                    </div>
                                                </li>
                                        <%  
                                            }
                                            
                                            for(Certification certification: certifications) { 
                                          
                                                String date = formatter.format(certification.getDate());
                                            
                                        %>
                                            
                                            
                                            <li class="cnt-profile-hide meta_history_item_5922" id="cnt-certification-default-5922" style="border-bottom: 6;padding-bottom: 30px;">
                                                <div class="freelance-certificate-wrap">
                                                    <h2><%= certification.getTitle() %></h2>
                                                    <h3><%= certification.getProvider() %></h3>
                                                    <h4><%= date %></h4>
                                                    <p><%= certification.getDescription() %></p>
                                                </div>
									                                        
                                            <div class="freelance-certificate-action">
                                                <a href="" class="profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-certification-5922">
                                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    Edit                                            
                                                </a>
                                                <a href="javascript:void(0)" class="remove_history_fre" data-id="5922">
                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                    Remove
                                                </a>
                                            </div>
									                                
                                        </li>	
                                            
                                        <%    
                                            }
                                        %>
                                        			
                                    </ul>
                                        
                                </div>
                            </div>

                <%-- Education Not Complete --%> 
                <div class="fre-profile-box">
        <div class="profile-freelance-education">
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <h2 class="freelance-education-title">Education</h2>
                </div>
                <span id="fre-empty-education">
		                        
                    <div class="col-sm-6 col-xs-12">
                        <div class="freelance-education-add">
                            <a href="" class="fre-normal-btn-o profile-show-edit-tab-btn" data-ctn_hide="fre-empty-education" data-ctn_edit="ctn-edit-education">				
                                Add new                            
                            </a>
                        </div>
                    </div>
				                        
                    <p class="col-xs-12 fre-empty-optional-profile" style="display : none">
                        Add work education to your profile. (optional)                    
                    </p>
                </span>
            </div>

            <ul class="freelance-education-list">
                
                <%
                        
                        ArrayList<Education> educations = database.getEducation((Integer) session.getAttribute("userID"));
                        
                        if (certifications.isEmpty()) {
                                                
                %>      
                                                <li class="cnt-profile-hide meta_history_item_5919" id="cnt-experience-default-5919" style="border-bottom: 0;padding-bottom: 30px;">
                                                    <div class="freelance-experience-wrap">
                                                        <h3>No items to display.</h3>
                                                    </div>
                                                </li>
                <%  
                                            }
                        
                        for(Education education: educations) {
                            
                            String startDate = formatter.format(education.getStartDate());
                            String endDate = formatter.format(education.getEndDate());
                            
                %>
				                    
                <li class="cnt-profile-hide meta_history_item_5923" id="cnt-education-default-5923" style="border-bottom: 0;padding-bottom: 30px;">         
                    <div class="freelance-education-wrap">
                        <h2><%= education.getDegree() %></h2>
                        <h3><%= education.getSchool() %></h3>
                        <h4 style="font-weight: 550;">
                            <%= education.getField() %>
                        </h4>
                        <h4><%= startDate %> - <%= endDate %></h4>
                        <p><%= education.getDescription() %></p>
                    </div>							                                        
                    <div class="freelance-education-action">
                        <a href="javascript:void(0)" class="profile-show-edit-tab-btn" data-ctn_edit="ctn-edit-education-5923">
                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                            Edit                                            
                        </a>
                        <a href="javascript:void(0)" class="remove_history_fre" data-id="5923">
                            <i class="fa fa-trash-o" aria-hidden="true"></i>
                            Remove
                        </a>
                    </div>
									                                
                </li>
                
                <%
                        }
                %>
                                <!-- End Box show education-->

								                                    <!-- Box edit education-->
                                    <li class="freelance-education-new-wrap cnt-profile-hide meta_history_item_5923" id="ctn-edit-education-5923">
                                        <div class="freelance-education-new">
                                            <form class="fre-education-form freelance-education-form" action="" method="post">

                                                <div class="fre-input-field">
                                                    <input type="text" name="education[title]" placeholder="Degree" value="MBA">
                                                </div>

                                                <div class="fre-input-field">
                                                    <input type="text" name="education[subtitle]" value="New York Institute of Technology" placeholder="School">
                                                </div>

                                                <div class="fre-input-field no-margin-bottom">

                                                    <div class="row">
                                                    	<div class="col-sm-12">
                                                    		<label class="fre-field-title" for="">From period</label>
                                                    	</div>
                                                        <div class="col-sm-6">
                                                            <div class="fre-input-field">
                                                                <select class="fre-chosen-single" name="education[m_from]" id="" style="display: none;">
                                                                    <option value="">Month</option>
																	                                                                        <option value="01">January</option>;
																	                                                                        <option value="02" selected="">February</option>;
																	                                                                        <option value="03">March</option>;
																	                                                                        <option value="04">April</option>;
																	                                                                        <option value="05">May</option>;
																	                                                                        <option value="06">June</option>;
																	                                                                        <option value="07">July</option>;
																	                                                                        <option value="08">August</option>;
																	                                                                        <option value="09">September</option>;
																	                                                                        <option value="10">October</option>;
																	                                                                        <option value="11">November</option>;
																	                                                                        <option value="12">December</option>;
																	                                                                </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;"><a class="chosen-single">
  <span>February</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
    <input class="chosen-search-input" type="text" autocomplete="off">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="fre-input-field">
                                                                <select class="fre-chosen-single" name="education[y_from]" id="" style="display: none;">
                                                                    <option value="">Year</option>
																	<option value="2019">2019</option><option value="2018">2018</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012" selected="">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option>                                                                </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;"><a class="chosen-single">
  <span>2012</span>
  <div><b></b></div>
</a>

                                                                                                                                            <div class="chosen-drop">
  <div class="chosen-search">
    <input class="chosen-search-input" type="text" autocomplete="off">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <!-- To !-->
                                                 <div class="fre-input-field no-margin-bottom">
                                                    <div class="row">
                                                    	<div class="col-sm-12">
                                                    		<label class="fre-field-title" for="">To period</label>
                                                    	</div>
                                                        <div class="col-sm-6">
                                                            <div class="fre-input-field">
                                                                <select class="fre-chosen-single" name="education[m_to]" id="" style="display: none;">
                                                                    <option value="">Month</option>
																	                                                                        <option value="01">January</option>;
																	                                                                        <option value="02">February</option>;
																	                                                                        <option value="03">March</option>;
																	                                                                        <option value="04">April</option>;
																	                                                                        <option value="05">May</option>;
																	                                                                        <option value="06">June</option>;
																	                                                                        <option value="07">July</option>;
																	                                                                        <option value="08">August</option>;
																	                                                                        <option value="09">September</option>;
																	                                                                        <option value="10">October</option>;
																	                                                                        <option value="11">November</option>;
																	                                                                        <option value="12">December</option>;
																	                                                                </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;"><a class="chosen-single">
  <span>Month</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
    <input class="chosen-search-input" type="text" autocomplete="off">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="fre-input-field">
                                                                <select class="fre-chosen-single" name="education[y_to]" id="" style="display: none;">
                                                                    <option value="">Year</option>
																	<option value="2019">2019</option><option value="2018">2018</option><option value="2017">2017</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option>                                                                </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;"><a class="chosen-single">
  <span>Year</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
    <input class="chosen-search-input" type="text" autocomplete="off">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- end !-->

                                                <div class="fre-input-field no-margin-bottom">
                                            <textarea name="education[content]" id="" cols="30" placeholder="Description (optional)" rows="10">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.</textarea>
                                                </div>

                                                <input type="hidden" value="5923" name="education[id]">

                                                <div class="fre-form-btn">
                                                    <input type="submit" class="fre-normal-btn btn-submit" name="" value="Save">
                                                    <span class="fre-education-close profile-show-edit-tab-btn" data-ctn_edit="cnt-education-default-5923">Cancel</span>
                                                </div>
                                            </form>
                                        </div>
                                    </li>
                                    <!-- Box edit education-->
								
								            
            </ul>
        </div>
    </div>

            
            </div>
        </div>
    </div>

</div>
<script>
var switchAvailable = document.getElementById("fre-switch-user-available");

switchAvailable.addEventListener("click", function() {
    
    if (switchAvailable.value === "1") {
        document.getElementById('available_form').submit();
    } else {
        document.getElementById('available_form').submit();
    }
    
});
</script>