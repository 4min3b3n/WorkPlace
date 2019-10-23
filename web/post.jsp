<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">

<jsp:include page="./JSP/head.jsp"></jsp:include>

<body class="page-template page-template-page-submit-project page-template-page-submit-project-php page page-id-6 logged-in two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>


<div class="fre-page-wrapper">
    <div class="fre-page-title">
        <div class="container">
            <h2>Post Project</h2>
        </div>
    </div>
    
    <div class="fre-page-section">
        <div class="container">
            <div class="page-post-project-wrap" id="post-place">
                           
                <jsp:include page="JSP/Project/details.jsp"></jsp:include>
                 
            </div>
        </div>
    </div>
    
</div>




<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/Modified/main.js"></script>

    </body>
</html>