var button = document.getElementById("drop-button");

button.addEventListener("click", function() {
    if (button.classList.value === "fre-account dropdown") {                    
        button.classList.add("open");
    } else {
    button.classList.remove("open");  
    } 
});
            
var editButton = document.getElementById("edit-button");
var profile = document.getElementById("cnt-profile-default");
var edit = document.getElementById("ctn-edit-profile");
    
editButton.addEventListener("click", function() {
    if (profile.style.display === "block") {                    
        profile.style.display = "none";
        edit.style.display = "block";
    }
});

var cancel = document.getElementById("cancel-btn");
var profile = document.getElementById("cnt-profile-default");
var edit = document.getElementById("ctn-edit-profile");
    
cancel.addEventListener("click", function() {
    if (profile.style.display === "none") {                    
        profile.style.display = "block";
        edit.style.display = "none";
    }
});

var change = document.getElementById("user_avatar_browse_button");
var photoOverlay = document.getElementById("uploadAvatar");
    
change.addEventListener("click", function() {
    if (photoOverlay.style.display === "none") {                    
        photoOverlay.style.display = "block";
        document.body.style.overflow = "hidden";
    }
});
  
var closePhoto = document.getElementById("close-photo");
            
closePhoto.addEventListener("click", function() {
    if (photoOverlay.style.display === "block") {                    
        photoOverlay.style.display = "none";
        document.body.style.overflow = "";
    }
});          
            
var passwordOverlay = document.getElementById("modal_change_pass");
// Button to display password overlay
var btnPassword = document.getElementById("btn-change-pass");
var exitBtn = document.getElementById("exit-btn-pswd");
var cancelBtn = document.getElementById("cancel-btn-pswd");

btnPassword.addEventListener("click", function() {
    
    if (passwordOverlay.style.display === "none") {                    
        passwordOverlay.style.display = "block";
        document.body.style.overflow = "hidden";
        window.location.href.split('#')[0];
    }
});

exitBtn.addEventListener("click", function() {
    if (passwordOverlay.style.display === "block") {                    
        passwordOverlay.style.display = "none";
        document.body.style.overflow = "";
        window.location.href.split('#')[0];
    }
});

cancelBtn.addEventListener("click", function() {
    if (passwordOverlay.style.display === "block") {                    
        passwordOverlay.style.display = "none";
        document.body.style.overflow = "";
        window.location.href.split('#')[0];
    }
});

var divOldPassword = document.getElementById("div-old-password");
var divNewPassword = document.getElementById("div-new-password");
var divRenewPassword = document.getElementById("div-renew-password");

var updatePassword = document.getElementById("update-password-btn");
var oldPassword = document.getElementById("old_password");
var newPassword = document.getElementById("new_password");
var renewPassword = document.getElementById("renew_password");


updatePassword.addEventListener("click", function() {
    
    if (oldPassword.value === "") {
        divOldPassword.classList.add("error");
    } else {
        divOldPassword.classList.remove("error");
    }
    
    if (newPassword.value === "") {
        divNewPassword.classList.add("error");
    } else {
        
        divNewPassword.classList.remove("error");
        
        if (renewPassword.value === "") {
            divRenewPassword.classList.add("error");
        } else {
            divRenewPassword.classList.remove("error");
        } 
        
        if (newPassword.value !== renewPassword.value) {
            divRenewPassword.classList.add("error");
            document.getElementById("error-msg").innerHTML = "Please enter the same value again.";
        } else {
            document.getElementById('chane_pass_form').submit();
        }
    }
 
});


var switchAvailable = document.getElementById("fre-switch-user-available");

switchAvailable.addEventListener("click", function() {
    
    if (switchAvailable.value === "1") {
        document.getElementById('available_form').submit();
    } else {
        document.getElementById('available_form').submit();
    }
    
});

let editButton = document.getElementById('user_avatar_browse_button');

function editProfile() {
    let profile = document.getElementById('cnt-profile-default');
    let edit = document.getElementById('ctn-edit-profile');
    if (profile.style.display === "block") {
        profile.style.display = "none";
        edit.style.display = "block";
    }
}

function closeEdit() {
    let profile = document.getElementById('cnt-profile-default');
    let edit = document.getElementById('ctn-edit-profile');
    if (profile.style.display === "none") {
        profile.style.display = "block";
        edit.style.display = "none";
    }
}


