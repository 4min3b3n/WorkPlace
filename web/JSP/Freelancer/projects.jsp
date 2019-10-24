<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.ensias.workplace.beans.*"%>
<%@page import="com.ensias.workplace.model.*"%>
<%@page import="java.util.ArrayList, java.util.Calendar, java.util.Date, java.text.SimpleDateFormat;" %>
<%
    ArrayList<Project> projects = (ArrayList<Project>) request.getAttribute("projects");
    SimpleDateFormat formatter = new SimpleDateFormat("MMMM dd, yyyy");
%>
<div class="fre-page-wrapper">
        <div class="fre-page-title">
            <div class="container">
                <h2>Available Projects</h2>
            </div>
        </div>
        <div class="fre-page-section section-archive-project">
            <div class="container">
                <div class="page-project-list-wrap">
                    <div class="fre-project-list-wrap">
						
                        <div class="fre-project-filter-box">
    
    <div class="project-filter-header visible-sm visible-xs">
        <a class="project-filter-title" href="">Advance search</a>
    </div>
    <div class="fre-project-list-filter">
        <form>
            <div class="row">
                <div class="col-md-4">
                    <div class="fre-input-field">
                        <label for="s" class="fre-field-title">Keyword</label>
                        <input class="keyword search" id="s" type="text" name="s" placeholder="Search projects by keyword">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fre-input-field dropdown">
                        <label for="skills" class="fre-field-title">Skills</label>
                        <input id="skills" class="dropdown-toggle fre-skill-field" readonly="" type="text" placeholder="Search project by skills" data-toggle="dropdown">

												                            <div class="dropdown-menu dropdown-menu-skill">
								                                    <div class="search-skill-dropdown">
                                        <input class="fre-search-skill-dropdown" type="text">
                                    </div>
								                                <ul class="fre-skill-dropdown" data-name="skill">

									<li><a class="fre-skill-item" name="net-framework" href="">.NET Framework</a></li><li><a class="fre-skill-item" name="3d-modeling-cad" href="">3D Modeling &amp; CAD</a></li><li><a class="fre-skill-item" name="3d-modelling" href="">3D Modelling</a></li><li><a class="fre-skill-item" name="3d-rendering" href="">3D Rendering</a></li><li><a class="fre-skill-item" name="academic-writing" href="">Academic Writing</a></li><li><a class="fre-skill-item" name="accounting" href="">Accounting</a></li><li><a class="fre-skill-item" name="ad-planning-buying" href="">Ad Planning &amp; Buying</a></li><li><a class="fre-skill-item" name="administrative-support" href="">Administrative Support</a></li><li><a class="fre-skill-item" name="adobe-illustrator" href="">Adobe Illustrator</a></li><li><a class="fre-skill-item" name="adobe-photoshop" href="">Adobe Photoshop</a></li><li><a class="fre-skill-item" name="adwords" href="">Adwords</a></li><li><a class="fre-skill-item" name="affiliate-marketing" href="">Affiliate Marketing</a></li><li><a class="fre-skill-item" name="amazon-web-services" href="">Amazon Web Services</a></li><li><a class="fre-skill-item" name="android" href="">Android</a></li><li><a class="fre-skill-item" name="animation" href="">Animation</a></li><li><a class="fre-skill-item" name="app-developer" href="">App Developer</a></li><li><a class="fre-skill-item" name="app-mobile" href="">App Mobile</a></li><li><a class="fre-skill-item" name="article-rewriting" href="">Article Rewriting</a></li><li><a class="fre-skill-item" name="asp-net" href="">ASP.NET</a></li><li><a class="fre-skill-item" name="audit" href="">Audit</a></li><li><a class="fre-skill-item" name="autocad" href="">AutoCAD</a></li><li><a class="fre-skill-item" name="book-cover-design" href="">Book Cover Design</a></li><li><a class="fre-skill-item" name="bookkeeping" href="">Bookkeeping</a></li><li><a class="fre-skill-item" name="bootstrap" href="">Bootstrap</a></li><li><a class="fre-skill-item" name="branding" href="">Branding</a></li><li><a class="fre-skill-item" name="building-architecture" href="">Building Architecture</a></li><li><a class="fre-skill-item" name="bulk-marketing" href="">Bulk Marketing</a></li><li><a class="fre-skill-item" name="business-plan" href="">Business Plan</a></li><li><a class="fre-skill-item" name="business-plans" href="">Business Plans</a></li><li><a class="fre-skill-item" name="c-programming" href="">C# Programming</a></li><li><a class="fre-skill-item" name="c-programming-2" href="">C++ Programming</a></li><li><a class="fre-skill-item" name="cad" href="">CAD</a></li><li><a class="fre-skill-item" name="cam" href="">CAM</a></li><li><a class="fre-skill-item" name="caricature-cartoons" href="">Caricature &amp; Cartoons</a></li><li><a class="fre-skill-item" name="cb-design" href="">CB Design</a></li><li><a class="fre-skill-item" name="civil-engineering" href="">Civil Engineering</a></li><li><a class="fre-skill-item" name="content-writing" href="">Content Writing</a></li><li><a class="fre-skill-item" name="copy-writting" href="">Copy Writting</a></li><li><a class="fre-skill-item" name="copywriting" href="">Copywriting</a></li><li><a class="fre-skill-item" name="cover-letter-writing" href="">Cover Letter Writing</a></li><li><a class="fre-skill-item" name="creative-writing" href="">Creative writing</a></li><li><a class="fre-skill-item" name="crm" href="">CRM</a></li><li><a class="fre-skill-item" name="css" href="">CSS</a></li><li><a class="fre-skill-item" name="css3" href="">CSS3</a></li><li><a class="fre-skill-item" name="customer-service" href="">Customer Service</a></li><li><a class="fre-skill-item" name="customer-support" href="">Customer Support</a></li><li><a class="fre-skill-item" name="data-entry" href="">Data Entry</a></li><li><a class="fre-skill-item" name="ebook-design" href="">eBook Design</a></li><li><a class="fre-skill-item" name="editting" href="">Editting</a></li><li><a class="fre-skill-item" name="education" href="">Education</a></li><li><a class="fre-skill-item" name="electrical-engineering" href="">Electrical Engineering</a></li><li><a class="fre-skill-item" name="email-developer" href="">Email Developer</a></li><li><a class="fre-skill-item" name="email-handing" href="">Email Handing</a></li><li><a class="fre-skill-item" name="employment" href="">Employment</a></li><li><a class="fre-skill-item" name="employment-law" href="">Employment Law</a></li><li><a class="fre-skill-item" name="english" href="">English</a></li><li><a class="fre-skill-item" name="english-grammar" href="">English Grammar</a></li><li><a class="fre-skill-item" name="excel" href="">Excel</a></li><li><a class="fre-skill-item" name="facebook-marketing" href="">Facebook Marketing</a></li><li><a class="fre-skill-item" name="financial-analysis" href="">Financial Analysis</a></li><li><a class="fre-skill-item" name="financial-planning" href="">Financial Planning</a></li><li><a class="fre-skill-item" name="game-development" href="">Game Development</a></li><li><a class="fre-skill-item" name="general-labor" href="">General Labor</a></li><li><a class="fre-skill-item" name="german" href="">German</a></li><li><a class="fre-skill-item" name="ghostwriting" href="">Ghostwriting</a></li><li><a class="fre-skill-item" name="google" href="">Google</a></li><li><a class="fre-skill-item" name="google-marketing" href="">Google Marketing</a></li><li><a class="fre-skill-item" name="gps" href="">GPS</a></li><li><a class="fre-skill-item" name="graphic-design" href="">Graphic Design</a></li><li><a class="fre-skill-item" name="html" href="">HTML</a></li><li><a class="fre-skill-item" name="html5" href="">HTML5</a></li><li><a class="fre-skill-item" name="illustration" href="">Illustration</a></li><li><a class="fre-skill-item" name="internet-research" href="">Internet research</a></li><li><a class="fre-skill-item" name="interspire" href="">Interspire</a></li><li><a class="fre-skill-item" name="ionic-framework" href="">Ionic Framework</a></li><li><a class="fre-skill-item" name="ios" href="">IOS</a></li><li><a class="fre-skill-item" name="javascript" href="">Javascript</a></li><li><a class="fre-skill-item" name="jquery" href="">jQuery</a></li><li><a class="fre-skill-item" name="law" href="">Law</a></li><li><a class="fre-skill-item" name="legal" href="">Legal</a></li><li><a class="fre-skill-item" name="link-building" href="">Link Building</a></li><li><a class="fre-skill-item" name="logo-design" href="">Logo Design</a></li><li><a class="fre-skill-item" name="mailchimp" href="">Mailchimp</a></li><li><a class="fre-skill-item" name="manufacturing" href="">Manufacturing</a></li><li><a class="fre-skill-item" name="market-research" href="">Market Research</a></li><li><a class="fre-skill-item" name="marketing" href="">Marketing</a></li><li><a class="fre-skill-item" name="mathematics" href="">Mathematics</a></li><li><a class="fre-skill-item" name="matlab-mathematica" href="">Matlab &amp; Mathematica</a></li><li><a class="fre-skill-item" name="maya" href="">Maya</a></li><li><a class="fre-skill-item" name="mechanical-engineering" href="">Mechanical Engineering</a></li><li><a class="fre-skill-item" name="microsoft-word" href="">Microsoft Word</a></li><li><a class="fre-skill-item" name="mobile-phone" href="">Mobile Phone</a></li><li><a class="fre-skill-item" name="payroll" href="">Payroll</a></li><li><a class="fre-skill-item" name="photography" href="">Photography</a></li><li><a class="fre-skill-item" name="php" href="">PHP</a></li><li><a class="fre-skill-item" name="phps" href="">PHPs</a></li><li><a class="fre-skill-item" name="plugin" href="">Plugin</a></li><li><a class="fre-skill-item" name="poster-design" href="">Poster Design</a></li><li><a class="fre-skill-item" name="print-layout-design" href="">Print Layout Design</a></li><li><a class="fre-skill-item" name="product-descriptions" href="">Product Descriptions</a></li><li><a class="fre-skill-item" name="product-sourcing" href="">Product Sourcing</a></li><li><a class="fre-skill-item" name="project-management" href="">Project Management</a></li><li><a class="fre-skill-item" name="proofreading" href="">Proofreading</a></li><li><a class="fre-skill-item" name="psd-to-html" href="">PSD to HTML</a></li><li><a class="fre-skill-item" name="python" href="">Python</a></li><li><a class="fre-skill-item" name="qa" href="">QA</a></li><li><a class="fre-skill-item" name="raspberry-pi" href="">Raspberry Pi</a></li><li><a class="fre-skill-item" name="recruitment" href="">Recruitment</a></li><li><a class="fre-skill-item" name="restful" href="">RESTful</a></li><li><a class="fre-skill-item" name="resume-writing" href="">Resume Writing</a></li><li><a class="fre-skill-item" name="sales" href="">Sales</a></li><li><a class="fre-skill-item" name="sales-writing" href="">Sales Writing</a></li><li><a class="fre-skill-item" name="scientific-research" href="">Scientific Research</a></li><li><a class="fre-skill-item" name="screenwriting" href="">Screenwriting</a></li><li><a class="fre-skill-item" name="seo" href="">SEO</a></li><li><a class="fre-skill-item" name="serial-port-interfacing" href="">Serial Port Interfacing</a></li><li><a class="fre-skill-item" name="sientific-research" href="">Sientific Research</a></li><li><a class="fre-skill-item" name="sketch" href="">Sketch</a></li><li><a class="fre-skill-item" name="social-media" href="">Social Media</a></li><li><a class="fre-skill-item" name="software-testing" href="">Software Testing</a></li><li><a class="fre-skill-item" name="sql" href="">SQL</a></li><li><a class="fre-skill-item" name="statistics" href="">Statistics</a></li><li><a class="fre-skill-item" name="tax" href="">Tax</a></li><li><a class="fre-skill-item" name="tax-law" href="">Tax Law</a></li><li><a class="fre-skill-item" name="technical-writing" href="">Technical Writing</a></li><li><a class="fre-skill-item" name="testing" href="">Testing</a></li><li><a class="fre-skill-item" name="testing-qa" href="">Testing / QA</a></li><li><a class="fre-skill-item" name="trademark-consulting" href="">Trademark Consulting</a></li><li><a class="fre-skill-item" name="training" href="">Training</a></li><li><a class="fre-skill-item" name="translation" href="">Translation</a></li><li><a class="fre-skill-item" name="tutoring" href="">Tutoring</a></li><li><a class="fre-skill-item" name="twitter-bootstrap" href="">Twitter Bootstrap</a></li><li><a class="fre-skill-item" name="typing" href="">Typing</a></li><li><a class="fre-skill-item" name="ui-design" href="">UI Design</a></li><li><a class="fre-skill-item" name="unity-3d" href="">Unity 3D</a></li><li><a class="fre-skill-item" name="usability-testing" href="">Usability Testing</a></li><li><a class="fre-skill-item" name="ux-design" href="">UX Design</a></li><li><a class="fre-skill-item" name="video-production" href="">Video production</a></li><li><a class="fre-skill-item" name="viral-marketing" href="">Viral Marketing</a></li><li><a class="fre-skill-item" name="virtual-assistant" href="">Virtual Assistant</a></li><li><a class="fre-skill-item" name="visual-basic" href="">Visual Basic</a></li><li><a class="fre-skill-item" name="visual-basic-for-apps" href="">Visual Basic for Apps</a></li><li><a class="fre-skill-item" name="website-design" href="">Website Design</a></li><li><a class="fre-skill-item" name="website-management" href="">Website Management</a></li><li><a class="fre-skill-item" name="website-testing" href="">Website Testing</a></li><li><a class="fre-skill-item" name="whiteboard-animation" href="">Whiteboard animation</a></li><li><a class="fre-skill-item" name="wordpress" href="">WordPress</a></li><li><a class="fre-skill-item" name="wordpress-app-designer" href="">Wordpress App Designer</a></li><li><a class="fre-skill-item" name="wordpress-e-commerce" href="">WordPress e-Commerce</a></li><li><a class="fre-skill-item" name="writing" href="">Writing</a></li>                                </ul>
                            </div>
						                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fre-input-field">
                        <label for="project_category" class="fre-field-title">Category</label>
						<select data-chosen-width="100%" data-chosen-disable-search="" data-placeholder="Select categories" name="project_category" id="project_category" class="fre-chosen-single" style="display: none;">
	<option value="">Select category</option>
	<option class=" business-services cat-181 level-0" value="business-services">Business Services</option>
	<option class=" accounting cat-182 level-1" value="accounting">Accounting</option>
	<option class=" business-plans cat-183 level-1" value="business-plans">Business Plans</option>
	<option class=" finance cat-186 level-1" value="finance">Finance</option>
	<option class=" human-resources cat-184 level-1" value="human-resources">Human Resources</option>
	<option class=" legal cat-187 level-1" value="legal">Legal</option>
	<option class=" project-management cat-185 level-1" value="project-management">Project Management</option>
	<option class=" data-entry-admin cat-174 level-0" value="data-entry-admin">Data Entry &amp; Admin</option>
	<option class=" customer-services cat-177 level-1" value="customer-services">Customer Services</option>
	<option class=" data-entry cat-180 level-1" value="data-entry">Data Entry</option>
	<option class=" email-handling cat-176 level-1" value="email-handling">Email Handling</option>
	<option class=" microsoft-office cat-175 level-1" value="microsoft-office">Microsoft Office</option>
	<option class=" virtual-assistant cat-179 level-1" value="virtual-assistant">Virtual Assistant</option>
	<option class=" web-search cat-178 level-1" value="web-search">Web Search</option>
	<option class=" design-creative cat-134 level-0" value="design-creative">Design &amp; Creative</option>
	<option class=" 2d3d-design cat-139 level-1" value="2d3d-design">2D/3D Design</option>
	<option class=" animation cat-141 level-1" value="animation">Animation</option>
	<option class=" banner-design cat-140 level-1" value="banner-design">Banner Design</option>
	<option class=" graphic-design cat-135 level-1" value="graphic-design">Graphic Design</option>
	<option class=" illustration cat-136 level-1" value="illustration">Illustration</option>
	<option class=" logo-design cat-143 level-1" value="logo-design">Logo Design</option>
	<option class=" photoshop cat-138 level-1" value="photoshop">Photoshop</option>
	<option class=" psd-to-html cat-142 level-1" value="psd-to-html">PSD to HTML</option>
	<option class=" uiux-design cat-137 level-1" value="uiux-design">UI/UX Design</option>
	<option class=" video-services cat-145 level-1" value="video-services">Video Services</option>
	<option class=" web-mobile-design cat-144 level-1" value="web-mobile-design">Web/ Mobile Design</option>
	<option class=" engineering-science cat-168 level-0" value="engineering-science">Engineering &amp; Science</option>
	<option class=" autocad cat-170 level-1" value="autocad">AutoCAD</option>
	<option class=" electronics cat-173 level-1" value="electronics">Electronics</option>
	<option class=" mathematics cat-171 level-1" value="mathematics">Mathematics</option>
	<option class=" mechanical-engineering cat-169 level-1" value="mechanical-engineering">Mechanical Engineering</option>
	<option class=" scientific-research cat-172 level-1" value="scientific-research">Scientific Research</option>
	<option class=" others cat-188 level-0" value="others">Others</option>
	<option class=" education-tutoring cat-190 level-1" value="education-tutoring">Education &amp; Tutoring</option>
	<option class=" local-jobs-services cat-192 level-1" value="local-jobs-services">Local Jobs/ Services</option>
	<option class=" manufacturing cat-189 level-1" value="manufacturing">Manufacturing</option>
	<option class=" testing-qa cat-191 level-1" value="testing-qa">Testing / QA</option>
	<option class=" programing-development cat-146 level-0" value="programing-development">Programing &amp; Development</option>
	<option class=" mobile-apps-web cat-148 level-1" value="mobile-apps-web">Mobile Apps &amp; Web</option>
	<option class=" web-programming cat-147 level-1" value="web-programming">Web Programming</option>
	<option class=" website-builders-cms cat-149 level-1" value="website-builders-cms">Website Builders &amp; CMS</option>
	<option class=" wordpress cat-150 level-1" value="wordpress">WordPress</option>
	<option class=" sales-marketing cat-151 level-0" value="sales-marketing">Sales &amp; Marketing</option>
	<option class=" advertising cat-154 level-1" value="advertising">Advertising</option>
	<option class=" branding cat-156 level-1" value="branding">Branding</option>
	<option class=" internet-marketing cat-157 level-1" value="internet-marketing">Internet Marketing</option>
	<option class=" marketing-strategy cat-155 level-1" value="marketing-strategy">Marketing Strategy</option>
	<option class=" writing-translation cat-158 level-0" value="writing-translation">Writing &amp; Translation</option>
	<option class=" academic-writing cat-160 level-1" value="academic-writing">Academic Writing</option>
	<option class=" article-writing cat-165 level-1" value="article-writing">Article Writing</option>
	<option class=" business-writing cat-164 level-1" value="business-writing">Business Writing</option>
	<option class=" content-writing cat-159 level-1" value="content-writing">Content Writing</option>
	<option class=" copywriting cat-163 level-1" value="copywriting">Copywriting</option>
	<option class=" editing cat-161 level-1" value="editing">Editing</option>
	<option class=" proofreading cat-162 level-1" value="proofreading">Proofreading</option>
	<option class=" technical-writing cat-167 level-1" value="technical-writing">Technical Writing</option>
	<option class=" translation cat-166 level-1" value="translation">Translation</option>
</select><div class="chosen-container chosen-container-single fre-chosen-single" title="" id="project_category_chosen" style="width: 100%;"><a class="chosen-single">
  <input class="chosen-search-input" type="text" autocomplete="off">
  <span>Select category</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fre-input-field project-number-bids">
                        <label for="number_bids" class="fre-field-title">Bid</label>
                        <select name="number_bids" id="number-bids" class="fre-chosen-single" style="display: none;">
                            <option value="">Any Bids</option>
                            <option value="0,10">0 - 10</option>
                            <option value="11,20">11 - 20</option>
                            <option value="21,30">21 - 30</option>
                            <option value="31">Greater than 30</option>
                        </select><div class="chosen-container chosen-container-single fre-chosen-single" title="" id="number_bids_chosen" style="width: 100%;"><a class="chosen-single">
  <input class="chosen-search-input" type="text" autocomplete="off">
  <span>Any Bids</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fre-input-field">
                        <label for="country" class="fre-field-title">Location</label>
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
  <input class="chosen-search-input" type="text" autocomplete="off">
  <span>Select country</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                    </div>
                </div>
                <div class="col-md-4">
					                    <div class="fre-input-field fre-budget-field">
                        <label for="budget" class="fre-field-title">Budget                            ($)</label>
                        <input id="budget" class="filter-budget-min" type="number" name="min_budget" value="0" min="0">
                        <span>-</span>
                        <input class="filter-budget-max" type="number" name="max_budget" value="3000" min="0">
                        <input id="et_budget" type="hidden" name="et_budget" value="0,3000">
                    </div>
                </div>
            </div>
            <a class="project-filter-clear clear-filter secondary-color" href="">Clear all filters</a>
        </form>
    </div>
</div>                        
                        <div class="fre-project-list-box">
                            <div class="fre-project-list-wrap">
                                <div class="fre-project-result-sort">
                                    <div class="row">
										                                        <div class="col-sm-4 col-sm-push-8">
											                                                <div class="fre-project-sort">
                                                    <select class="fre-chosen-single sort-order" id="project_orderby" name="orderby" style="display: none;">
                                                        <option value="date">Latest Projects</option>
                                                        <option value="et_budget">Highest Budget</option>
                                                    </select><div class="chosen-container chosen-container-single fre-chosen-single sort-order" title="" id="project_orderby_chosen" style="width: 100%;"><a class="chosen-single">
  <input class="chosen-search-input" type="text" autocomplete="off">
  <span>Latest Projects</span>
  <div><b></b></div>
</a>
<div class="chosen-drop">
  <div class="chosen-search">
  </div>
  <ul class="chosen-results"></ul>
</div></div>
                                                </div>
											                                        </div>
                                        <div class="col-sm-8 col-sm-pull-4">
                                            <div class="fre-project-result">
                                                <p>
                                                    <span class="plural "><span class="found_post">60</span> projects found</span>
                                                    <span class="singular hide"><span class="found_post">60</span> project found</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
					
                                <ul class="fre-project-list project-list-container">
                                    
                                    <% for(Project project: projects) { %>


                                            <li class="project-item">
                                                <div class="project-list-wrap">
                                                    <h2 class="project-list-title">
                                                        <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/wordpress-plugins-for-gravatars-authors-and-tweets/" title="WordPress Plugins For Gravatars, Authors and Tweets">WordPress Plugins For Gravatars, Authors and Tweets</a>
                                                    </h2>
                                                    <div class="project-list-info">
                                                        <span>Posted October 26, 2016</span>
                                                        <span>5 Bids</span>
                                                                    <span>Australia</span>            <span>$244.00</span>
                                                    </div>
                                                    <div class="project-list-desc">
                                                        <p>Job 1: I have a WordPress site where a lot of users make comments. However, many users don’t have a gravatar image. I want to encourage all users to set…</p>
                                                    </div>
                                                            <div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=html">HTML</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=jquery">jQuery</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=plugin">Plugin</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=sql">SQL</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=wordpress">WordPress</a></span></div>        <!-- <div class="project-list-bookmark">
                                                        <a class="fre-bookmark" href="">Bookmark</a>
                                                    </div> -->
                                                </div>
                                            </li>

                                    <% } %>
                                
                                

                                    <li class="project-item">
                                        <div class="project-list-wrap">
                                            <h2 class="project-list-title">
                                                <a class="secondary-color" href="https://freelanceengine.enginethemes.com/project/dubai-gulf-blog-articles/" title="Dubai &amp; Gulf Blog Articles">Dubai &amp; Gulf Blog Articles</a>
                                            </h2>
                                            <div class="project-list-info">
                                                <span>Posted October 26, 2016</span>
                                                <span>0 Bids</span>
                                                            <span>Canada</span>            <span>$25.00</span>
                                            </div>
                                            <div class="project-list-desc">
                                                <p>I’m looking for someone based in the UAE to write weekly articles for a recruitment blog. The articles will cover topics on topics such as: 1. How to land a…</p>
                                            </div>
                                                    <div class="project-list-skill"><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=content-writing">Content Writing</a></span><span class="fre-label"><a href="https://freelanceengine.enginethemes.com/projects/?skill_project=writing">Writing</a></span></div>        <!-- <div class="project-list-bookmark">
                                                <a class="fre-bookmark" href="">Bookmark</a>
                                            </div> -->
                                        </div>
                                    </li>


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
     