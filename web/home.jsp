<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">
    
<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="home page-template page-template-page-home-new page-template-page-home-new-php page page-id-1617 logged-in two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>      

    <%
        if (session.getAttribute("connected") != null && ((Boolean) session.getAttribute("connected") == true)) {
            if (session.getAttribute("role").equals("freelancer")) {
    %>          <jsp:include page="JSP/Freelancer/home.jsp"></jsp:include> <%
            } else if (session.getAttribute("role").equals("employer")) {
    %>          <jsp:include page="JSP/Employer/home.jsp"></jsp:include> <%
            }
        } else {
            response.sendRedirect("");
        }
    %>

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/Modified/main.js"></script>
              
    </body>
</html>