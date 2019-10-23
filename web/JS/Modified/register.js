var firstName = document.getElementById("first_name");
var lastName = document.getElementById("last_name");
var email = document.getElementById("user_email");
var username = document.getElementById("user_login");
var password = document.getElementById("user_pass");
var repeatedPassword = document.getElementById("repeat_pass");
            
var firstNameInput = document.getElementById("first_name_div");
var lastNameInput = document.getElementById("last_name_div");
var emailInput = document.getElementById("user_email_div");
var usernameInput = document.getElementById("user_login_div");            
var passwordInput = document.getElementById("user_pass_div");
var repeatedPasswordInput = document.getElementById("repeat_pass_div");
            
            
firstName.addEventListener('input', function() {
    if(firstName === "") {
        firstNameInput.classList.add("error");
    } else {
        firstNameInput.classList.remove("error");
    }
});
            
lastName.addEventListener('input', function() {
    if(lastName === "") {
        lastNameInput.classList.add("error");
    } else {
        lastNameInput.classList.remove("error");
    }
});
            
email.addEventListener('input', function() {
    if(email === "") {
        emailInput.classList.add("error");
    } else {
        emailInput.classList.remove("error");
    }
});
            
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
            
repeatedPassword.addEventListener('input', function() {
    if(repeatedPassword === "") {
        repeatedPasswordInput.classList.add("error");
    } else {
        repeatedPasswordInput.classList.remove("error");
    }
});







function submit() {
                
    var firstName = document.getElementById("first_name").value;
    var lastName = document.getElementById("last_name").value;
    var email = document.getElementById("user_email").value;
    var username = document.getElementById("user_login").value;
    var password = document.getElementById("user_pass").value;
    var repeatedPassword = document.getElementById("repeat_pass").value;

    var firstNameInput = document.getElementById("first_name_div");
    var lastNameInput = document.getElementById("last_name_div");
    var emailInput = document.getElementById("user_email_div");
    var usernameInput = document.getElementById("user_login_div");
    var passwordInput = document.getElementById("user_pass_div");
    var repeatedPasswordInput = document.getElementById("repeat_pass_div");

        if(firstName === "") {
            firstNameInput.classList.add("error");
        } else {
            firstNameInput.classList.remove("error");
        }

        if (lastName === "") {
            lastNameInput.classList.add("error");
        } else {
            lastNameInput.classList.remove("error");
        }

        if(email === "") {
            emailInput.classList.add("error");
        } else {
            emailInput.classList.remove("error");
        }

        if (username === "") {
            usernameInput.classList.add("error");
        } else {
            usernameInput.classList.remove("error");
        }

        if(password === "") {
            passwordInput.classList.add("error");
        } else {
            passwordInput.classList.remove("error");
        }

        if (repeatedPassword === "") {
            repeatedPasswordInput.classList.add("error");
        } else {
            repeatedPasswordInput.classList.remove("error");
        }

        if (firstName !== "" && lastName !== "" && 
            email !== "" && username !== "" && 
            password !== "" && repeatedPassword !== "") {
            document.getElementById('signup_form').submit();
        }            
                
}