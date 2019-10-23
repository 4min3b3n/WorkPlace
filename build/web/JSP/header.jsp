<%@ page pageEncoding="UTF-8" %>
<header class="fre-header-wrapper" id="fre-hamburger-menu">
    <div class="fre-header-wrap" id="main_header">
        <div class="container">
            
            <div class="fre-site-logo">
                <a href="./">
                    <img alt="" src="./IMG/logo-fre.png">                
                </a>
                
                <div class="fre-hamburger">
                    <span class="hamburger-menu">
                        <div class="hamburger hamburger--elastic" id="hamburger" tabindex="0" aria-label="Menu" role="button" aria-controls="navigation">
                            <div class="hamburger-box">
                                <div class="hamburger-inner"></div>
                            </div>
                        </div>
                    </span>
                </div>
           
            </div>

                <div class="fre-search-wrap">
                    <form class="fre-form-search" action="#" method="post">
                        <div class="fre-search dropdown">                         
                            <input class="fre-search-field" name="keyword" value="" type="text" placeholder="Find Freelancers">
                            <ul class="dropdown-menu fre-search-dropdown">
                                <li><a class="active">Find Freelancers</a>
                                </li>
                                <li><a class="">Find Projects</a>
                                </li>
                            </ul>
                        </div>
                    </form>
                </div>

                <div class="fre-menu-top">
                    <ul class="fre-menu-main">
  
                            <%  if (session.getAttribute("connected") != null && ((Boolean) session.getAttribute("connected").equals(true))) {
                                    if (session.getAttribute("role").equals("freelancer")) {        
                            %>
                            
                                    <li class="fre-menu-freelancer dropdown-empty">
                                        <a href="my-projects">MY PROJECT</a>
                                    </li>
                                    
                                    <li class="fre-menu-employer dropdown-empty">
                                        <a href="projects">PROJECTS</a>
                                    </li>   
                                    
                            <%
                                    } else if (session.getAttribute("role").equals("employer")) {
                            %>
                                    
                                    <li class="fre-menu-employer dropdown">
                                        <a>PROJECTS</a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="my-projects">All Projects Posted</a>
                                            </li>
                                            <li>
                                                <a href="post">Post a Project</a>
                                            </li>
                                        </ul>
                                    </li>
                                        
                                    <li class="fre-menu-employer dropdown-empty">
                                        <a href="profiles">FREELANCERS</a>
                                    </li>
                            
                            <%
                                    }

                                } else {       
                            %>
                                <li class="fre-menu-freelancer dropdown">
                                    <a>FREELANCERS</a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="register?role=freelancer">Find Projects</a>
                                        </li>
                                        <li>
                                            <a href="register?role=freelancer">Create Profile</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="fre-menu-employer dropdown">
                                    <a>EMPLOYERS</a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="register?role=employer">Post a Project</a>
                                        </li>
                                        <li>
                                            <a href="register?role=employer">Find Freelancers</a>
                                        </li>
                                    </ul>
                                </li>
                                
                            <%
                                }
                            %>
                            
                    </ul>                            
                </div>
                
                <%       
                    
                if (session.getAttribute("connected") != null && ((Boolean) session.getAttribute("connected") == true)) { 
                    
                %>
                        
                <div class="fre-account-wrap dropdown">
                    <a class="fre-notification dropdown-toggle" data-toggle="dropdown" href="">
                        <i class="fa fa-bell-o" aria-hidden="true"></i>
                    </a>
					
                    <ul class="list_notify dropdown-menu dropdown-menu-notifi dropdown-keep-open notification-list">
                        <li style="text-align: center;">
                            <a class="view-more-notify" href="">See all notifications</a>
                        </li>
                    </ul>
                    
                    <%-- NEED TO CHANGE --%>
                    <div class="fre-account dropdown" id="drop-button">
                        
                        <div class="fre-account-info dropdown-toggle" aria-expanded="false">
                            <a href="logout">
                                <img alt="" src="${sessionScope.user.photo}" class="avatar avatar-96 photo avatar-default" height="96" width="96">                            
                                <span> ${sessionScope.user.firstName} </span>
                            </a>
                                                        
                        </div>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="profile">My Profile</a>
                            </li>				        
                            <li>
                                <a href="">My Credit</a>
                            </li>
                            <li>
                                <a href="inbox">Inbox</a>
                            </li>     
                            <li>
                                <a href="logout">Logout</a>
                            </li>
                        </ul>
                    </div>
                    
                    
                </div>
                
                <%  } else {  %>   
                
                    <div class="fre-account-wrap">
                        <div class="fre-login-wrap">
                            <ul class="fre-login">
                                <li>
                                    <a href="login">LOGIN</a>
                                </li>
                                <li>
                                    <a href="register">SIGN UP</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                <%  }     %>

    	</div>
    </div>
</header>
