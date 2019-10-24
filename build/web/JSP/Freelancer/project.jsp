<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ensias.workplace.model.*"%>
<%@page import="com.ensias.workplace.beans.*" %>
<%@page import="java.util.ArrayList, java.util.Calendar, java.util.Date, java.text.SimpleDateFormat, java.text.DecimalFormat;" %>
<%
    
    Integer projectID = Integer.valueOf(request.getParameter("id"));
    Database database = new Database();
    Project project = database.getProject(projectID);    
    DecimalFormat df = new DecimalFormat("#.##");
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM dd, yyyy");
    Date publishDate = project.getPublishDate();
    Integer userID = (Integer) session.getAttribute("userID");
    ArrayList<Bid> bids = database.getBids(projectID);
    
    Boolean alreadyBid = false;
%>

<%  
    for(Bid bid:bids) {
        if (bid.getFreelancerID().equals(userID)) {
            alreadyBid = true;
        }    
    }
%>
<%-- Freelancer --%>
<div class="fre-page-wrapper">   
    <div class="container">
        
        <div class="fre-project-detail-wrap">
            <div class="project-detail-box">
                <div class="project-detail-info">
                    <div class="row">
                        <div class="col-lg-8 col-md-7">
                            <h1 class="project-detail-title"><%= project.getTitle() %></h1>
                            <ul class="project-bid-info-list">
                                <li>                        
                                    <span>Bids</span>
                                    <span class="secondary-color"><%= project.getNumberBid() %></span>                    
                                </li>
                                <li>
                                    <span>Budget</span>
                                    <span class="secondary-color">
                                        $<%= project.getBudget() %>
                                    </span>
                                </li>
                                <li>
                                    <span>Average Bid</span>
                                    <span class="secondary-color">
                                        $<%= df.format(project.getAverageBid()) %>                        
                                    </span>
                                </li>
                                                                            
                                <li>
                                    <span>Location</span>
                                    <span class="secondary-color"><%= project.getCountry() %></span>
                                </li>                                        
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-5">
                            <p class="project-detail-posted">Posted on <%= formatter.format(publishDate) %></p>
                                <span class="project-detail-status secondary-color">
                                    <%= project.getStatus() %>
                            </span>
                            <%  if(project.getStatus().equals("Active")) { %>
                                    <div class="project-detail-action">
                                        <% if (alreadyBid) { %>
                                            <a class="fre-normal-btn primary-bg-color" href="./resources/cancelBid?pID=<%= projectID %>&fID=<%= userID %>">Cancel</a> 
                                        <% } else { %>
                                            <a class="fre-normal-btn primary-bg-color" href="javascript:bid()">Bid</a>
                                        <% } %>
                                                        
                                    </div>
                            <%  } %>
                        </div>
                    </div>
                </div>
            </div>
                            
            <div class="project-detail-box no-padding">
                <div class="project-detail-desc">
                    <h4>Project Description</h4>
                    <p></p>
                    <p><%= project.getDescription()%></p>
                    <p></p>
                </div>
                <div class="project-detail-extend">
                            
                    <div class="project-detail-about">
                        <h4>Employer Information</h4>            
                        <div class="project-employer-rating">
                            <span class="rate-it" data-score="0" title="Not rated yet!">
                                <i data-alt="1" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                <i data-alt="2" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                <i data-alt="3" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                <i data-alt="4" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                <i data-alt="5" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>
                                <input name="score" type="hidden" readonly=""></span>
                            <span class="">8 project(s) posted</span>
                            <span>hire 0 freelancers</span>                    
                        </div>
                        <div class="project-employer-since">
                            <span>
                            Member since: August 25, 2016                
                            </span>
                        </div>
                    </div>
                </div>
            </div>
                    
            <div id="project-detail-bidding" class="project-detail-box no-padding">
            <div class="freelancer-bidding-head">
                <div class="row">
                    <div class="col-md-10 col-sm-9 col-xs-12">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <div class="col-free-bidding">FREELANCER BIDDING (<%= project.getNumberBid() %>)</div>
                            </div>
                            <div class="col-md-4 hidden-sm hidden-xs">
                                <div class="col-free-reputation">REPUTATION</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-3 hidden-xs">
                        <div class="col-free-bid">BID</div>
                    </div>
                </div>
            </div>

        
                                
            <div class="freelancer-bidding">
                                
                <%  if (project.getNumberBid().equals(0)) { %>
                        
                        <div class="freelancer-bidding-not-found">
                            <div class="row">
                                <div class="col-md-12">
                                    <p> There are no bids yet.</p>
				</div>
                            </div>
                        </div> 
                        
                <%  } %> <%-- else { %>
                
                    <%  for (Bid bid: bids) {       %>
                            <div class="row freelancer-bidding-item">
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-12">
                                            <div class="col-free-bidding">
                                                <a class="free-bidding-avatar" href="./profile?id=<%= bid.getFreelancerID() %>">                        
                                                    <img alt="" src="<%= bid.getPhoto() %>" class="avatar avatar-70 photo avatar-default" height="70" width="70">                    
                                                </a>
                                                <h2>
                                                    <a href="./profile?id=<%= bid.getFreelancerID() %>"><%= bid.getFreelancerName() %></a>
                                                </h2>
                                                <p><%= bid.getHeadline() %></p>
                                                <p><%= bid.getCountry() %></p>
                                            </div> 
                                            
                                            <div class="free-ribbon hidden-xs">
                                                <span class="ribbon">
                                                    <i class="fa fa-trophy"></i>
                                                </span>
                                            </div>      
                                            
                                        </div>
                                        <div class="col-md-4 col-sm-12"> 	                
                                            <div class="col-free-reputation">
                                                <span class="rate-it" data-score="" title="">
                                                    <div class="rate-it" data-score="<%= bid.getReview() %>" title="">
                                                    <%
                                                        Float review = bid.getReview();
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
                                                    </div>
                                                </span>
                                                <p><%= bid.getYearsExperience() %> year(s) experience</p>
                                                <p><%= bid.getProjectWorked() %> project(s) worked</p>
                                            </div> 
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2 col-sm-3 hidden-xs">
                                    <div class="col-free-bid">
                                        <p class="hidden-lg hidden-md hidden-sm">Bid</p>
                                        <p><b>$<%= bid.getBid() %></b></p>
                                        <p>in <%= bid.getDelivery()%> days</p>         
                                    </div>
                                    <%-- WINNER BID 
                                    <div class="free-ribbon visible-xs">
                                        <span class="ribbon">
                                            <i class="fa fa-trophy"></i>
                                        </span>
                                    </div>
                                    --%>
                                </div>

                                <div class="col-md-7 col-sm-12">
                                    <div class="col-content-bid col-content-bid-1230">
                                        <p></p>
                                    </div>
                                </div>  
                
                            </div>
                    <%-- } --%>
                 <%-- } --%>

                          
                </div>
                                
            </div>                    
        </div>
                
    </div>    
</div>
                
<div id="overlay"></div>
<div class="modal fade" id="modal_bid" style="display: none; padding-left: 0px;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button onclick="closeBid();" type="button" class="close" data-dismiss="modal">
                    <i class="fa fa-times"></i>
                </button>
                <h4 class="modal-title">Bid this project</h4>
            </div>
            <div class="modal-body">

                <form role="form" id="bid_form" class="bid-form fre-modal-form" method="post" action="project">

                    <input type="hidden" name="form" value="bid">

                    <div class="fre-input-field">
                        <label class="fre-field-title" for="bid_budget">Your Bid</label>
                        <div class="fre-project-budget">
                            <input type="number" name="bid_budget" id="bid_budget" class="form-control number numberVal" min="0">
                            <span>$</span>
                        </div>                                                
                    </div>

                    <div class="fre-input-field">
                        <label class="fre-field-title" for="bid_time">Delivery</label>
                        <div class="row">
                            <div class="col-md-9 col-sm-8 col-xs-6">
                                <input type="number" name="bid_time" id="bid_time" class="form-control number numberVal" min="1">
                            </div>
                            <div class="col-md-3 col-sm-4 col-xs-6 no-padding-left">
                                
                                <div class="chosen-container chosen-container-single fre-chosen-single chosen-container-active" title="" style="width: 100%;">
                                    <a class="chosen-single">
                                        <span>days</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="fre-input-field no-margin-bottom">
                        <label class="fre-field-title" for="post_content">Add Notes</label>
                        <textarea id="bid_content" name="bid_content"></textarea>
                    </div>

                    <input type="hidden" name="projectID" value="<%= projectID %>">
                    <input type="hidden" name="freelancerID" value="<%= userID %>">

                    <div class="fre-form-btn">
                        <button type="submit" class="fre-normal-btn btn-submit">Submit</button>
                        <span class="fre-form-close" data-dismiss="modal"><a href="javascript:closeBid()">Cancel</a></span>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
                
<script> 
    function bid() {
        document.getElementById("overlay").style.display = "block";
        document.getElementById("modal_bid").style.display = "block";
        document.getElementById("modal_bid").classList.add("in");
        document.getElementById("modal_bid").style.overflow = "scroll";
        document.body.style.overflow = "hidden";
    }

    function closeBid() {
        document.getElementById("overlay").style.display = "none";
        document.getElementById("modal_bid").style.display = "none";
        document.getElementById("modal_bid").classList.remove("in");
        document.body.style.overflow = "auto";
    }
</script>                 