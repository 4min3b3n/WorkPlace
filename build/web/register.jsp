<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">
    
<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="page-template page-template-page-login page-template-page-login-php page page-id-1614 two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>      

    <%
    String role = request.getParameter("role");
    if (role == null) {
    %> <jsp:include page="JSP/Register/main.jsp"></jsp:include>  <%      
    } else {
        if (role.equals("freelancer")) {
    %> <jsp:include page="JSP/Register/freelancer.jsp"></jsp:include> <%
        } else if (role.equals("employer")) {
    %> <jsp:include page="JSP/Register/employer.jsp"></jsp:include>  <%
        }
    }    
    %>

<jsp:include page="JSP/footer.jsp"></jsp:include>
<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/Modified/index.js"></script>
<script src="./JS/Modified/register.js"></script>

    </body> 
</html>