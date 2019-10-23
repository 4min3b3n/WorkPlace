var hamburger = document.getElementById("hamburger");

var menu = document.getElementById("fre-hamburger-menu");
var hamburger = document.getElementById("hamburger");

hamburger.addEventListener('click', function() {
    
    if (menu.classList.value === "fre-header-wrapper" && hamburger.classList.value === "hamburger hamburger--elastic") {
        menu.classList.add("active");
        hamburger.classList.add("is-active"); 
    } else {
        menu.classList.remove("active");
        hamburger.classList.remove("is-active");   
    }  
    
});

/*
function openMenu() {
        
    var menu = document.getElementById("fre-hamburger-menu");
    var hamburger = document.getElementById("hamburger");
        
    if (menu.classList.value === "fre-header-wrapper" && hamburger.classList.value === "hamburger hamburger--elastic") {
        menu.classList.add("active");
        hamburger.classList.add("is-active"); 
    } else {
        menu.classList.remove("active");
        hamburger.classList.remove("is-active");   
    }    
                     
}   
*/
   
   
            