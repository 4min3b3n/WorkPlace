<%@page import="com.ensias.workplace.model.*"%>
<%@page import="com.ensias.workplace.beans.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.SimpleDateFormat,java.text.ParseException;" %>

<%
    Database database = new Database();
    ArrayList<Project> myProjects = database.getMyProjects((Integer) session.getAttribute("userID"));
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM dd, yyyy");
%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">

<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="page-template page-template-page-my-project page-template-page-my-project-php page page-id-1654 logged-in two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>

<div class="fre-page-wrapper">

    <div class="fre-page-title">
        <div class="container">
            <h2>My projects</h2>
        </div>
    </div>

    <div class="fre-page-section">
        <div class="container">
            
            <div class="my-work-employer-wrap">
                
                <ul class="fre-tabs nav-tabs-my-work">
                    <li id="current-project-btn" class="active">
                        <a data-toggle="tab" href="javascript:openCurrent()" aria-expanded="true">
                            <span>Current Projects</span>
                        </a>
                    </li>
                    <li id="previous-project-btn" class="next">
                        <a data-toggle="tab" href="javascript:openPrevious()" aria-expanded="false">
                            <span>Previous Projects</span>
                        </a>
                    </li>
                </ul>
                
                <div class="fre-tab-content">
                    
                    <%-- CURRENT PROJECT --%>
                    <div id="current-project-tab" class="employer-current-project-tab fre-panel-tab active">                                                                    
                        <%-- FRAME --%>
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
                                                <select class="fre-chosen-single" name="project_current_status" style="display: none;">
                                                    <option value="">All</option>
                                                    <option value="close">Processing</option>
                                                    <option value="publish">Active</option>
                                                    <option value="pending">Pending</option>
                                                    <option value="archive">Archived</option>
                                                </select>
                                                <div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;">
                                                    <a class="chosen-single">
                                                    <span>All</span>
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
                                    <%-- TODO: --%>
                                    <a class="clear-filter work-project-filter-clear secondary-color" href="javascript:void(0)">Clear all filters</a>
                                </form>

                            </div>
                        </div>
                        
                        <%-- DONE: MODIFIY THE CODE TO BE GENERATED AUTOMATICLY --%>
                        <div class="fre-work-project-box">
                            <div class="current-employer-project">
                                <div class="fre-table">
                                    
                                    <div class="fre-table-head">
                                        <div class="fre-table-col project-title-col">Project Title</div>
                                        <div class="fre-table-col project-bids-col"><%--Number Bids--%></div>
                                        <div class="fre-table-col project-budget-col">Budget</div>
                                        <div class="fre-table-col project-open-col">Open Date</div>
                                        <div class="fre-table-col project-status-col">Status</div>
                                        <div class="fre-table-col project-action-col">Action</div>
                                    </div>

                                    <div class="fre-current-table-rows" style="display: table-row-group;">                                                                                                            
                                        
                                    <%  for (Project project: myProjects) {
                                            
                                            String date = formatter.format(project.getPublishDate());
                                            
                                            if (project.getStatus().equals("Active")) { %>
                                                
                                                <div class="fre-table-row">
                                                    <div class="fre-table-col project-title-col">
                                                        <a class="secondary-color" href="./project?id=<%=project.getProjectID()%>"><%= project.getTitle() %></a>
                                                    </div>
                                                    <div class="fre-table-col project-bids-col">
                                                                                                         
                                                        <span>Bids</span>
                                                    </div>
                                                    <div class="fre-table-col project-budget-col">
                                                        <span>Budget</span>
                                                        $<%= project.getBudget() %>                                                       
                                                    </div>
                                                    <div class="fre-table-col project-open-col">
                                                        <span>Open on</span>
                                                        <%= date %>                                                       
                                                    </div>
                                                    <div class="fre-table-col project-status-col">Active</div>
                                                        <div class="fre-table-col project-action-col">
                                                            <a class="project-action" href="javascript:archiveProject(<%= project.getProjectID() %>)">Archive</a>
                                                        </div>                                                    
                                                </div>
                                        
                                        <%  } else if (project.getStatus().equals("Processing")) { %>
                                                
                                                <div class="fre-table-row">
                                                    <div class="fre-table-col project-title-col">
                                                         <a class="secondary-color" href="./project?id=<%=project.getProjectID()%>"><%= project.getTitle() %></a>            
                                                    </div>
                                                    <div class="fre-table-col project-bids-col">
                                                                                                         
                                                        <span>Bids</span>
                                                    </div>
                                                    <div class="fre-table-col project-budget-col">
                                                        <span>Budget</span>
                                                        $<%= project.getBudget() %>                                                      
                                                    </div>
                                                    <div class="fre-table-col project-open-col">
                                                        <span>Open on</span>
                                                        <%= date %>                                                         
                                                    </div>
                                                    <div class="fre-table-col project-status-col">
                                                        Processing
                                                    </div>
                                                    <div class="fre-table-col project-action-col">
                                                        <a href="./project?id=<%=project.getProjectID()%>">Workspace</a>
                                                    </div>                                                                                                                  
                                                </div>
                                                    
                                        <%  } else if (project.getStatus().equals("Archived")) { %>
                                                
                                                <div class="fre-table-row">
                                                    <div class="fre-table-col project-title-col">
                                                        <a class="secondary-color" href="./project?id=<%=project.getProjectID()%>"><%= project.getTitle() %></a>  
                                                    </div>
                                                    <div class="fre-table-col project-bids-col">
                                                                                                         
                                                        <span>Bids</span>
                                                    </div>
                                                    
                                                    <div class="fre-table-col project-budget-col">
                                                        <span>Budget</span>
                                                        $<%= project.getBudget() %>                                                      
                                                    </div>
                                                    <div class="fre-table-col project-open-col">
                                                        <span>Open on</span>
                                                        <%= date %>                                                       
                                                    </div>
                                                    <div class="fre-table-col project-status-col">Archived</div>                                                        
                                                    <div class="fre-table-col project-action-col project-action-two">
                                                        <a href="./resources/projects?pID=2">Renew</a>
                                                        <a class="project-action" href="javascript:deleteProject(<%= project.getProjectID() %>)">Delete</a>
                                                    </div>                                                    
                                                </div> 
                                                    
                                        <%  } %>
                                    <% }%>
                                    </div> 
                                </div>                                                                          
                            </div>
                        </div>
                    </div>
                          
                    <%-- CURRENT PROJECT --%>    
                    <div id="previous-project-tab" class="employer-previous-project-tab fre-panel-tab">
                                                                                                
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
                                                <%-- JAVASCRIPT --%>
                                                <select class="fre-chosen-single" name="project_previous_status" style="display: none;">
                                                
                                                    <option value="">All</option>
                                                            
                                                    <option value="complete">Completed</option>
                                                    
                                                            
                                                    
                                                    <option value="disputed">Resolved</option>
                                                    
                                                </select>
                                                <div class="chosen-container chosen-container-single fre-chosen-single" title="" style="width: 100%;">
                                                    <a class="chosen-single">
                                                        <span>All</span>
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
                            <div class="previous-employer-project">
                                <div class="fre-table">
                                    <div class="fre-table-head">
                                        <div class="fre-table-col project-title-col">Project Title</div>
                                        <div class="fre-table-col project-start-col">Start Date</div>
                                        <div class="fre-table-col project-bid-col">Bid Won</div>
                                        <div class="fre-table-col project-status-col">Status</div>
                                        <div class="fre-table-col project-review-col">Review</div>
                                    </div>
                                    <div class="fre-previous-table-rows" style="display: table-row-group;">
                                                                                                                                                    
                                        <div class="fre-table-row">
                                        
                                            <div class="fre-table-col project-title-col">
                                            
                                                <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/web-application-dashboard-testing-2/">Web Application (Dashboard) Testing</a>
                                                
                                            </div>
                                            
                                            <div class="fre-table-col project-start-col">September 6, 2016</div>
                                            
                                            <div class="fre-table-col project-bid-col">
                                            
                                                <span>Bid won:</span>
                                                <b>$516.00</b>
                                                <span>in 29 days</span>
                                                
                                            </div>
                                            
                                            <div class="fre-table-col project-status-col">Completed</div>
                                            
                                            <div class="fre-table-col project-review-col">
                                            
                                                <span class="rate-it" data-score="4.5" title="good">
                                                    <i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                                    <i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                                    <i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                                    <i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;
                                                    <i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i>
                                                    <input name="score" type="hidden" value="4.5" readonly="">
                                                </span>
                                                <p></p>
                                                <p>Doris is a pleasure to work with. I'd be more than glad to work with her again in the future!</p>
                                                <p></p>                                         
                                            </div>
                                            
                                        </div>
                                                                                                                                                    
                                        <div class="fre-table-row">
                                            <div class="fre-table-col project-title-col">
                                                <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/senior-uiux-designer/">Senior UI/UX Designer</a>
                                            </div>
                                            <div class="fre-table-col project-start-col">September 6, 2016</div>
                                            <div class="fre-table-col project-bid-col">
                                                <span>Bid won:</span><b>$2,589.00</b><span>in 78 days</span>
                                            </div>
                                            <div class="fre-table-col project-status-col">Resolved</div>
                                            <div class="fre-table-col project-review-col">
                                                <i>No rating &amp; review yet.</i>                                                        
                                            </div>
                                        </div>

                                                                                                                                
                                    </div>
                                </div>                                                                          
                            </div>
                        </div>                                                                              
                    </div>          
                </div>
                 
            </div>
            
        </div>
    </div>     
</div>
    
<div id="overlay"></div>
<div class="modal fade" id="modal_delete_project">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button onclick="closeDeleteProject();" type="button" class="close" data-dismiss="modal">
                    <i class="fa fa-times"></i>
                </button>
                <h4 class="modal-title">Delete project</h4>
            </div>
            <div class="modal-body">
                <form role="form" id="form-delete-project" class="form-delete-project fre-modal-form" method="post" action="my-projects">
                    <input type="hidden" name="form" value="deleteProject">
                    <div class="fre-content-confirm">
                        <h2>Are you sure you want to delete this project?</h2>
                        <p>Once the project is deleted, it will be permanently removed from the site and its information won't be recovered.</p>
                    </div>
                    <input type="hidden" id="project-id" name="project-id" value="">
                    <div class="fre-form-btn">
                        <button type="submit" class="fre-normal-btn btn-submit btn-delete-project">Confirm</button>
                        <span class="fre-form-close" data-dismiss="modal"><a href="javascript:closeDeleteProject()">Cancel</a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modal_archive_project">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button onclick="closeArchiveProject();" type="button" class="close" data-dismiss="modal">
                    <i class="fa fa-times"></i>
                </button>
                <h4 class="modal-title">Archive project</h4>
            </div>
            <div class="modal-body">
                
                <form role="form" id="form-archive-project" class="form-archive-project fre-modal-form" method="post" action="my-projects">
                    <input type="hidden" name="form" value="archiveProject">
                    <div class="fre-content-confirm">
                        <h2>Are you sure you want to archive this project?</h2>
                        <p>Once the project is archived, you can only renew or permanently delete it. In case you renew this project, you have to make the payment.</p>
                    </div>
                    <input type="hidden" name="project-id-archive" id="project-id-archive" value="">
                    <div class="fre-form-btn">
                        <button type="submit" class="fre-normal-btn btn-submit btn-archive-project">Confirm</button>
                        <span class="fre-form-close"><a href="javascript:closeArchiveProject()">Cancel</a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
                                                
<jsp:include page="JSP/footer.jsp"></jsp:include>
<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script>
    
    function openPrevious() {
        document.getElementById("current-project-btn").className = "prev";
        document.getElementById("previous-project-btn").className = "active";
        document.getElementById("current-project-tab").classList.remove("active");
        document.getElementById("previous-project-tab").classList.add("active");
    }
    
    function openCurrent() {
        document.getElementById("current-project-btn").className = "active";
        document.getElementById("previous-project-btn").className = "next";
        document.getElementById("current-project-tab").classList.add("active");
        document.getElementById("previous-project-tab").classList.remove("active");
    }
    
    function deleteProject(projectID) {
        document.getElementById("project-id").value = projectID;
        document.getElementById("modal_delete_project").classList.add("in");
        document.getElementById("modal_delete_project").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    }
    
    function closeDeleteProject() {
        document.getElementById("modal_delete_project").classList.remove("in");
        document.getElementById("modal_delete_project").style.display = "";
        document.getElementById("overlay").style.display = "none";
    }
    
    function archiveProject(projectID) {
        
        document.getElementById("project-id-archive").value = projectID;
        document.getElementById("modal_archive_project").classList.add("in");
        document.getElementById("modal_archive_project").style.display = "block";
        document.getElementById("overlay").style.display = "block";
    }
    
    function closeArchiveProject() {
        document.getElementById("modal_archive_project").classList.remove("in");
        document.getElementById("modal_archive_project").style.display = "";
        document.getElementById("overlay").style.display = "none";
    }
    
</script>

    </body>
</html>