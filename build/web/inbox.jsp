<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">

<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="page-template page-template-page-private-message page-template-page-private-message-php page page-id-1652 logged-in two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>

<%
        
    if (session.getAttribute("connected") != null && ((Boolean) session.getAttribute("connected") == true)) {
        %><jsp:include page="JSP/Inbox/conversation.jsp"></jsp:include><%
    } else {
        response.sendRedirect("");
    }

%>
    

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>

<script src="./JS/Modified/main.js"></script>

    </body>
</html>