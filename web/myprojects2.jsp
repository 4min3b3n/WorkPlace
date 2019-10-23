<%@page import="com.ensias.workplace.model.*"%>
<%@page import="com.ensias.workplace.beans.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, java.text.DecimalFormat;" %>
<%@page import="java.text.SimpleDateFormat,java.text.ParseException;" %>

<%
    Database database = new Database();
    ArrayList<Project> projects = database.getBiddingProjects((Integer) session.getAttribute("userID"));
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM dd, yyyy");
    DecimalFormat df = new DecimalFormat("#.##");
%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">

<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="page-template page-template-page-my-project page-template-page-my-project-php page page-id-1654 logged-in two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>

<div class="fre-page-wrapper">
        
    <div class="fre-page-title">
            <div class="container">
                <h2>My Projects</h2>
            </div>
        </div>
    
        <div class="fre-page-section">
            <div class="container">
                <div class="my-work-employer-wrap">
					
            <div class="fre-work-package-wrap">
                <div class="fre-work-package">			
                    <p>You have <span class="number"><b>0</b></span> available bid(s).</p><p>If you want to get more bids, you can directly move to purchase page by clicking the next button.</p>                    
                    <a class="fre-normal-btn-o" href="">Purchase more bids</a>
                </div>
            </div>

			                    
            <ul class="fre-tabs nav-tabs-my-work">
                <li class="active"><a data-toggle="tab" href="#current-project-tab"><span>Current Projects</span></a>
                </li>
                <li class="next"><a data-toggle="tab" href="#previous-project-tab"><span>Previous Projects</span></a>
                </li>
            </ul>
                    
            <div class="fre-tab-content">
                <div id="current-project-tab" class="freelancer-current-project-tab fre-panel-tab active">
                    <div class="fre-work-project-box">
                        <div class="work-project-filter">
                            <form>
                                <div class="row">
                                    <div class="col-md-8 col-sm-6 col-xs-12">
                                        <div class="fre-input-field">
                                            <label class="fre-field-title">Keyword</label>
                                            <input type="text" class="search" name="s" placeholder="Search projects by keywords">
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6 col-xs-12">
                                        <div class="fre-input-field">
                                            <label class="fre-field-title">Filter</label>
                                            <select class="fre-chosen-single" name="bid_current_status" style="display: none;">
                                                <option value="">All Projects</option>
                                                <option value="accept">Processing</option>
                                                <option value="unaccept">Unaccepted</option>
                                                <option value="disputing">Disputed</option>
                                                <option value="publish">Active</option>
                                                <option value="archive">Archived</option>
                                            </select>
                                            <div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;"><a class="chosen-single">
                                                <span>All Projects</span>
                                                <div><b></b></div>
                                                </a>
                                                <div class="chosen-drop">
                                                <div class="chosen-search">
                                                  <input class="chosen-search-input" type="text" autocomplete="off">
                                                </div>
                                                <ul class="chosen-results"></ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="clear-filter work-project-filter-clear secondary-color" href="">Clear all filters</a>
                            </form>
                        </div>
                    </div>
                            
                            
                    <div class="fre-work-project-box">					                                    
                        <div class="current-freelance-project">
                            <div class="fre-table">
                                <div class="fre-table-head">
                                    <div class="fre-table-col project-title-col">Project Title</div>
                                    <div class="fre-table-col project-bids-col">Number Bids</div>
                                    <div class="fre-table-col project-bid-col">Bid</div>
                                    <div class="fre-table-col project-average-col">Average Bid</div>
                                    <div class="fre-table-col project-status-col">Status</div>
                                    <div class="fre-table-col project-action-col">Action</div>
                                </div>
                                            
                                         
                                <div class="fre-current-table-rows" style="display: table-row-group;">
                                    
                                <%-- TODO: IF PROJECTS IS EMPTY DISPLAY BANNER FOR THAT --%>
                                
                                <% if (projects.isEmpty()) { %>
                                
                                    <span class="project-no-results">There are no activities yet.</span>
                                    
                                <% } else { %>    
                                    
                                    <%  for(Project project: projects) { %>
                                    
                                            <div class="fre-table-row out in">
                                                <div class="fre-table-col project-title-col">
                                                    <a class="secondary-color" href="./project?id=<%= project.getProjectID() %>"><%= project.getTitle() %></a>  
                                                </div>
                                                <div class="fre-table-col project-bids-col">
                                                    <%= project.getNumberBid() %>
                                                    <span>Bids</span>
                                                </div>
                                                <div class="fre-table-col project-bid-col">
                                                    <% Bid bid = database.getBid((Integer) session.getAttribute("userID"), project.getProjectID()); %>
                                                    <span>Bid</span>
                                                    <b>$<%= df.format(bid.getBid()) %></b>
                                                    <span>in <%= bid.getDelivery() %> day</span>
                                                </div>
                                                <div class="fre-table-col project-average-col">
                                                    <span>Average Bid</span>
                                                    $<%= df.format(project.getAverageBid()) %>
                                                </div>
                                                <div class="fre-table-col project-status-col ">
                                                    <%= project.getStatus() %>
                                                </div>
                                                <div class="fre-table-col project-action-col">
                                                    <%  if (bid.getStatus("Pending")) { %>
                                                    <a class="bid-action" href="./resources/cancelBid?pID=<%= project.getProjectID() %>&fID=<%= session.getAttribute("userID") %>">Cancel Bid</a>
                                                    <%  } else if (bid.getStatus("Accepted")) { %>
                                                        <a class="bid-action" href="">WorkPlace</a>
                                                    <%-- <a href="" >Workspace</a> --%>
                                                    <%  } %>
                                                </div>
                                            </div>  
                                                
                                    <%  } %>
                                    
                                <%  } %>
                                        
                                                
                                                
                                                
                                                
                                                
                                            </div>
                                        </div>						                                    
                                    </div>
                                </div>
								                            
                        </div>
                        
                        
                                
                        <div id="previous-project-tab" class="freelancer-previous-project-tab fre-panel-tab">
                                                                                            <div class="fre-work-project-box">
                                <div class="work-project-filter">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-8 col-sm-6 col-xs-12">
                                                <div class="fre-input-field">
                                                    <label class="fre-field-title">Keyword</label>
                                                    <input type="text" class="search" name="s" placeholder="Search projects by keywords">
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-6 col-xs-12">
                                                <div class="fre-input-field">
                                                    <label class="fre-field-title">Status</label>
                                                    <select class="fre-chosen-single" name="bid_previous_status" style="display: none;">
                                                        <option value="">All</option>
                                                        <option value="complete">Completed</option>
                                                        <option value="disputed">Resolved</option>
                                                    </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;"><a class="chosen-single">
<span>All</span>
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
                                        <a class="clear-filter work-project-filter-clear secondary-color" href="">Clear all filters</a>
                                    </form>
                                </div>
                            </div>
                            <div class="fre-work-project-box">
                                <div class="previous-freelance-project">
                                    <div class="fre-table">
                                        <div class="fre-table-head">
                                            <div class="fre-table-col project-title-col">Project Title</div>
                                            <div class="fre-table-col project-start-col">Start Date</div>
                                            <div class="fre-table-col project-status-col">Status</div>
                                            <div class="fre-table-col project-review-col">Review</div>
                                        </div>
                                        <div class="fre-previous-table-rows" style="display: table-row-group;">

                                                <div class="fre-table-row">
                                                    <div class="fre-table-col project-title-col">
                                                        <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/programming-on-add-to-cart-button/">Programming on Add to Cart Button</a>
                                                    </div>
                                                    <div class="fre-table-col project-start-col">September 1, 2016</div>
                                                    <div class="fre-table-col project-status-col">Resolved</div>
                                                    <div class="fre-table-col project-review-col">
                                                                                                                                                                                    <span class="rate-it" data-score="0" title="Not rated yet!"><i data-alt="1" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></span>

                                                    </div>
                                                </div>

                                                <div class="fre-table-row">
                                                    <div class="fre-table-col project-title-col">
                                                        <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/web-application-dashboard-testing-2/">Web Application (Dashboard) Testing</a>
                                                    </div>
                                                    <div class="fre-table-col project-start-col">September 6, 2016</div>
                                                    <div class="fre-table-col project-status-col">Completed</div>
                                                    <div class="fre-table-col project-review-col">
                                                                                                                                                                                    <span class="rate-it" data-score="5" title="gorgeous"><i data-alt="1" class="fa fa-star star-on-png" title="gorgeous"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="gorgeous"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="gorgeous"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="gorgeous"></i>&nbsp;<i data-alt="5" class="fa fa-star star-on-png" title="gorgeous"></i><input name="score" type="hidden" value="5" readonly=""></span>
                                                                                                                                                                                                <p></p><p>Unbelievable!!! You're fast to complete the project and it's extremely well done.</p>
<p></p>

                                                    </div>
                                                </div>

                                                <div class="fre-table-row">
                                                    <div class="fre-table-col project-title-col">
                                                        <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/mobile-developer-for-ecommerce-app/">Mobile Developer for Ecommerce App</a>
                                                    </div>
                                                    <div class="fre-table-col project-start-col">September 6, 2016</div>
                                                    <div class="fre-table-col project-status-col">Completed</div>
                                                    <div class="fre-table-col project-review-col">
                                                                                                                                                                                    <span class="rate-it" data-score="4.5" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i><input name="score" type="hidden" value="4.5" readonly=""></span>
                                                                                                                                                                                                <p></p><p>Awesome freelancer who delivered the project way ahead of schedule. Would recommend him to everybody!!!</p>
<p></p>

                                                    </div>
                                                </div>

                                                <div class="fre-table-row">
                                                    <div class="fre-table-col project-title-col">
                                                        <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/build-a-website-for-a-print-shop__trashed/">Build a Website for a Print Shop</a>
                                                    </div>
                                                    <div class="fre-table-col project-start-col">September 6, 2016</div>
                                                    <div class="fre-table-col project-status-col">Completed</div>
                                                    <div class="fre-table-col project-review-col">
                                                                                                                                                                                    <span class="rate-it" data-score="4.5" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i><input name="score" type="hidden" value="4.5" readonly=""></span>

                                                    </div>
                                                </div>
                                                                                                                                                <script type="data/json" id="previous_project_post_data">[{"post_parent":778,"post_title":"Programming on Add to Cart Button","post_name":"1141","post_content":"<p>If you hire your project for me, I will do it with 100% accuracy.<\/p>\n","post_excerpt":"If you hire your project for me, I will do it with 100% accuracy.","post_author":"49","post_status":"disputed","ID":1141,"post_type":"bid","comment_count":"","guid":"https:\/\/freelanceengine.enginethemes.com\/bid\/1141\/","status_text":"","post_date":"September 7, 2016","address":"","avatar":"","post_count":"","et_featured":"","et_expired_date":"2 years left for bidding","bid_budget":"$89.00","dealine":"","accepted":"disputed","bid_time":"8","type_time":"day","id":1141,"permalink":"https:\/\/freelanceengine.enginethemes.com\/bid\/1141\/","unfiltered_content":"If you hire your project for me, I will do it with 100% accuracy.","the_post_thumnail":"","featured_image":"","the_post_thumbnail":"","et_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/08\/Martin-Harvey.jpg' class='avatar avatar-70 photo avatar-default' height='70' width='70' \/>","author_url":"https:\/\/freelanceengine.enginethemes.com\/author\/martinharvey\/","rating_score":0,"button_message":"            <button\n                    class=\"btn btn-link btn-send-msg btn-redirect-msg\"\n                   title=\"\"\n                    data-conversation=\"\">\n                <i class=\"fa fa-comment\"><\/i><span>Message<\/span>\n            <\/button>\n    ","et_professional_title":"Programing &amp; Development","experience":"11","profile_display":"Martin Harvey","bid_time_text":"in 8 days","bid_budget_text":"$89.00","project_author_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/09\/Nikolaos-Pachis.jpg' class='avatar avatar-30 photo avatar-default' height='30' width='30' \/>","project_link":"https:\/\/freelanceengine.enginethemes.com\/project\/programming-on-add-to-cart-button\/","project_title":"Programming on Add to Cart Button","project_status":"disputed","project_status_view":"Resolved","total_projects_worked":"3","project_id":778,"project_author":78,"author_country":"UK","project_accepted":"1141","review_link":"https:\/\/freelanceengine.enginethemes.com\/project\/programming-on-add-to-cart-button\/?review=1","project_workspace_link":"https:\/\/freelanceengine.enginethemes.com\/project\/programming-on-add-to-cart-button\/?workspace=1","project_status_text":"Job is disputed","project_comment":"","project_post_date":"September 1, 2016","et_budget":"$95.00","total_bids":"1","bid_average":"$89.00","is_admin":0,"current_user":49,"add_class_bid":" bid-of-user","flag":2},{"post_parent":978,"post_title":"Web Application (Dashboard) Testing","post_name":"1116","post_content":"<p>If you hire your project for me, I will do it with 100% accuracy.<\/p>\n","post_excerpt":"If you hire your project for me, I will do it with 100% accuracy.","post_author":"49","post_status":"complete","ID":1116,"post_type":"bid","comment_count":"","guid":"https:\/\/freelanceengine.enginethemes.com\/bid\/1116\/","status_text":"","post_date":"September 7, 2016","address":"","avatar":"","post_count":"","et_featured":"","et_expired_date":"2 years left for bidding","bid_budget":"$516.00","dealine":"","accepted":"complete","bid_time":"29","type_time":"day","id":1116,"permalink":"https:\/\/freelanceengine.enginethemes.com\/bid\/1116\/","unfiltered_content":"If you hire your project for me, I will do it with 100% accuracy.","the_post_thumnail":"","featured_image":"","the_post_thumbnail":"","et_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/08\/Martin-Harvey.jpg' class='avatar avatar-70 photo avatar-default' height='70' width='70' \/>","author_url":"https:\/\/freelanceengine.enginethemes.com\/author\/martinharvey\/","rating_score":5,"button_message":"            <button\n                    class=\"btn btn-link btn-send-msg btn-redirect-msg\"\n                   title=\"\"\n                    data-conversation=\"\">\n                <i class=\"fa fa-comment\"><\/i><span>Message<\/span>\n            <\/button>\n    ","et_professional_title":"Programing &amp; Development","experience":"11","profile_display":"Martin Harvey","bid_time_text":"in 29 days","bid_budget_text":"$516.00","project_author_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/11\/Doris-Clarke.jpg' class='avatar avatar-30 photo avatar-default' height='30' width='30' \/>","project_link":"https:\/\/freelanceengine.enginethemes.com\/project\/web-application-dashboard-testing-2\/","project_title":"Web Application (Dashboard) Testing","project_status":"complete","project_status_view":"Completed","total_projects_worked":"3","project_id":978,"project_author":98,"author_country":"UK","project_accepted":"1116","review_link":"https:\/\/freelanceengine.enginethemes.com\/project\/web-application-dashboard-testing-2\/?review=1","project_workspace_link":"https:\/\/freelanceengine.enginethemes.com\/project\/web-application-dashboard-testing-2\/?workspace=1","project_status_text":"Job is complete","project_comment":"<p>Unbelievable!!! You're fast to complete the project and it's extremely well done.<\/p>\n","project_comment_trim":"Unbelievable!!! You're fast to complete the project and it's extremely well done.","project_post_date":"September 6, 2016","et_budget":"$535.00","total_bids":"1","bid_average":"$516.00","is_admin":0,"current_user":49,"add_class_bid":" bid-of-user","flag":2},{"post_parent":942,"post_title":"Mobile Developer for Ecommerce App","post_name":"1114","post_content":"<p>If you hire your project for me, I will do it with 100% accuracy.<\/p>\n","post_excerpt":"If you hire your project for me, I will do it with 100% accuracy.","post_author":"49","post_status":"complete","ID":1114,"post_type":"bid","comment_count":"","guid":"https:\/\/freelanceengine.enginethemes.com\/bid\/1114\/","status_text":"","post_date":"September 7, 2016","address":"","avatar":"","post_count":"","et_featured":"","et_expired_date":"2 years left for bidding","bid_budget":"$15.00","dealine":"","accepted":"complete","bid_time":"2","type_time":"day","id":1114,"permalink":"https:\/\/freelanceengine.enginethemes.com\/bid\/1114\/","unfiltered_content":"If you hire your project for me, I will do it with 100% accuracy.","the_post_thumnail":"","featured_image":"","the_post_thumbnail":"","et_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/08\/Martin-Harvey.jpg' class='avatar avatar-70 photo avatar-default' height='70' width='70' \/>","author_url":"https:\/\/freelanceengine.enginethemes.com\/author\/martinharvey\/","rating_score":4.5,"button_message":"            <button\n                    class=\"btn btn-link btn-send-msg btn-redirect-msg\"\n                   title=\"\"\n                    data-conversation=\"\">\n                <i class=\"fa fa-comment\"><\/i><span>Message<\/span>\n            <\/button>\n    ","et_professional_title":"Programing &amp; Development","experience":"11","profile_display":"Martin Harvey","bid_time_text":"in 2 days","bid_budget_text":"$15.00","project_author_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/09\/Elisa-Bridgette.jpg' class='avatar avatar-30 photo avatar-default' height='30' width='30' \/>","project_link":"https:\/\/freelanceengine.enginethemes.com\/project\/mobile-developer-for-ecommerce-app\/","project_title":"Mobile Developer for Ecommerce App","project_status":"complete","project_status_view":"Completed","total_projects_worked":"3","project_id":942,"project_author":96,"author_country":"UK","project_accepted":"1114","review_link":"https:\/\/freelanceengine.enginethemes.com\/project\/mobile-developer-for-ecommerce-app\/?review=1","project_workspace_link":"https:\/\/freelanceengine.enginethemes.com\/project\/mobile-developer-for-ecommerce-app\/?workspace=1","project_status_text":"Job is complete","project_comment":"<p>Awesome freelancer who delivered the project way ahead of schedule. Would recommend him to everybody!!!<\/p>\n","project_comment_trim":"Awesome freelancer who delivered the project way ahead of schedule. Would recommend him to everybody!!!","project_post_date":"September 6, 2016","et_budget":"$15.00","total_bids":"1","bid_average":"$15.00","is_admin":0,"current_user":49,"add_class_bid":" bid-of-user","flag":2},{"post_parent":947,"post_title":"","post_name":"1112","post_content":"<p>If you hire your project for me, I will do it with 100% accuracy.<\/p>\n","post_excerpt":"If you hire your project for me, I will do it with 100% accuracy.","post_author":"49","post_status":"complete","ID":1112,"post_type":"bid","comment_count":"","guid":"https:\/\/freelanceengine.enginethemes.com\/bid\/1112\/","status_text":"","post_date":"September 7, 2016","address":"","avatar":"","post_count":"","et_featured":"","et_expired_date":"2 years left for bidding","bid_budget":"$700.00","dealine":"","accepted":"trash","bid_time":"40","type_time":"day","id":1112,"permalink":"https:\/\/freelanceengine.enginethemes.com\/bid\/1112\/","unfiltered_content":"If you hire your project for me, I will do it with 100% accuracy.","the_post_thumnail":"","featured_image":"","the_post_thumbnail":"","et_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/08\/Martin-Harvey.jpg' class='avatar avatar-70 photo avatar-default' height='70' width='70' \/>","author_url":"https:\/\/freelanceengine.enginethemes.com\/author\/martinharvey\/","rating_score":4.5,"button_message":"            <button\n                    class=\"btn btn-link btn-send-msg btn-redirect-msg\"\n                   title=\"\"\n                    data-conversation=\"\">\n                <i class=\"fa fa-comment\"><\/i><span>Message<\/span>\n            <\/button>\n    ","et_professional_title":"Programing &amp; Development","experience":"11","profile_display":"Martin Harvey","bid_time_text":"in 40 days","bid_budget_text":"$700.00","project_author_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/08\/Varnava-Nikolaev.jpg' class='avatar avatar-30 photo avatar-default' height='30' width='30' \/>","project_link":"https:\/\/freelanceengine.enginethemes.com\/project\/build-a-website-for-a-print-shop__trashed\/","project_title":"Build a Website for a Print Shop","project_status":"trash","project_status_view":"Completed","total_projects_worked":"3","project_id":947,"project_author":50,"author_country":"UK","project_accepted":"1112","review_link":"https:\/\/freelanceengine.enginethemes.com\/project\/build-a-website-for-a-print-shop__trashed\/?review=1","project_workspace_link":"https:\/\/freelanceengine.enginethemes.com\/project\/build-a-website-for-a-print-shop__trashed\/?workspace=1","project_status_text":"Job is trash","project_comment":"","project_post_date":"September 6, 2016","et_budget":"$732.00","total_bids":"1","bid_average":"$700.00","is_admin":0,"current_user":49,"add_class_bid":"bid_unaccepted bid_hide ","flag":0}]</script>
                                                                                                                                        </div>
                                    </div>
                                                                                                                </div>
                            </div>
                            <div class="fre-paginations paginations-wrapper">
                                <div class="paginations">
                                                                            <script type="application/json" class="ae_query">{"post_type":"bid","post_status":["complete","disputed"],"orderby":"date","place_category":"","location":"","showposts":"","order":"DESC","author":49,"accepted":1,"is_author":false,"suppress_filters":true,"paginate":"page"}</script>                                    </div>
                            </div>
                                                                                        </div>
						                    
                    
                    
                    </div>
                </div>
            </div>
        </div>
    </div>

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/Modified/main.js"></script>


    </body>
</html>