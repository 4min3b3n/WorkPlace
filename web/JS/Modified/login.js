var username = document.getElementById("user_login");
var password = document.getElementById("user_pass");
            
var usernameInput = document.getElementById("user_login_div");
var passwordInput = document.getElementById("user_pass_div");
            
username.addEventListener('input', function() {
    if(username === "") {
        usernameInput.classList.add("error");
    } else {
        usernameInput.classList.remove("error");
    }
});
            
password.addEventListener('input', function() {
    if(password === "") {
        passwordInput.classList.add("error");
    } else {
        passwordInput.classList.remove("error");
    }
});

var submitBtn = document.getElementById("log-in-submit");

submitBtn.addEventListener('click', function() {
    
    var usernameInputValue = document.getElementById("user_login").value;
    var passwordInputValue = document.getElementById("user_pass").value;
    
    if(usernameInputValue === "") {
        usernameInput.classList.add("error");
    } else {
        usernameInput.classList.remove("error");
    }
                
    if (passwordInputValue === "") {
        passwordInput.classList.add("error");
    } else {
        passwordInput.classList.remove("error");
    }
                
    if (usernameInputValue !== "" && passwordInputValue !== "") {
        document.getElementById('signin_form').submit();
    }
    
});
