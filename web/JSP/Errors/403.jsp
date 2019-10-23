<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">

<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="home page-template page-template-page-home-new page-template-page-home-new-php page page-id-1617 two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>

<section class="blog-header-container">
    <div class="container">
	<div class="row">
            <div class="col-md-12 blog-classic-top">
                <h2>Forbidden</h2>
            </div>
	</div>
    </div>
</section>

<div class="container">
    <div class="page-notfound-content">
        <h2>403 Error</h2>
        <h4>Sorry, you don't have permission to access this resource on this server!</h4>
        <p>Go back to <a href="./">home</a> page or return to <a href="#" onclick="window.history.back()">previous</a> page.</p>
    </div>
</div>

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script>
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
</script>


    </body>
</html>