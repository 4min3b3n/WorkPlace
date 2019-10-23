<%-- Photo Ptofile Overlay Not Completed --%>
<div class="modal fade in" id="uploadAvatar" style="display: none;">
    <div id="overlay"></div>
	<div class="modal-dialog">
            <div class="modal-header">
                <button id="close-photo" type="button" class="close" data-dismiss="modal">
                    <i class="fa fa-times"></i>
                </button>
                <h4 class="modal-title">Upload profile picture</h4>
            </div>
		<div class="modal-content">
                    <div class="modal-body">
			<form class="form-save-avatar" data-processing="no">
                            <div class="fre-input-field text-center">
                                <div class="preview-image" id="container_crop_avatar" data-is_crop="true">
                                    <img src="${sessionScope.freelancer.photo}" class="avatar photo avatar-default cropper-hidden" height="" width="">
                                    <div class="cropper-container" style="width: 718px; height: 128px;">
                                        <div class="cropper-wrap-box">
                                            <div class="cropper-canvas" style="width: 128px; height: 128px; left: 295px; top: 0px;">
                                                <img crossorigin="anonymous" src="${sessionScope.freelancer.photo}" style="width: 128px; height: 128px; margin-left: 0px; margin-top: 0px; transform: none;">
                                            </div>
                                        </div>
                                        <div class="cropper-drag-box cropper-crop">

                                        </div>
                                        <div class="cropper-crop-box" style="width: 128px; height: 128px; left: 295px; top: 0px;">
                                            <span class="cropper-view-box">
                                                <img crossorigin="anonymous" src="${sessionScope.freelancer.photo}" style="width: 128px; height: 128px; margin-left: 0px; margin-top: 0px; transform: none;">
                                            </span>
                                        </div>
                                    </div>
							                        
                                </div>

						
                                            <div class="" style="margin-top: 50px">
							
                                                <button type="submit" class="fre-normal-btn fre-submit-portfolio">Save profile picture</button>
                                                <br><br>

                            
                                                <div id="md_user_avatar_container" data-avatar_id="600" style="position: relative;">
                                
                                                    <div class="fre-form-close" id="md_user_avatar_browse_button" style="margin-left: 0px; position: relative; z-index: 1;">
                                                        Change picture  
                                                        <div id="html5_1d0ljh1bc54ci516nvfk31ei23_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 1px; left: 308px; width: 102px; height: 16px; overflow: hidden; z-index: 0;">
                                                            <input type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" accept="image/jpeg,.jpg,.jpeg,image/gif,.gif,image/png,.png">
                                                        </div>
                                                    </div>
                                
                                                    <span class="et_ajaxnonce hidden" id="8d8c86cc73"></span>
                                                </div>	
                                                
                                                
                                                
                                                
                                            </div>
					</div>
				
                        </form>
			
                    </div>
                </div>
	</div>
</div>
                                            
<%-- Password Overlay Completed --%>
<div class="modal fade in" id="modal_change_pass" style="display: none;">
    <div id="overlay"></div>
	<div class="modal-dialog">
            <div class="modal-content">
                
                <div class="modal-header">
				
                    <button id="exit-btn-pswd" type="button" class="close" data-dismiss="modal">
                        <i class="fa fa-times"></i>		
                    </button>
                    
                    <h4 class="modal-title">Change your password</h4>
	
                </div>
			
                <div class="modal-body">
                    
                    <form role="form" id="chane_pass_form" class="fre-modal-form auth-form chane_pass_form" method="post" action="profile">
			<input type="hidden" name="form" value="changePassword"/>
                        
                        <div id="div-old-password" class="fre-input-field">
                            <label class="fre-field-title" for="old_password">Current Password</label>
                            <input type="password" class="" id="old_password" name="old_password" placeholder="">
                            <div for="new_password" id="error-pswd-msg" class="message">This field is required.</div>
			</div>
                        
			<div id="div-new-password" class="fre-input-field">
                            <label class="fre-field-title" for="new_password">New Password</label>	
                            <input type="password" class="form-control" id="new_password" name="new_password" placeholder="">
                            <div for="new_password" class="message">This field is required.</div>
                        </div>
                        
                        <div id="div-renew-password" class="fre-input-field no-margin-bottom">
                            <label class="fre-field-title" for="renew_password">Confirm Password</label>
                            <input type="password" class="form-control" id="renew_password" name="renew_password" placeholder="">
                            <div for="renew_password" id="error-msg" class="message">This field is required.</div>
                        </div>
                        
			<div class="fre-form-btn">
                            
                            <div id="update-password-btn"class="fre-normal-btn btn-submit">
                                Update						
                            </div>
						
                            <span class="fre-form-close" id="cancel-btn-pswd" data-dismiss="modal">Cancel</span>
					
                        </div>	
                        
                    </form>

                </div>
                
            </div>
        </div>
</div>

