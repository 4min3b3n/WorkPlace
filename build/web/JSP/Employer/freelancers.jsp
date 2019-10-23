<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ensias.workplace.beans.*"%>
<%@page import="com.ensias.workplace.model.*"%>
<%@page import="java.util.ArrayList, java.util.Calendar, java.util.Date, java.text.SimpleDateFormat;" %>
<% ArrayList<Freelancer> freelancers = (ArrayList<Freelancer>) request.getAttribute("freelancers"); %>
<div class="fre-page-wrapper section-archive-profile">

    <div class="fre-page-title">
        <div class="container">
            <h2>Available Profiles</h2>
        </div>
    </div>

    <div class="fre-page-section">
        <div class="container">
            <div class="page-profile-list-wrap">
                <div class="fre-profile-list-wrap">				
                    
                    <div class="fre-profile-filter-box">
                        <div class="profile-filter-header visible-sm visible-xs">
                            <a class="profile-filter-title" href="">Advance search</a>
                        </div>
                        <div class="fre-profile-list-filter">
                            <form>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="fre-input-field">
                                            <label for="keywords" class="fre-field-title">Keyword</label>
                                            <input class="keyword search" id="s" type="text" name="s" placeholder="Search freelancers by keyword">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="fre-input-field dropdown">
                                            <label for="skills" class="fre-field-title">Skills</label>
                                            <input id="skills" class="dropdown-toggle fre-skill-field" type="text" placeholder="Search freelancers by skills" data-toggle="dropdown" readonly="">
                                                                                                  <div class="dropdown-menu dropdown-menu-skill">
                                                                                  <div class="search-skill-dropdown">
                                                      <input class="fre-search-skill-dropdown" type="text">
                                                    </div>
                                                                                <ul class="fre-skill-dropdown" data-name="skill">

                                                  <li><a class="fre-skill-item" name="net-framework" href="">.NET Framework</a></li><li><a class="fre-skill-item" name="3d-modeling-cad" href="">3D Modeling &amp; CAD</a></li><li><a class="fre-skill-item" name="3d-modelling" href="">3D Modelling</a></li><li><a class="fre-skill-item" name="3d-rendering" href="">3D Rendering</a></li><li><a class="fre-skill-item" name="academic-writing" href="">Academic Writing</a></li><li><a class="fre-skill-item" name="accounting" href="">Accounting</a></li><li><a class="fre-skill-item" name="ad-planning-buying" href="">Ad Planning &amp; Buying</a></li><li><a class="fre-skill-item" name="administrative-support" href="">Administrative Support</a></li><li><a class="fre-skill-item" name="adobe-illustrator" href="">Adobe Illustrator</a></li><li><a class="fre-skill-item" name="adobe-photoshop" href="">Adobe Photoshop</a></li><li><a class="fre-skill-item" name="adwords" href="">Adwords</a></li><li><a class="fre-skill-item" name="affiliate-marketing" href="">Affiliate Marketing</a></li><li><a class="fre-skill-item" name="amazon-web-services" href="">Amazon Web Services</a></li><li><a class="fre-skill-item" name="android" href="">Android</a></li><li><a class="fre-skill-item" name="animation" href="">Animation</a></li><li><a class="fre-skill-item" name="app-developer" href="">App Developer</a></li><li><a class="fre-skill-item" name="app-mobile" href="">App Mobile</a></li><li><a class="fre-skill-item" name="article-rewriting" href="">Article Rewriting</a></li><li><a class="fre-skill-item" name="asp-net" href="">ASP.NET</a></li><li><a class="fre-skill-item" name="audit" href="">Audit</a></li><li><a class="fre-skill-item" name="autocad" href="">AutoCAD</a></li><li><a class="fre-skill-item" name="book-cover-design" href="">Book Cover Design</a></li><li><a class="fre-skill-item" name="bookkeeping" href="">Bookkeeping</a></li><li><a class="fre-skill-item" name="bootstrap" href="">Bootstrap</a></li><li><a class="fre-skill-item" name="branding" href="">Branding</a></li><li><a class="fre-skill-item" name="building-architecture" href="">Building Architecture</a></li><li><a class="fre-skill-item" name="bulk-marketing" href="">Bulk Marketing</a></li><li><a class="fre-skill-item" name="business-plan" href="">Business Plan</a></li><li><a class="fre-skill-item" name="business-plans" href="">Business Plans</a></li><li><a class="fre-skill-item" name="c-programming" href="">C# Programming</a></li><li><a class="fre-skill-item" name="c-programming-2" href="">C++ Programming</a></li><li><a class="fre-skill-item" name="cad" href="">CAD</a></li><li><a class="fre-skill-item" name="cam" href="">CAM</a></li><li><a class="fre-skill-item" name="caricature-cartoons" href="">Caricature &amp; Cartoons</a></li><li><a class="fre-skill-item" name="cb-design" href="">CB Design</a></li><li><a class="fre-skill-item" name="civil-engineering" href="">Civil Engineering</a></li><li><a class="fre-skill-item" name="content-writing" href="">Content Writing</a></li><li><a class="fre-skill-item" name="copy-writting" href="">Copy Writting</a></li><li><a class="fre-skill-item" name="copywriting" href="">Copywriting</a></li><li><a class="fre-skill-item" name="cover-letter-writing" href="">Cover Letter Writing</a></li><li><a class="fre-skill-item" name="creative-writing" href="">Creative writing</a></li><li><a class="fre-skill-item" name="crm" href="">CRM</a></li><li><a class="fre-skill-item" name="css" href="">CSS</a></li><li><a class="fre-skill-item" name="css3" href="">CSS3</a></li><li><a class="fre-skill-item" name="customer-service" href="">Customer Service</a></li><li><a class="fre-skill-item" name="customer-support" href="">Customer Support</a></li><li><a class="fre-skill-item" name="data-entry" href="">Data Entry</a></li><li><a class="fre-skill-item" name="ebook-design" href="">eBook Design</a></li><li><a class="fre-skill-item" name="editting" href="">Editting</a></li><li><a class="fre-skill-item" name="education" href="">Education</a></li><li><a class="fre-skill-item" name="electrical-engineering" href="">Electrical Engineering</a></li><li><a class="fre-skill-item" name="email-developer" href="">Email Developer</a></li><li><a class="fre-skill-item" name="email-handing" href="">Email Handing</a></li><li><a class="fre-skill-item" name="employment" href="">Employment</a></li><li><a class="fre-skill-item" name="employment-law" href="">Employment Law</a></li><li><a class="fre-skill-item" name="english" href="">English</a></li><li><a class="fre-skill-item" name="english-grammar" href="">English Grammar</a></li><li><a class="fre-skill-item" name="excel" href="">Excel</a></li><li><a class="fre-skill-item" name="facebook-marketing" href="">Facebook Marketing</a></li><li><a class="fre-skill-item" name="financial-analysis" href="">Financial Analysis</a></li><li><a class="fre-skill-item" name="financial-planning" href="">Financial Planning</a></li><li><a class="fre-skill-item" name="game-development" href="">Game Development</a></li><li><a class="fre-skill-item" name="general-labor" href="">General Labor</a></li><li><a class="fre-skill-item" name="german" href="">German</a></li><li><a class="fre-skill-item" name="ghostwriting" href="">Ghostwriting</a></li><li><a class="fre-skill-item" name="google" href="">Google</a></li><li><a class="fre-skill-item" name="google-marketing" href="">Google Marketing</a></li><li><a class="fre-skill-item" name="gps" href="">GPS</a></li><li><a class="fre-skill-item" name="graphic-design" href="">Graphic Design</a></li><li><a class="fre-skill-item" name="html" href="">HTML</a></li><li><a class="fre-skill-item" name="html5" href="">HTML5</a></li><li><a class="fre-skill-item" name="illustration" href="">Illustration</a></li><li><a class="fre-skill-item" name="internet-research" href="">Internet research</a></li><li><a class="fre-skill-item" name="interspire" href="">Interspire</a></li><li><a class="fre-skill-item" name="ionic-framework" href="">Ionic Framework</a></li><li><a class="fre-skill-item" name="ios" href="">IOS</a></li><li><a class="fre-skill-item" name="javascript" href="">Javascript</a></li><li><a class="fre-skill-item" name="jquery" href="">jQuery</a></li><li><a class="fre-skill-item" name="law" href="">Law</a></li><li><a class="fre-skill-item" name="legal" href="">Legal</a></li><li><a class="fre-skill-item" name="link-building" href="">Link Building</a></li><li><a class="fre-skill-item" name="logo-design" href="">Logo Design</a></li><li><a class="fre-skill-item" name="mailchimp" href="">Mailchimp</a></li><li><a class="fre-skill-item" name="manufacturing" href="">Manufacturing</a></li><li><a class="fre-skill-item" name="market-research" href="">Market Research</a></li><li><a class="fre-skill-item" name="marketing" href="">Marketing</a></li><li><a class="fre-skill-item" name="mathematics" href="">Mathematics</a></li><li><a class="fre-skill-item" name="matlab-mathematica" href="">Matlab &amp; Mathematica</a></li><li><a class="fre-skill-item" name="maya" href="">Maya</a></li><li><a class="fre-skill-item" name="mechanical-engineering" href="">Mechanical Engineering</a></li><li><a class="fre-skill-item" name="microsoft-word" href="">Microsoft Word</a></li><li><a class="fre-skill-item" name="mobile-phone" href="">Mobile Phone</a></li><li><a class="fre-skill-item" name="payroll" href="">Payroll</a></li><li><a class="fre-skill-item" name="photography" href="">Photography</a></li><li><a class="fre-skill-item" name="php" href="">PHP</a></li><li><a class="fre-skill-item" name="phps" href="">PHPs</a></li><li><a class="fre-skill-item" name="plugin" href="">Plugin</a></li><li><a class="fre-skill-item" name="poster-design" href="">Poster Design</a></li><li><a class="fre-skill-item" name="print-layout-design" href="">Print Layout Design</a></li><li><a class="fre-skill-item" name="product-descriptions" href="">Product Descriptions</a></li><li><a class="fre-skill-item" name="product-sourcing" href="">Product Sourcing</a></li><li><a class="fre-skill-item" name="project-management" href="">Project Management</a></li><li><a class="fre-skill-item" name="proofreading" href="">Proofreading</a></li><li><a class="fre-skill-item" name="psd-to-html" href="">PSD to HTML</a></li><li><a class="fre-skill-item" name="python" href="">Python</a></li><li><a class="fre-skill-item" name="qa" href="">QA</a></li><li><a class="fre-skill-item" name="raspberry-pi" href="">Raspberry Pi</a></li><li><a class="fre-skill-item" name="recruitment" href="">Recruitment</a></li><li><a class="fre-skill-item" name="restful" href="">RESTful</a></li><li><a class="fre-skill-item" name="resume-writing" href="">Resume Writing</a></li><li><a class="fre-skill-item" name="sales" href="">Sales</a></li><li><a class="fre-skill-item" name="sales-writing" href="">Sales Writing</a></li><li><a class="fre-skill-item" name="scientific-research" href="">Scientific Research</a></li><li><a class="fre-skill-item" name="screenwriting" href="">Screenwriting</a></li><li><a class="fre-skill-item" name="seo" href="">SEO</a></li><li><a class="fre-skill-item" name="serial-port-interfacing" href="">Serial Port Interfacing</a></li><li><a class="fre-skill-item" name="sientific-research" href="">Sientific Research</a></li><li><a class="fre-skill-item" name="sketch" href="">Sketch</a></li><li><a class="fre-skill-item" name="social-media" href="">Social Media</a></li><li><a class="fre-skill-item" name="software-testing" href="">Software Testing</a></li><li><a class="fre-skill-item" name="sql" href="">SQL</a></li><li><a class="fre-skill-item" name="statistics" href="">Statistics</a></li><li><a class="fre-skill-item" name="tax" href="">Tax</a></li><li><a class="fre-skill-item" name="tax-law" href="">Tax Law</a></li><li><a class="fre-skill-item" name="technical-writing" href="">Technical Writing</a></li><li><a class="fre-skill-item" name="testing" href="">Testing</a></li><li><a class="fre-skill-item" name="testing-qa" href="">Testing / QA</a></li><li><a class="fre-skill-item" name="trademark-consulting" href="">Trademark Consulting</a></li><li><a class="fre-skill-item" name="training" href="">Training</a></li><li><a class="fre-skill-item" name="translation" href="">Translation</a></li><li><a class="fre-skill-item" name="tutoring" href="">Tutoring</a></li><li><a class="fre-skill-item" name="twitter-bootstrap" href="">Twitter Bootstrap</a></li><li><a class="fre-skill-item" name="typing" href="">Typing</a></li><li><a class="fre-skill-item" name="ui-design" href="">UI Design</a></li><li><a class="fre-skill-item" name="unity-3d" href="">Unity 3D</a></li><li><a class="fre-skill-item" name="usability-testing" href="">Usability Testing</a></li><li><a class="fre-skill-item" name="ux-design" href="">UX Design</a></li><li><a class="fre-skill-item" name="video-production" href="">Video production</a></li><li><a class="fre-skill-item" name="viral-marketing" href="">Viral Marketing</a></li><li><a class="fre-skill-item" name="virtual-assistant" href="">Virtual Assistant</a></li><li><a class="fre-skill-item" name="visual-basic" href="">Visual Basic</a></li><li><a class="fre-skill-item" name="visual-basic-for-apps" href="">Visual Basic for Apps</a></li><li><a class="fre-skill-item" name="website-design" href="">Website Design</a></li><li><a class="fre-skill-item" name="website-management" href="">Website Management</a></li><li><a class="fre-skill-item" name="website-testing" href="">Website Testing</a></li><li><a class="fre-skill-item" name="whiteboard-animation" href="">Whiteboard animation</a></li><li><a class="fre-skill-item" name="wordpress" href="">WordPress</a></li><li><a class="fre-skill-item" name="wordpress-app-designer" href="">Wordpress App Designer</a></li><li><a class="fre-skill-item" name="wordpress-e-commerce" href="">WordPress e-Commerce</a></li><li><a class="fre-skill-item" name="writing" href="">Writing</a></li>                              </ul>
                                              </div>
                                                                  </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="fre-input-field">
                                            <label for="total_earning" class="fre-field-title">Earning ($)</label>
                                            <select name="earning" id="total_earning" class="fre-chosen-single" style="display: none;">
                                                <option value="">Any amount</option>
                                                <option value="100">0 - 100</option>
                                                <option value="100-1000">100 - 1000</option>
                                                <option value="1000-10000">1000 - 10000</option>
                                                <option value="10000">Greater than 10000 </option>
                                            </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" id="total_earning_chosen" style="width: 100%;"><a class="chosen-single">
                    <span>Any amount</span>
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
                                    <div class="clearfix"></div>
                                    <div class="col-md-4">
                                        <div class="fre-input-field project-number-worked">
                                            <label for="project-number-worked" class="fre-field-title">Projects Worked</label>
                                            <select name="total_projects_worked" id="project-number-worked" class="fre-chosen-single" style="display: none;">
                                                <option value="">Any projects worked</option>
                                                <option value="10">0 - 10</option>
                                                <option value="20">11 - 20</option>
                                                <option value="30">21 - 30</option>
                                                <option value="40">Greater than 30</option>
                                            </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" id="project_number_worked_chosen" style="width: 100%;"><a class="chosen-single">
                    <span>Any projects worked</span>
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
                                    <div class="col-md-4">
                                        <div class="fre-input-field">
                                            <label for="location" class="fre-field-title">Location</label>
                                            <select data-chosen-width="100%" data-chosen-disable-search="" data-placeholder="Select country" name="country" id="country" class="fre-chosen-single" style="display: none;">
                          <option value="">Select country</option>
                          <option class=" australia cat-10 level-0" value="australia">Australia</option>
                          <option class=" belgium cat-361 level-0" value="belgium">Belgium</option>
                          <option class=" canada cat-12 level-0" value="canada">Canada</option>
                          <option class=" china cat-13 level-0" value="china">China</option>
                          <option class=" croatia cat-347 level-0" value="croatia">Croatia</option>
                          <option class=" czech-republic cat-341 level-0" value="czech-republic">Czech Republic</option>
                          <option class=" denmark cat-339 level-0" value="denmark">Denmark</option>
                          <option class=" dutch-republic cat-348 level-0" value="dutch-republic">Dutch Republic</option>
                          <option class=" france cat-22 level-0" value="france">France</option>
                          <option class=" germany cat-24 level-0" value="germany">Germany</option>
                          <option class=" holland cat-27 level-0" value="holland">Holland</option>
                          <option class=" india cat-31 level-0" value="india">India</option>
                          <option class=" indonesia cat-340 level-0" value="indonesia">Indonesia</option>
                          <option class=" italy cat-346 level-0" value="italy">Italy</option>
                          <option class=" japan cat-33 level-0" value="japan">Japan</option>
                          <option class=" korea cat-37 level-0" value="korea">Korea</option>
                          <option class=" mexico cat-41 level-0" value="mexico">Mexico</option>
                          <option class=" norway cat-43 level-0" value="norway">Norway</option>
                          <option class=" poland cat-47 level-0" value="poland">Poland</option>
                          <option class=" portugal cat-344 level-0" value="portugal">Portugal</option>
                          <option class=" romania cat-194 level-0" value="romania">Romania</option>
                          <option class=" russia cat-351 level-0" value="russia">Russia</option>
                          <option class=" singapore cat-342 level-0" value="singapore">Singapore</option>
                          <option class=" slovenia cat-343 level-0" value="slovenia">Slovenia</option>
                          <option class=" syria cat-350 level-0" value="syria">Syria</option>
                          <option class=" uk cat-193 level-0" value="uk">UK</option>
                          <option class=" usa cat-349 level-0" value="usa">USA</option>
                          <option class=" viet-nam cat-63 level-0" value="viet-nam">Viet Nam</option>
                          <option class=" vietnam cat-345 level-0" value="vietnam">Vietnam</option>
                  </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" id="country_chosen" style="width: 100%;"><a class="chosen-single chosen-default">
                    <span>Select country</span>
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
                                    <div class="col-md-4">
                                                              <div class="fre-input-field fre-budget-field">
                                            <label for="budget" class="fre-field-title">Hourly Rate ($)</label>
                                            <input id="budget" class="filter-budget-min" type="number" name="min_budget" value="0" min="0">
                                            <span>-</span>
                                            <input class="filter-budget-max" type="number" name="max_budget" value="2500" min="0">
                                            <input id="hour_rate" type="hidden" name="hour_rate" value="0,2500">
                                            <input type="hidden" name="user_available" id="user_available" value="yes">
                                        </div>
                                    </div>
                                </div>
                                <a class="profile-filter-clear clear-filter secondary-color" href="">Clear all filters</a>
                            </form>
                        </div>
                    </div> 
                    
                    <div class="fre-profile-list-box">
                        <div class="fre-profile-list-wrap">
                            
                            <div class="fre-profile-result-sort">
                                <div class="row">						                                        
                                    <div class="col-md-4 col-md-push-8 col-sm-5 col-sm-push-7">
                                        <div class="fre-profile-sort">
                                            <select class="fre-chosen-single sort-order" name="orderby" style="display: none;">
                                                <option value="date">Newest Profiles</option>
                                                <option value="hour_rate">Highest Hourly Rate</option>
                                                <option value="rating">Highest Rating</option>
                                                <option value="projects_worked">Most Projects Worked</option>
                                            </select>
                                            <div class="chosen-container chosen-container-single fre-chosen-single sort-order" title="" style="width: 100%;">
                                                <a class="chosen-single">
                                                    <span>Newest Profiles</span>
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
                                    <div class="col-md-8 col-md-pull-4 col-sm-7 col-sm-pull-5">
                                        <div class="fre-profile-result">
                                            <p>
                                                <span class="plural "><span class="found_post"><%= freelancers.size() %></span> profiles available</span>
                                                <span class="singular hide"><span class="found_post"><%= freelancers.size() %></span> profile available</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                
                            
                            <ul class="fre-profile-list profile-list-container">
                                
                                <% for(Freelancer freelancer : freelancers) { %>
                                    <li class="profile-item">
                                        <div class="profile-list-wrap">
                                            <a class="profile-list-avatar" href="./profile?id=<%= freelancer.getUserID() %>">
                                                <img alt="" src="https://cdn.enginethemes.com/freelanceengine/2016/08/Martin-Harvey.jpg" class="avatar avatar-96 photo avatar-default" height="96" width="96">        
                                            </a>
                                            <h2 class="profile-list-title">
                                                <a href="./profile?id=<%= freelancer.getUserID() %>">
                                                        <%= freelancer.getFirstName() %> <%= freelancer.getLastName() %>
                                            </a>
                                            </h2>
                                            <p class="profile-list-subtitle"><%= freelancer.getHeadline()%></p>
                                            <div class="profile-list-info">
                                                <div class="profile-list-detail">
                                                    <span class="rate-it" data-score="4.666666666666667" title="good"><i data-alt="1" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="2" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="3" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="4" class="fa fa-star star-on-png" title="good"></i>&nbsp;<i data-alt="5" class="fa fa-star-half-o star-half-png" title="good"></i><input name="score" type="hidden" value="4.666666666666667" readonly=""></span>
                                                    <span><%= freelancer.getYearsExperience() %> years experience</span>
                                                    <span><%= freelancer.getProjectWorked() %> projects worked</span>

                                                    <span><b>$<%= freelancer.getHourly()%></b>/hr</span>
                                                    <span style="font-weight: normal">$<%= freelancer.getEarned() %> earned</span>
                                                </div>
                                                <div class="profile-list-desc">
                                                    <p><%= freelancer.getDescription() %></p>
                                                </div>
                                        </div>
                                    </li>
                                <% } %>
                                
                            </ul>
                            
                            <div class="profile-no-result" style="display: none;">
                                <div class="profile-content-none">
                                    <p>There are no results that match your search!</p>
                                    <ul>
                                        <li>Try more general terms</li>
                                        <li>Try another search method</li>
                                        <li>Try to search by keyword</li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
                                
</div>