<div id="fre-post-project-2 step-post" class="fre-post-project-step step-wrapper step-post active">
    
    <div class="fre-post-project-box">
        <form class="post" role="form" novalidate="novalidate" method="post" action="post">
            <div class="step-post-project" id="fre-post-project">
                <h2>Your Project Details</h2>
                
                <div class="fre-input-field">
                    <label class="fre-field-title" for="fre-project-title">Your project title</label>
                    <input class="input-item text-field" id="fre-project-title" type="text" name="post_title">
                </div>
                                
                <div class="fre-input-field">
                    <label class="fre-field-title" for="fre-project-describe">Describe what you need done</label>
                    <div id="wp-post_content-wrap" class="wp-core-ui wp-editor-wrap tmce-active">
                        <div id="wp-post_content-editor-container" class="wp-editor-container">
                            <textarea class="wp-editor-area" rows="20" autocomplete="off" cols="40" name="description" id="post_content" aria-hidden="true" style="display: block;"></textarea>
                        </div>
                    </div>
                </div>
                
                <div class="fre-input-field">
                    <label class="fre-field-title" for="project-budget">Your project budget</label>
                    <div class="fre-project-budget">
                        <input id="project-budget" step="5" required="" type="number" class="input-item text-field is_number numberVal" name="et_budget" min="5">
                        <span>$</span>
                    </div>
                </div>
                
                <div class="fre-input-field">
                    <label class="fre-field-title" for="project-location">Location</label>
                    <select name="country" class="form-control" id="sel1" style="border: 1;box-shadow: none;background-image: none;height: 44px;padding-left: 15px;line-height: 44px;font-size: 16px;color: #415161;border: 1px solid #dbdbdb;border-radius: 0px;position: relative;display: inline-block;vertical-align: middle;font-size: 16px;zoom: 1;     -webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;">
                        <option selected disabled>Country</option>
                        <jsp:include page="countries.jsp"></jsp:include>
                    </select>
                </div>
                
                                    
                <div class="fre-post-project-btn">
                    <button class="fre-btn fre-post-project-next-btn primary-bg-color" type="submit">Submit Project</button>
                </div>
                
            </div>
        </form>
        
    </div>
</div>