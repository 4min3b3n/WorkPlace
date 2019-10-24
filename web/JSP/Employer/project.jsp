<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ensias.workplace.beans.*"%>
<%@page import="com.ensias.workplace.model.*"%>
<%@page import="java.util.ArrayList, java.util.Calendar, java.util.Date, java.text.SimpleDateFormat, java.text.DecimalFormat;" %>

<%
    Integer userID = (Integer) session.getAttribute("userID");
    Project project = (Project) session.getAttribute("project");
    Employer owner = (Employer) session.getAttribute("owner");
    Database database = (Database) getServletContext().getAttribute("database");
    ArrayList<Bid> bids = database.getBids(project.getProjectID());
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM dd, yyyy");
%>

<div class="fre-page-wrapper">
    <div class="container">
        <div class="fre-project-detail-wrap">		
            
            <div class="project-detail-box">
                <div class="project-detail-info">
                    <div class="row">
                        <div class="col-lg-8 col-md-7">
                            <h1 class="project-detail-title">
                                <%= project.getTitle() %>
                            </h1>
                            <ul class="project-bid-info-list">
                                <li>
                                    <span>Bid</span>
                                    <span class="secondary-color">
                                        
                                        <%= project.getNumberBid() %>
                                    </span>                    
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
                                        $<%= project.getAverageBid() %>                     
                                    </span>
                                </li>		                
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-5">
                            <p class="project-detail-posted">Posted on <%= formatter.format(project.getPublishDate()) %></p>
                            <span class="project-detail-status secondary-color">
                                <%= project.getStatus() %>
                            </span>
                            <div class="project-detail-action">
                                <%  if (!userID.equals(project.getOwnerID())) { %>
                                        <a href="./post" class="fre-normal-btn primary-bg-color">Post Project Like This</a>
                                <%  } %> 
                                
                            </div>
                        </div>
                    </div>
                </div>             
            </div>
                    
            <div class="project-detail-box no-padding">
                <div class="project-detail-desc">
                    <h4>Project Description</h4>
                        <p></p>
                        <p><%= project.getDescription() %></p>
                        <p></p>		    
                </div>
                        
                <%  if (!userID.equals(project.getOwnerID())) { %>
                <div class="project-detail-box">
                    <div class="project-detail-about">
                        <h4>Employer Information</h4>            
                        <div class="project-employer-rating">
                            <span class="rate-it" data-score="4.5" title="good">
                                <i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                <i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                <i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                <i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                <i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i>
                                <input name="score" type="hidden" value="4.5" readonly="">
                            </span>
                            <span class=""><%= owner.getProjectPosted() %> project(s) posted</span>
                            <span>hire <%= owner.getHiredFreelancers()%> freelancers</span>
                            <span><%= owner.getCountry()%></span>            
                        </div>
                        <div class="project-employer-since">
                            <span>
                                Member since: September 1, 2016                
                            </span>
                        </div>
                    </div>
                </div>
                <%  }   %>
            </div>
                                          
            <div id="project-detail-bidding" class="project-detail-box no-padding">
                
                <div class="freelancer-bidding-head">
                    <div class="row">
                        <%  if (!userID.equals(project.getOwnerID())) { %>
                            <div class="col-md-10">  
                        <%  } else { %>
                            <div class="col-md-8">
                        <%  } %> 

                                <div class="row">
                                    <div class="col-md-8 col-sm-12">
                                        <div class="col-free-bidding">FREELANCER BIDDING (<%=  project.getNumberBid() %>)</div>
                                    </div>
                                    <div class="col-md-4 hidden-sm hidden-xs">
                                        <div class="col-free-reputation">REPUTATION</div>
                                    </div>
                                </div>
                            </div>
                        <%  if (project.getOwnerID().equals(userID)) { %>
                        
                            <div class="col-md-2">
                                <div class="col-free-bid">BID</div>
                            </div>
                            <div class="col-md-2">
                                <div class="col-free-bid">ACTION</div>
                            </div>
                        <%  } else { %>
                        
                            <div class="col-md-2">
                                <div class="col-free-bid">BID</div>
                            </div>
                        
                        <%  } %>
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

                    <%  } else { %>
                    
                        <%  if (project.getOwnerID().equals(userID)) { %>
                            
                            <%  for(Bid bid: bids) { %>
                                <% Freelancer bidder = (Freelancer) bid.getBidder(); %>
                                <div class="row freelancer-bidding-item">
                                    <div class="col-md-10 col-sm-9">
                                        <div class="row">
                                            <div class="col-md-8 col-sm-12">
                                                <div class="col-free-bidding">

                                                    <a class="free-bidding-avatar" href="https://freelanceengine.enginethemes.com/author/morganmartel/">
                                                        <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Morgan-Martel.jpg" class="avatar avatar-70 photo avatar-default" height="70" width="70">                   
                                                    </a>
                                                    <h2>
                                                        <a href="https://freelanceengine.enginethemes.com/author/morganmartel/"><%= bidder.getFirstName() %> <%= bidder.getLastName() %></a>
                                                    </h2>
                                                    <p><%= bidder.getHeadline() %></p>
                                                    <p><%= bidder.getCountry() %></p>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-12">
                                                <div class="col-free-reputation">
                                                    <div class="rate-it" data-score="0" title="Not rated yet!">
                                                        <i data-alt="1" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                                        <i data-alt="2" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                                        <i data-alt="3" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                                        <i data-alt="4" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;
                                                        <i data-alt="5" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>
                                                        <input name="score" type="hidden" readonly=""></div>

                                                    <p>1 year(s) experience</p>
                                                    <p>0 project(s) worked</p>	                
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3">
                                        <div class="col-free-bid">
                                            <p class="hidden-lg hidden-md hidden-sm">Bid</p>
                                            <p><b>$<%= bid.getBid() %></b></p>
                                            <p>in <%= bid.getDelivery() %> days</p>         
                                        </div>
                                    </div>
                                    <div class="col-md-7 col-sm-12">
                                        <div class="col-content-bid col-content-bid-1056">
                                            <p><%= bid.getNote() %></p>
                                        </div>
                                    </div>
                                </div>
                            <%  } %>
                            
                            
                        <%  } %>
                    <% } %>
                    
                </div>
                
            </div>
        </div>
    </div>        
</div>
