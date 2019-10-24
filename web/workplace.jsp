<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Integer projectID = 2;
%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">

<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="home page-template page-template-page-home-new page-template-page-home-new-php page page-id-1617 two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>

<div class="fre-page-wrapper">
        <div class="container">
            <div class="fre-project-detail-wrap">
                <div class="project-detail-box">
                    <div class="project-detail-info">
                        <div class="row">
                            <div class="col-lg-8 col-md-7">
                                <h1 class="project-detail-title">
                                    <a href="./project?id=<%= projectID %>">Digital Marketing Blog and Article Creation</a></h1>
                                <ul class="project-bid-info-list">
                                    <li>
                                                                                            <span>Freelancer</span>
                                            <a href="https://freelanceengine.enginethemes.com/author/marindairvin/" target="_blank"><span>Marinda</span></a>
                                                                                    </li>
                                    <li>
                                        <span>Winning Bid</span>
                                        <span>$70.00</span>
                                    </li>
                                    <li>
                                        <span>Deadline</span>
                                        <!--<span></span> !-->
                                        <span>July 20, 2017</span>

                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-5">
                                <p class="project-detail-posted">Posted on September 6, 2016</p>
                                <span class="project-detail-status">
                                    Processing                </span>
                                <div class="project-detail-action">
                                                                                    <a title="Finish" href="#" id="949" class="fre-action-btn btn-complete-project"> Finish</a>
                                                                                                        <a title="Close" href="#" id="949" class="fre-action-btn btn-close-project">Close</a>
                                                                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
               

                
                <style>
                    .conversation-send-file-btn input {
                        display: block;
                    }
                </style>

<div class="workspace-project-box">
    <ul class="nav nav-tabs nav-tabs-workspace hidden-lg hidden-md" role="tablist">
        <li class="active"><a href="#workspace-conversation" data-group="conversation" data-toggle="tab" role="tab"><span>Conversation</span></a></li>
		            <li class="next"><a href="#workspace-files" data-group="files" data-toggle="tab" role="tab"><span>Project files</span></a>
            </li>
		
    </ul>
    <div class="row">
        <div class="col-md-8">
            <div id="workspace-conversation" class="project-workplace-details workplace-details workspace-conversation tab-pane fade in active">
                <h2 class="workspace-title">Conversation</h2>
                <div class="message-container">
                    <div class="list-chat-work-place-wrap fre-conversation-wrap fre-conversation mCustomScrollbar _mCS_1 mCS_no_scrollbar" style="height: 524px;"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position: relative; top: 0px; left: 0px;" dir="ltr">
                        <ul class="fre-conversation-list list-chat-work-place new-list-message-item upload_file_file_list">
							<li class="message-none">No messages were received during the working process</li>                        </ul>
                    </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                    <div class="conversation-typing-wrap">
						                            <form class="fre-workspace-form">
                                <div class="conversation-typing">
									<textarea name="comment_content" class="content-chat" placeholder="Your message here..." style="overflow: hidden; overflow-wrap: break-word; height: 38px;"></textarea>
                                    <input type="hidden" name="comment_post_ID" value="949">
                                </div>
                                <div class="conversation-submit-btn">
                                    <label class="conversation-send-file-btn" for="conversation-send-file">
                                        <div id="upload_file_container" style="position: relative;">
                                        <span class="et_ajaxnonce" id="fb24345e31"></span>
                                            <span class="project_id" data-project="949"></span>
                                            <span class="author_id" data-author="98"></span>
                                            <a href="#" class="attack attach-file" id="upload_file_browse_button" style="position: relative; z-index: 1;"><i class="fa fa-paperclip" aria-hidden="true"></i></a>
                                        <div id="html5_1d1u210ki9b91qpu1m5go8om8h4_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 3px; left: 7px; width: 16px; height: 24px; overflow: hidden; z-index: 0;"><input id="html5_1d1u210ki9b91qpu1m5go8om8h4" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="application/zip,.zip,.rar,application/pdf,.pdf,application/msword,.doc,application/vnd.openxmlformats-officedocument.wordprocessingml.document,.docx,image/png,.png,image/jpeg,.jpg,.jpeg,image/gif,.gif,application/vnd.ms-excel,.xls,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,.xlsx"></div></div>
                                    </label>

                                    <label class="conversation-send-message-btn disabled" for="conversation-send-message">
                                        <input id="conversation-send-message" type="submit" class="disabled" disabled="disabled">
                                        <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                    </label>
                                </div>
                            </form>
						                        <script type="application/json" class="ae_query">{"type":"message","post_id":949,"paginate":"load","order":"DESC","orderby":"date","meta_query":[{"key":"fre_comment_file","compare":"NOT EXISTS"}],"text":"Load older message","number":10000,"total":0}</script>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="workspace-files-wrap mCustomScrollbar _mCS_2 mCS_no_scrollbar" style="height: 672px;"><div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 612px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">

				
                <div id="workspace-files" class="workspace-files tab-pane fade workplace-project-details">
                    <div class="content-require-project content-require-project-attachment active">
                        <h2 class="workspace-title">Project Files</h2>
						<div class="lock-btn-wrapper"><a href="#" class="lock-file-upload-btn lock-btn-disabled" data-action="lock" data-project-id="949"><i class="fa fa-lock"></i>Lock file</a></div>                        <ul class="workspace-files-list" id="workspace_files_list">
							<li class="no_file_upload"><i>No files have been uploaded.</i></li>                        </ul>
                    </div>
                </div>
            </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer" style=""><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
        </div>
    </div>
</div><script type="data/json" id="project_data">{"post_parent":0,"post_title":"Digital Marketing Blog and Article Creation","post_name":"digital-marketing-blog-and-article-creation","post_content":"<p>We are looking for 2-3 unique blogs and articles to be written each week. Based around the topic of Digital Marketing.<\/p>\n<p>Topics can be varied such as lead generation, funnels, creating content etc<\/p>\n<p>These articles need to be well composed, reasearched with engaging content and visual elements (where possible)<\/p>\n<p>Our market are small &amp; medium business owners who we can educate about digital marketing.<\/p>\n<p>The blogs will be created to bring people into our business.<\/p>\n<p>Our end product is providing digital services such as webiste builds, copywriting, sales funnels, design work etc<\/p>\n<p>Thanks<\/p>\n","post_excerpt":"We are looking for 2-3 unique blogs and articles to be written each week. Based around the topic of Digital&hellip;","post_author":"98","post_status":"close","ID":949,"post_type":"project","comment_count":"","guid":"https:\/\/freelanceengine.enginethemes.com\/?post_type=project&#038;p=949","status_text":"PROCESSING","post_date":"September 6, 2016","tax_input":{"skill":[{"term_id":216,"name":"Article Rewriting","slug":"article-rewriting","term_group":0,"term_taxonomy_id":216,"taxonomy":"skill","description":"","parent":0,"count":2,"filter":"raw"},{"term_id":319,"name":"Creative writing","slug":"creative-writing","term_group":0,"term_taxonomy_id":319,"taxonomy":"skill","description":"","parent":0,"count":1,"filter":"raw"},{"term_id":318,"name":"Writing","slug":"writing","term_group":0,"term_taxonomy_id":318,"taxonomy":"skill","description":"","parent":0,"count":3,"filter":"raw"}],"project_category":[{"term_id":165,"name":"Article Writing","slug":"article-writing","term_group":0,"term_taxonomy_id":165,"taxonomy":"project_category","description":"","parent":158,"count":1,"filter":"raw"},{"term_id":159,"name":"Content Writing","slug":"content-writing","term_group":0,"term_taxonomy_id":159,"taxonomy":"project_category","description":"","parent":158,"count":6,"filter":"raw"}],"project_type":[{"term_id":23,"name":"Full time","slug":"full-time","term_group":0,"term_taxonomy_id":23,"taxonomy":"project_type","description":"","parent":0,"count":20,"filter":"raw"}],"country":[]},"project_category":[165,159],"project_type":[23],"country":[],"address":"","avatar":"","post_count":"","et_featured":"0","et_expired_date":"2020-09-16 00:00:00","et_budget":"75","deadline":"","total_bids":"1","bid_average":70,"accepted":"1230","project_deadline":"2017-07-20 8:50:46","et_payment_package":"002","post_views":"6","id":949,"permalink":"https:\/\/freelanceengine.enginethemes.com\/project\/digital-marketing-blog-and-article-creation\/","unfiltered_content":"<p>We are looking for 2-3 unique blogs and articles to be written each week. Based around the topic of Digital Marketing.<\/p>\n<p>Topics can be varied such as lead generation, funnels, creating content etc<\/p>\n<p>These articles need to be well composed, reasearched with engaging content and visual elements (where possible)<\/p>\n<p>Our market are small &amp; medium business owners who we can educate about digital marketing.<\/p>\n<p>The blogs will be created to bring people into our business.<\/p>\n<p>Our end product is providing digital services such as webiste builds, copywriting, sales funnels, design work etc<\/p>\n<p>Thanks<\/p>","the_post_thumnail":"","featured_image":"","the_post_thumbnail":"","bid_won_date":"in 3 days","et_avatar":"<img alt='' src='https:\/\/cdn.enginethemes.com\/freelanceengine\/2016\/11\/Doris-Clarke.jpg' class='avatar avatar-35 photo avatar-default' height='35' width='35' \/>","author_url":"https:\/\/freelanceengine.enginethemes.com\/author\/dorisclarke\/","author_name":"Doris Clarke","budget":"$75.00","bid_budget_text":"$70.00","rating_score":0,"project_comment":"","project_comment_trim":"","post_content_trim":"We are looking for 2-3 unique blogs and articles to be written each week. Based around the topic of Digital Marketing. Topics can be varied such as lead generation, funnels,&hellip;","count_word":0,"project_status_view":"Processing","text_status_js":"Job is ","workspace_link":"https:\/\/freelanceengine.enginethemes.com\/project\/digital-marketing-blog-and-article-creation\/?workspace=1","et_carousels":[],"current_user_bid":false,"posted_by":"Posted by Doris Clarke","skill":[{"name":"Article Rewriting"},{"name":"Creative writing"},{"name":"Writing"}],"list_skills":"<div class=\"project-list-skill\"><span class=\"fre-label\"><a href=\"https:\/\/freelanceengine.enginethemes.com\/projects\/?skill_project=article-rewriting\">Article Rewriting<\/a><\/span><span class=\"fre-label\"><a href=\"https:\/\/freelanceengine.enginethemes.com\/projects\/?skill_project=creative-writing\">Creative writing<\/a><\/span><span class=\"fre-label\"><a href=\"https:\/\/freelanceengine.enginethemes.com\/projects\/?skill_project=writing\">Writing<\/a><\/span><\/div>","text_total_bid":"1 Bid","text_country":""}</script>            </div>
        </div>
    </div>

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/Modified/main.js"></script>

    </body>
</html>