<div class="fre-page-wrapper">		
    <div class="fre-page-section">
        <div class="container">
            <div class="fre-authen-wrapper">
                <div class="fre-authen-register">

                    <h2>Sign Up Freelancer Account</h2>
                    
                    <form action="register" method="post" role="form" id="signup_form">
		
                        <input type="hidden" name="role" id="role" value="freelancer" />
			
                        <div class="fre-input-field">        
                            <input type="text" name="firstName" id="first_name" placeholder="First Name">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
			
                        <div class="fre-input-field">
                            <input type="text" name="lastName" id="last_name" placeholder="Last Name">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
			
                        <div class="fre-input-field">
                            <input type="text" name="email" id="user_email" placeholder="Email">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
			
                        <div class="fre-input-field">
                            <input type="text" name="username" id="user_login" placeholder="Username">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
			
                        <div class="fre-input-field">
                            <input type="password" name="password" id="user_pass" placeholder="Password">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
                        
                        <div class="fre-input-field">
                            <input type="password" name="repeatedPassword" id="repeat_pass" placeholder="Confirm Your Password">
                            <div for="user_pass" class="message">This field is required.</div>
                        </div>
                        
                        <div class="fre-input-field">
                            <button class="fre-btn btn-submit primary-bg-color">Sign Up</button>
                        </div>
                        
                    </form>
                    
                    <p>By signing up to create an account I accept the 
                        <a href="terms-of-service" class="secondary-color">Term of Use and Privacy policy</a>
                    </p>						
                    
                    <div class="fre-authen-footer">
                        <p>Already have an account? 
                            <a href="login" class="secondary-color">Log In</a>
                        </p>   
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div> 