<%--  for (Bid bid: bids) {  --%>
                        
                            <div class="row freelancer-bidding-item">

                                <%  if (project.getOwnerID().equals(userID)) {   %>

                                    <div class="col-md-8">
                                        <div class="row">
                                            <div class="col-md-8 col-sm-12">
                                                <div class="col-free-bidding">
                                                    <a class="free-bidding-avatar" href="./profile?id=<%---- bid.getFreelancerID() ----%>">                        
                                                        <img alt="" src="<%---- bid.getPhoto()  --%>" class="avatar avatar-70 photo avatar-default" height="70" width="70">                    
                                                    </a>
                                                    <h2>
                                                        <a href="./profile?id=<%-- bid.getFreelancerID() --%>"><%-- bid.getFreelancerName() --%> Firstname</a>
                                                    </h2>
                                                    <p><%-- bid.getHeadline() --%>Headline</p>
                                                    <p><%-- bid.getCountry() --%>Country</p>
                                                </div> 
                                                
                                            </div>
                                            <div class="col-md-4 col-sm-12"> 	                
                                                <div class="col-free-reputation">
                                                    <span class="rate-it" data-score="" title="good">
                                                        <div class="rate-it" data-score="<%---- bid.getReview() ----%>" title="">
                                                        <%----
                                                            Float review = bid.getReview();
                                                            for(int i = 1; i < 6; i++) {
                                                                if (review >= 1) {
                                                                    --%>     <i data-alt="<%--=i--%>" class="fa fa-star star-on-png" title="good"></i>&nbsp; <%--   
                                                                } else if (review == 0.5) {
                                                                    --%>     <i data-alt="<%--=i--%>" class="fa fa-star-half-o star-half-png" title="good"></i>&nbsp; <%--   
                                                                } else {
                                                                    --%>     <i data-alt="<%--=i--%>" class="fa fa-star-o star-off-png" title="good"></i>&nbsp; <%--  
                                                                }
                                                                review--;
                                                            }   --%>

                                                        </div>
                                                    </span>
                                                    <p><%---- bid.getYearsExperience() --%> year(s) experience</p>
                                                    <p><%---- bid.getProjectWorked()--%> project(s) worked</p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="col-free-bid">
                                            <p class="hidden-lg hidden-md hidden-sm">Bid</p>
                                            <p><b>$<%--= bid.getBid() --%></b></p>
                                            <p>in <%--= bid.getDelivery()--%> days</p>      
                                        </div>
                                        <%---- WINNER BID 
                                        <div class="free-ribbon visible-xs">
                                            <span class="ribbon">
                                                <i class="fa fa-trophy"></i>
                                            </span>
                                        </div>
                                        --%>
                                    </div>

                                    <%-- if (bid.getStatus().equals("Pending")) { --%>
                                        <div class="col-md-2 col-xs-12" style="padding-block-start: 30px;">
                                            <div class="">
                                                <a class="fre-action-btn  project-action" onmouseover="this.style.background='#FFF';this.style.color='#1fbdbd';" onmouseout="this.style.background='#1fbdbd';this.style.color='#fff';" style="border-color: #1fbdbd;background-color: #1fbdbd;color: #ffffff;margin-bottom: 10px;">Accept</a>  
                                                <a class="fre-action-btn  project-action" onmouseover="this.style.background='#bd1f1f';this.style.color='#ffffff';this.style.borderColor='#bd1f1f'" onmouseout="this.style.background='#ffffff';this.style.color='';this.style.borderColor=''" style="margin-bottom: 10px;">Refuse</a>
                                            </div> 
                                        </div>
                                    <%--%> } else if (bid.getStatus().equals("Refused")) { --%>
                                        <div class="col-md-2 col-xs-12" style="padding-block-start: 60px;">
                                            <div class="">    
                                                <div class="fre-action-btn  project-action" style="margin-bottom: 10px;background: #bd1f1f; color: #ffffff; border-color: #bd1f1f; cursor: unset;">
                                                    Refused
                                                </div>
                                            </div> 
                                        </div>
                                    <%--%> } --%>

                                    <div class="col-md-8 col-sm-12">
                                        <div class="col-content-bid col-content-bid-1230">
                                        <p><%--%>= bid.getNote() --%></p>
                                        </div>
                                    </div>

                                <%  } else { %>

                                    <div class="col-md-10">
                                        <div class="row">
                                            <div class="col-md-8 col-sm-12">
                                                <div class="col-free-bidding">
                                                    <a class="free-bidding-avatar" href="./profile?id=<%--= bid.getFreelancerID() --%>">                        
                                                        <img alt="" src="<%---- bid.getPhoto() ----%>" class="avatar avatar-70 photo avatar-default" height="70" width="70">                    
                                                    </a>
                                                    <h2>
                                                        <a href="./profile?id=<%---- bid.getFreelancerID() ----%>"><%---- bid.getFreelancerName() ----%></a>
                                                    </h2>
                                                    <p><%---- bid.getHeadline() ----%></p>
                                                    <p><%---- bid.getCountry() ----%></p>
                                                </div> 
                                                <%----
                                                <div class="free-ribbon hidden-xs">
                                                    <span class="ribbon">
                                                        <i class="fa fa-trophy"></i>
                                                    </span>
                                                </div>      
                                                ----%>
                                            </div>
                                            <div class="col-md-4 col-sm-12"> 	                
                                                <div class="col-free-reputation">
                                                    <span class="rate-it" data-score="" title="good">
                                                        <div class="rate-it" data-score="<%---- bid.getReview() ----%>" title="">
                                                        <%----
                                                            Float review = bid.getReview();
                                                            for(int i = 1; i < 6; i++) {
                                                                if (review >= 1) {
                                                                    --%>     <i data-alt="<%--=i--%>" class="fa fa-star star-on-png" title="good"></i>&nbsp; <%--   
                                                                } else if (review == 0.5) {
                                                                    --%>     <i data-alt="<%--=i--%>" class="fa fa-star-half-o star-half-png" title="good"></i>&nbsp; <%--   
                                                                } else {
                                                                    --%>     <i data-alt="<%--=i--%>" class="fa fa-star-o star-off-png" title="good"></i>&nbsp; <%--  
                                                                }
                                                                review--;
                                                            }   
                                                        --%>
                                                        </div>
                                                    </span>
                                                    <p><%---- bid.getYearsExperience() --%> year(s) experience</p>
                                                    <p><%---- bid.getProjectWorked() --%> project(s) worked</p>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="col-free-bid">
                                            <p class="hidden-lg hidden-md hidden-sm">Bid</p>
                                            <p><b>$<%-- bid.getBid() --%></b></p>
                                            <p>in <%-- bid.getDelivery()--%> days</p>         
                                        </div>
                                        <%---- WINNER BID 
                                        <div class="free-ribbon visible-xs">
                                            <span class="ribbon">
                                                <i class="fa fa-trophy"></i>
                                            </span>
                                        </div>
                                        --%>
                                    </div>

                                    <div class="col-md-7 col-sm-12">
                                        <div class="col-content-bid col-content-bid-1230">
                                            <p><%-- bid.getNote() --%></p>
                                        </div>
                                    </div>

                            <%  }   %>

                        <%-- } --%>
                        </div>
                    
                            
                                        
                                        
                                                    
                                        
                               
                        
                        
                        

                                
                                
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/ducnguyen/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Duc-Nguyen.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/ducnguyen/">Duc Nguyen</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Full-stack developer</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="4.833333333333333" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star star-on-png" title="good"></i><input name="score" type="hidden" value="4.833333333333333" readonly=""></span>
                                                <span>6 years experience</span>
                                                <span>3 projects worked</span>

                                                <span><b>$47.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>Hi, I?m Duc Nguyen. As a full-stack developer since 2012, I have a lot of experience in web applications and programming languages such as HTML, JavaScript, jQuery, CSS and API?s. Besides, I also have a thorough knowledge about web services (REST, SOAP, etc.). So, I can get done most of complex and &nbsp;interesting projects.</p> <p>If you hire your project for me, I will do it with 100% accuracy.</p>            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/morganmelvin/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Morgan-Melvin-1.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/morganmelvin/">Morgan Melvin</a>
                                        </h2>
                                        <p class="profile-list-subtitle">SEO Specialist</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="3.5" title="nice"><i data-alt="1" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="4" class="fa fa-star-half-o star-half-png" title="nice"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="nice"></i><input name="score" type="hidden" value="3.5" readonly=""></span>
                                                <span>2 years experience</span>
                                                <span>1 project worked</span>

                                                <span><b>$45.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>As a marketing executive with more than 2 years of work experience. I have a strong marketing insight and strategy background which help you promote your &nbsp;product, service or brand. In addition, I can be &nbsp;responsible for managing all SEO activities to help your website get higher ranking on search engines and drive high-quality traffic as well as &nbsp;manage all search engine advertising such as Google, Yahoo and Bing.</p> <p>Your success is my success and I look forward to providing?            </p></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/taikiyamada/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Taiki-Yamada-1.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/taikiyamada/">Taiki Yamada</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Graphic Designer</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="4" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="good"></i><input name="score" type="hidden" value="4" readonly=""></span>
                                                <span>1 year experience</span>
                                                <span>1 project worked</span>

                                                <span><b>$20.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>Hi, I?m Taiki. I have been working as a graphic design. I really love what I do. Whenever you need a logo design, 3D modelling or illustration, get in touch me.</p> <p>I can handle both large and small projects effectively!</p>            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/marindairvin/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Marinda-Irvin.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/marindairvin/">Marinda</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Web &amp; Graphic Designer</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="3" title="nice"><i data-alt="1" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="4" class="fa fa-star-o off star-off-png" title="nice"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="nice"></i><input name="score" type="hidden" value="3" readonly=""></span>
                                                <span>6 years experience</span>
                                                <span>1 project worked</span>

                                                <span><b>$25.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>UX/UI Designer with more than 5 years experience. I?m focusing on beautiful human-centered design, interaction design for website and app.</p> <p>When you choose me as your designer, you can be sure that you?ll receive more than your expectation!</p>            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/fadilaahmed/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/09/Fadila-Ahmed.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/fadilaahmed/">Fadila Ahmed</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Content Writer</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="4.5" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i><input name="score" type="hidden" value="4.5" readonly=""></span>
                                                <span>4 years experience</span>
                                                <span>1 project worked</span>

                                                <span><b>$22.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>Hi, I?m a dedicated freelance writer who loves to write on magazines and websites. I have experienced as a copywriter for over 3 years in a Web Development &amp; Design agency. So, I have a deep knowledge of standard writing practices that is necessary for Web content writers.</p> <p>I can produce a wide variety of content for website from articles to copywriting. Whether you need content for your blog, product descriptions, or newsletters, I can work it well with high?            </p></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/louisgiles/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Louis-Giles.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/louisgiles/">Louis Giles</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Human Resource Managers</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="2.5" title="poor"><i data-alt="1" class="fa fa-star star-on-png" title="poor"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="poor"></i>&nbsp;<i data-alt="3" class="fa fa-star-half-o star-half-png" title="poor"></i>&nbsp;<i data-alt="4" class="fa fa-star-o off star-off-png" title="poor"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="poor"></i><input name="score" type="hidden" value="2.5" readonly=""></span>
                                                <span>5 years experience</span>
                                                <span>1 project worked</span>

                                                <span><b>$32.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>Hello, I?m here to help you handle all tasks revolved in Human Resources!</p> <p>With 5 years experiences working as a headhunter, HR executive. I?m offering the best quality available services &nbsp;according to your budget with 24/7 customer support.</p> <p>Get in touch today to discuss how I can help you!</p>            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/hamletavakian/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Hamlet-Avakian.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/hamletavakian/">Hamlet Avakian</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Data Assistant</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="3.5" title="nice"><i data-alt="1" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="nice"></i>&nbsp;<i data-alt="4" class="fa fa-star-half-o star-half-png" title="nice"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="nice"></i><input name="score" type="hidden" value="3.5" readonly=""></span>
                                                <span>8 years experience</span>
                                                <span>1 project worked</span>

                                                <span><b>$28.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>Hello, I?m Hamlets with more than 6 years in data entry, data processing, excel and web scraping.</p> <p>I will help you with related jobs including WordPress contents uploading, Joomla, OpenCart, web research, etc.</p> <p>I am available 8-10 hours a day and create values for you with high-quality work. I really want long term relationship with you, so we can create value.</p> <p>Contact me anytime you want, then I will be there!</p>            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/sofieschermer/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Sofie-Schermer.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/sofieschermer/">Sofie Schermer</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Civil Engineer</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="4" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="good"></i><input name="score" type="hidden" value="4" readonly=""></span>
                                                <span>11 years experience</span>
                                                <span>1 project worked</span>

                                                <span><b>$65.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>Experienced civil engineer and developer skilled in AutoCAD, 3DsMax, and other related software applications. I?m working as a civil &nbsp;engineer for 4 years at &nbsp;MaxHome company which has been ranked in top &nbsp;100 Construction Companies in the world. I am interested in both structural and architectural design.</p> <p>If you need an experience civil engineering to do your project, please contact me!</p>            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="profile-item">
                                    <div class="profile-list-wrap">
                                        <a class="profile-list-avatar" href="https://freelanceengine.enginethemes.com/author/farrellmarlow/">
                                            <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Farrell-Marlow.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        </a>
                                        <h2 class="profile-list-title">
                                            <a href="https://freelanceengine.enginethemes.com/author/farrellmarlow/">Farrell Marlow</a>
                                        </h2>
                                        <p class="profile-list-subtitle">Technical Writer</p>
                                        <div class="profile-list-info">
                                            <div class="profile-list-detail">
                                                <span class="rate-it" data-score="" title="Not rated yet!"><i data-alt="1" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="2" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="3" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="4" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i>&nbsp;<i data-alt="5" class="fa fa-star-o off star-off-png" title="Not rated yet!"></i><input name="score" type="hidden" readonly=""></span>
                                                <span>6 years experience</span>
                                                <span>0 projects worked</span>

                                                <span><b>$23.00</b>/hr</span>
                                                <span style="font-weight: normal">$0 earned</span>
                                            </div>
                                            <div class="profile-list-desc">
                                                    <p>I?m a native English speaker from UK with &nbsp;a solid background in technology and science. I can help you with your technical documentation or content writing projects that suitable for technology professionals as well as for non-technical readers. I have completed over 200 academic related project. Personally, I hold a Master?s Degree of Science at University of Birmingham.</p> <p>I hope you find me perfect for your solutions. Looking for long-term &amp; reliable partnership with my client.</p>            </div>
                                        </div>
                                    </div>
                                </li>                                        
                                                
                                        
                                     
                                            
                                
                            
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                <li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/wanted-human-resource-manager-for-interview/" title="Wanted: Human Resource Manager for Interview">Wanted: Human Resource Manager for Interview</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>1 Bid</span>
			<span>China</span>            <span>$50.00</span>
        </div>
        <div class="project-list-desc">
            <p>Human Resource Manager wanted for interview. Tell me about YOUR experience terminating an employee AFTER using the Performance Management process. You will need to tell me why counselling did not?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=payroll">Payroll</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=recruitment">Recruitment</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>

<li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/product-description-writer-needed-immediately/" title="Product Description Writer Needed Immediately">Product Description Writer Needed Immediately</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>1 Bid</span>
			<span>France</span>            <span>$45.00</span>
        </div>
        <div class="project-list-desc">
            <p>Need experienced writer(s) for product descriptions for website/online store. Total of 60 products. I will give you the manufacturer content, which includes description, features and pictures ? need you to?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=copywriting">Copywriting</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=product-descriptions">Product Descriptions</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=sales-writing">Sales Writing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=writing">Writing</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>

<li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/modern-looking-logo/" title="Modern Looking Logo">Modern Looking Logo</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>2 Bids</span>
			<span>USA</span>            <span>$10.00</span>
        </div>
        <div class="project-list-desc">
            <p>We are looking to update our logo. &nbsp;I will attach all previous versions of our logo. &nbsp;The name of the company is Drug Testing Program Management. &nbsp;We are known by?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=logo-design">Logo Design</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>

<li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/search-engine-optimization-some-posting-revised-scope/" title="Search Engine Optimization &amp; Some Posting- Revised Scope">Search Engine Optimization &amp; Some Posting- Revised Scope</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>0 Bids</span>
			<span>Germany</span>            <span>$75.00</span>
        </div>
        <div class="project-list-desc">
            <p>We are a startup eCommerce store that serves in North America (US &amp; Canada). This is still considered a project and not an ongoing operation that?s why it is a?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=google-marketing">Google Marketing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=seo">SEO</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>

<li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/facebook-marketing-expert-required-2/" title="Facebook Marketing Expert Required">Facebook Marketing Expert Required</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>2 Bids</span>
			<span>Mexico</span>            <span>$30.00</span>
        </div>
        <div class="project-list-desc">
            <p>I need someone to come up with a Facebook marketing strategy for my limited small budget.&nbsp; Would like someone who has proven experience getting results with low budgets. Ideas or?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=branding">Branding</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=content-writing">Content Writing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=facebook-marketing">Facebook Marketing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=social-media">Social Media</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=viral-marketing">Viral Marketing</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>

<li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/design-a-logo/" title="Design a Logo">Design a Logo</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>1 Bid</span>
			<span>UK</span>            <span>$215.00</span>
        </div>
        <div class="project-list-desc">
            <p>I am looking for logos designed for a cafe and healthy workshop space project.&nbsp; The cafe is focused on wholefoods and is founded by Jen Shaw ? Barefoot Kitchens (www.barefootkitchens.com.au)&nbsp;?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=graphic-design">Graphic Design</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=logo-design">Logo Design</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>

<li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/data-cleaner/" title="Data Cleaner">Data Cleaner</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>4 Bids</span>
			<span>Australia</span>            <span>$260.00</span>
        </div>
        <div class="project-list-desc">
            <p>Hello! We are looking for one person who will check our contact database and do everything needed to make it accurate and correct. &nbsp;With 20k records, the task will take?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=data-entry">Data Entry</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=email-handing">Email Handing</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>

<li class="project-item">
    <div class="project-list-wrap">
        <h2 class="project-list-title">
            <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/resume-editor-cover-letter-expert-needed/" title="Resume Editor / Cover Letter Expert Needed!">Resume Editor / Cover Letter Expert Needed!</a>
        </h2>
        <div class="project-list-info">
            <span>Posted October 26, 2016</span>
            <span>1 Bid</span>
			            <span>$75.00</span>
        </div>
        <div class="project-list-desc">
            <p>I am looking for someone to tailor my resume to the jobs I have saved, as well as creating a cover letter if needed. I am totally willing to split?</p>
        </div>
		<div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=content-writing">Content Writing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=cover-letter-writing">Cover Letter Writing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=resume-writing">Resume Writing</a></span></div>        <!-- <div class="project-list-bookmark">
            <a class="fre-bookmark" href="">Bookmark</a>
        </div> -->
    </div>
</li>