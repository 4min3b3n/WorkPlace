<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class="js csstransitions">
    
<% 
    session = request.getSession(false);
        
    if(session.getAttribute("connected") != null && session.getAttribute("connected").equals(true)) {
        response.sendRedirect("home");
    } 
%>

<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="home page-template page-template-page-home-new page-template-page-home-new-php page page-id-1617 two-column right-sidebar">

    <jsp:include page="JSP/header.jsp"></jsp:include>

    <%-- First Section --%>
    <div class="fre-background" id="background_banner" style="background-image: url('./IMG/fre-bg.png');">
        <div class="fre-bg-content">
            <div class="container">
                <h1 id="title_banner">Find perfect freelancers for your projects or Look for freelance jobs online?</h1>
                <a class="fre-btn primary-bg-color" href="register?role=employer">Hire Freelancer</a>
                <a class="fre-btn primary-bg-color" href="register?role=freelancer">Apply as Freelancer</a>	
            </div>
        </div>
    </div>

    <div class="fre-how-work">
        <div class="container">
            <h2 id="title_work">How WorkPlace works?</h2>
            <div class="row">			
                <div class="col-lg-3 col-sm-6">				
                    <div class="fre-work-block">					
                        <span>						
                            <img src="./IMG/1.png" id="img_work_1" alt="">					
                        </span>					
                        <p id="desc_work_1">Post projects to tell us what you need done</p>				
                    </div>			
                </div>			
                <div class="col-lg-3 col-sm-6">				
                    <div class="fre-work-block">					
                        <span>						
                            <img src="./IMG/2.png" id="img_work_2" alt="">					
                        </span>					
                        <p id="desc_work_2">Browse profiles, reviews, then hire your most favorite and start project</p>				
                    </div>			
                </div>			
                <div class="col-lg-3 col-sm-6">				
                    <div class="fre-work-block">					
                        <span>						
                            <img src="./IMG/3.png" id="img_work_3" alt="">					
                        </span>					
                        <p id="desc_work_3">Use FreelanceEngine platform to chat and share files</p>				
                    </div>			
                </div>			
                <div class="col-lg-3 col-sm-6">				
                    <div class="fre-work-block">					
                        <span>						
                            <img src="./IMG/4.png" id="img_work_4" alt="">					
                        </span>					
                        <p id="desc_work_4">With our protection, money is only paid for work you authorize</p>				
                    </div>			
                </div>		
            </div>	
        </div>
    </div>

    <%--
    <div class="fre-perfect-freelancer">
        <div class="container">
            <h2 id="title_freelance">Find perfect freelancers for your projects</h2>

            <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="fre-freelancer-wrap">
                                    <a class="free-avatar" href="h#">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Duc-Nguyen.jpg" class="avatar avatar-70 photo avatar-default" height="70" width="70">						</a>
                                    <h2><a href="#">Duc Nguyen</a></h2>
                                    <p class="secondary-color">Full-stack developer</p>
                                    <div class="free-rating rate-it" data-score="4.833333333333333" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star star-on-png" title="good"></i><input name="score" type="hidden" value="4.833333333333333" readonly=""></div>
                                                                                            <div class="free-hourly-rate">
                                                    <span>$47.00</span>/hr							</div>
                                                                                    <div class="free-experience">
                                            <span>6 years experience</span>
                                            <span>3 projects worked</span>
                                    </div>
                                    <div class="free-skill">
                                    <span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=c-programming">C# Programming</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=ios">IOS</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=javascript">Javascript</a></span>						</div>
                                </div>
                            </div>
                                            <div class="col-lg-6 col-md-12">
                                            <div class="fre-freelancer-wrap">
                                                    <a class="free-avatar" href="https://freelanceengine.enginethemes.com/author/martinharvey/">
                                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Martin-Harvey.jpg" class="avatar avatar-70 photo avatar-default" height="70" width="70">						</a>
                                                    <h2><a href="https://freelanceengine.enginethemes.com/author/martinharvey/">Martin Harvey</a></h2>
                                                    <p class="secondary-color">Programing &amp; Development</p>
                                                    <div class="free-rating rate-it" data-score="4.666666666666667" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i><input name="score" type="hidden" value="4.666666666666667" readonly=""></div>
                                                                                                            <div class="free-hourly-rate">
                                                                    <span>$30.00</span>/hr							</div>
                                                                                                    <div class="free-experience">
                                                            <span>11 years experience</span>
                                                            <span>3 projects worked</span>
                                                    </div>
                                                    <div class="free-skill">
                                                    <span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=net-framework">.NET Framework</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=3d-modeling-cad">3D Modeling &amp; CAD</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=wordpress">WordPress</a></span>						</div>
                                            </div>
                                    </div>
                                            <div class="col-lg-6 col-md-12">
                                            <div class="fre-freelancer-wrap">
                                                    <a class="free-avatar" href="https://freelanceengine.enginethemes.com/author/fadilaahmed/">
                                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/09/Fadila-Ahmed.jpg" class="avatar avatar-70 photo avatar-default" height="70" width="70">						</a>
                                                    <h2><a href="https://freelanceengine.enginethemes.com/author/fadilaahmed/">Fadila Ahmed</a></h2>
                                                    <p class="secondary-color">Content Writer</p>
                                                    <div class="free-rating rate-it" data-score="4.5" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i><input name="score" type="hidden" value="4.5" readonly=""></div>
                                                                                                            <div class="free-hourly-rate">
                                                                    <span>$22.00</span>/hr							</div>
                                                                                                    <div class="free-experience">
                                                            <span>4 years experience</span>
                                                            <span>1 project worked</span>
                                                    </div>
                                                    <div class="free-skill">
                                                    <span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=article-rewriting">Article Rewriting</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=content-writing">Content Writing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=copy-writting">Copy Writting</a></span>						</div>
                                            </div>
                                    </div>
                                            <div class="col-lg-6 col-md-12">
                                            <div class="fre-freelancer-wrap">
                                                    <a class="free-avatar" href="https://freelanceengine.enginethemes.com/author/taikiyamada/">
                                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Taiki-Yamada-1.jpg" class="avatar avatar-70 photo avatar-default" height="70" width="70">						</a>
                                                    <h2><a href="https://freelanceengine.enginethemes.com/author/taikiyamada/">Taiki Yamada</a></h2>
                                                    <p class="secondary-color">Graphic Designer</p>
                                                    <div class="free-rating rate-it" data-score="4" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="good"></i><input name="score" type="hidden" value="4" readonly=""></div>
                                                                                                            <div class="free-hourly-rate">
                                                                    <span>$20.00</span>/hr							</div>
                                                                                                    <div class="free-experience">
                                                            <span>1 year experience</span>
                                                            <span>1 project worked</span>
                                                    </div>
                                                    <div class="free-skill">
                                                    <span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=3d-modelling">3D Modelling</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=animation">Animation</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/profiles/?skill_profile=illustration">Illustration</a></span>						</div>
                                            </div>
                                    </div>
            </div>		<div class="fre-perfect-freelancer-more">
                            <a class="fre-btn-o primary-color" href="https://freelanceengine.enginethemes.com/profiles/">See all freelancers</a>
                    </div>
            </div>
    </div>
    --%>
    
    <div class="fre-jobs-online">		
        <div class="container">
            <h2 id="title_project">Browse numerous freelance jobs online</h2>
            <ul class="fre-jobs-list">
                <li>	
                    <div class="jobs-title">				
                        <p>WordPress Plugins For Gravatars, Authors and Tweets</p>
                    </div>				
                    <div class="jobs-date">			
                        <p>October 26, 2016</p>
                    </div>
                    <div class="jobs-price">		
                        <p>$244.00</p>
                    </div>	
                    <div class="jobs-view">		
                        <a href="#">View details</a>
                    </div>
                </li>	
                <li>			
                    <div class="jobs-title">				
                        <p>Dubai &amp; Gulf Blog Articles</p>
                    </div>
                    <div class="jobs-date">		
                        <p>October 26, 2016</p>
                    </div>
                    <div class="jobs-price">			
                        <p>$25.00</p>			
                    </div>		
                    <div class="jobs-view">
                        <a href="#">View details</a>
                    </div>
                </li>

                <li>
                    <div class="jobs-title">
                        <p>Wanted: Human Resource Manager for Interview</p>
                    </div>
                    <div class="jobs-date">
                        <p>October 26, 2016</p>
                    </div>
                    <div class="jobs-price">
                        <p>$50.00</p>
                    </div>
                    <div class="jobs-view">
                        <a href="#">View details</a>
                    </div>
                </li>
                
                <li>
                    <div class="jobs-title">
                        <p>Product Description Writer Needed Immediately</p>
                    </div>
                    <div class="jobs-date">
                        <p>October 26, 2016</p>
                    </div>
                    <div class="jobs-price">
                        <p>$45.00</p>
                    </div>
                    <div class="jobs-view">
                        <a href="#">View details</a>
                    </div>
                </li>
                <li>
                    <div class="jobs-title">
                        <p>Modern Looking Logo</p>
                    </div>
                    <div class="jobs-date">
                        <p>October 26, 2016</p>
                    </div>
                    <div class="jobs-price">
                        <p>$10.00</p>
                    </div>
                    <div class="jobs-view">
                        <a href="#">View details</a>
                    </div>
                </li>
                <li>
                    <div class="jobs-title">
                        <p>Search Engine Optimization &amp; Some Posting- Revised Scope</p>
                    </div>
                    <div class="jobs-date">
                        <p>October 26, 2016</p>
                    </div>
                    <div class="jobs-price">
                        <p>$75.00</p>
                    </div>
                    <div class="jobs-view">
                        <a href="#">View details</a>
                    </div>
                </li>
            </ul>
            <div class="fre-jobs-online-more">
                <a class="fre-btn-o primary-color" href="#">See all jobs</a>
            </div>	
        </div>
    </div>

    <div class="fre-service">    
        <div class="container">
            <h2 id="title_service">Select the level of service you need for project posting</h2>
            <div class="fre-service-content">
                <div class="row">
                    <div class="col-md-1 hidden-sm"></div>
                        <div class="col-md-10">
                            <div class="row fre-service-package-list">
                                <div class="col-md-4 col-sm-6">
                                    <div class="fre-service-pricing">
                                        <div class="service-price">
                                            <h2>FREE</h2> 
                                            <p>Unlimited</p>										
                                        </div>
                                        <div class="service-info">
                                            <h3>Freelancer</h3>
                                            <p></p>
                                            <p>You have 3 bid and one free project to work on. You can upgrade for more.</p>
                                            <p></p>			
                                        </div>
                                        <a class="fre-service-btn primary-color-hover" href="register?role=freelancer">Sign Up</a>           									
                                    </div>					
                                </div> 								
                                <div class="col-md-4 col-sm-6">					
                                    <div class="fre-service-pricing">						
                                        <div class="service-price">
                                            <h2><sup>$</sup>5</h2> 
                                            <p> for 30 days</p>										
                                        </div>					
                                        <div class="service-info">						
                                            <h3>Employer</h3>
                                            <p></p>
                                            <p>This plan includes 5 projects. Each project will be displayed as normal for 30 days.</p>
                                            <p></p>
                                        </div>
                                        <a class="fre-service-btn primary-color-hover" href="register?role=employer">Sign Up</a>
                                    </div>					
                                </div> 								 
                                <div class="col-md-4 col-sm-6">					
                                    <div class="fre-service-pricing">						
                                        <div class="service-price">
                                            <h2><sup>$</sup>10</h2> 
                                            <p> for 30 days</p>										
                                        </div>					
                                        <div class="service-info">						
                                            <h3>Enterprise</h3>
                                            <p></p>
                                            <p>This plan includes 10 projects. Each project will be displayed as featured for 30 days.</p>
                                            <p></p>
                                        </div>
                                        <a class="fre-service-btn primary-color-hover" href="register?role=employer">Sign Up</a>
                                    </div>					
                                </div>  
                            </div>
                        <div class="col-md-1 hidden-sm"></div>
                        </div>
                </div>		
            </div>
        </div>
    </div>
    
    <div class="fre-get-started">
        <div class="container">
            <div class="get-started-content">
                <h2 id="title_start">Need work done? Join WorkPlace community!</h2>
                <a class="fre-btn fre-btn primary-bg-color" href="register">Get Started</a>			
            </div>
        </div>
    </div>

    <jsp:include page="JSP/footer.jsp"></jsp:include>

    <jsp:include page="JSP/copyright.jsp"></jsp:include>

    <script src="./JS/Modified/index.js"></script>

    </body>
    
</html>