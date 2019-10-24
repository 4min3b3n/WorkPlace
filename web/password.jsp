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
                <div class="fre-authen-lost-pass">
                    <h2>Reset Your Password</h2>
                    <p>Enter your email address below. We'll look for your account and send you a password reset email.</p>
			<form role="form" id="forgot_form" class="auth-form forgot_form" method="post" action="password">
						<!-- <ul class="fre-validate-error">
							<li>Email doesn't exist</li>
						</ul> -->
                            <div class="fre-input-field">
				<input type="text" id="user_email" name="user_email" placeholder="Your email address">
							<!-- <div class="message">This field is required.</div> -->
                            </div>
                            <div class="fre-input-field">
                                <button class="fre-submit-btn btn-submit primary-bg-color">Send Password Reset</button>
                            </div>
			</form>
			<div class="fre-authen-footer">
                            <p>Already have an account? <a href="login">Log In</a></p>		
			</div>
		</div>
            </div>
	</div>
    </div>
</div>

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/main.js"></script>

    </body>   
</html>