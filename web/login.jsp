<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">
    
<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="page-template page-template-page-login page-template-page-login-php page page-id-1614 two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>      

<div class="fre-page-wrapper">
    <div class="fre-page-section">
        <div class="container">
            <div class="fre-authen-wrapper">
                
                <div class="fre-authen-login">
                    
                    <h2>Log into Your Account</h2>
                        
                    <form role="form" id="signin_form" class="" novalidate="novalidate" action="login" method="post">
                            
                    <%  String incorrect = (String) request.getAttribute("incorrect");
                        if (incorrect == "true") {      %>       
                                <ul class="fre-validate-error">
                                    <li>Invalid username or password.</li>
                                </ul>
                    <%  }   %>    
                                
                        <div class="fre-input-field" id="user_login_div">        
                            <input type="text" id="user_login" name="user_login" placeholder="Username or Email">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
                                
                        <div class="fre-input-field" id="user_pass_div">
                            <input type="password" id="user_pass" name="user_pass" placeholder="Password">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
                                
                        <div class="fre-input-field">
                            <div id="log-in-submit" class="btn-submit fre-submit-btn primary-bg-color">Log In</div>
                        </div>
                                
                        <div class="fre-input-field">
                            <label class="fre-checkbox login-remember" for="remember">
                                <input type='hidden' value='0' name='remember'>
                                <input id="remember" name="remember" value="1" type="checkbox">
                                <span>Remember me</span>
                            </label>
                        </div>
                                
                    </form>
                                      
                    <div class="fre-login-social">
                        <p>You can use your social account to log in</p>
                        <ul class="login-social-list">
                            <li id="facebook">
                                <a href="#" class="fb facebook_auth_btn ">    
                                    <i class="fa fa-facebook-square"></i>
                                    <span class="social-text">Facebook</span>
                                </a>
                            </li>
                        </ul>
        	    </div>
                                
                    <div class="fre-authen-footer">
                        <div class="not-yet-register">
                            <a href="register" class="">Not yet register?</a>   
                        </div>
                        <div class="forgot-password">
                            <a href="password" class="">Forgot password?</a>   
                        </div>
                    </div>
                                
                        
                </div>    
            </div>
        </div>
    </div>
</div>

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/Modified/index.js"></script>
<script src="./JS/Modified/login.js"></script>

    </body>    
</html>