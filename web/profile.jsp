<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class=" js csstransitions">

<jsp:include page="JSP/head.jsp"></jsp:include>

<body class="page-template page-template-page-profile page-template-page-profile-php page page-id-5 logged-in two-column right-sidebar">

<jsp:include page="JSP/header.jsp"></jsp:include>


<%
    String role = (String) session.getAttribute("role");
    String profileID = (String) request.getParameter("id");
    if (profileID == null) {
        if (role.equals("freelancer")) {
%>          <jsp:include page="JSP/Profile/freelancer.jsp"></jsp:include>   <%
        } else if (role.equals("employer")) {
%>         <jsp:include page="JSP/Profile/employer.jsp"></jsp:include>      <%
        }
    } else {
%>        <jsp:include page="JSP/Profile/other.jsp"></jsp:include>          <%
    }
%>    
    
<jsp:include page="JSP/Profile/overlay.jsp"></jsp:include>

<jsp:include page="JSP/footer.jsp"></jsp:include>

<jsp:include page="JSP/copyright.jsp"></jsp:include>



<script>
    
    let Form = document.getElementById("ctn-edit-experience");
    let addBtn = document.getElementById("fre-empty-experience");

    function openNewExperience() {
        addBtn.style.display = "none";
        Form.style.display = "list-item";
    }
    
    function closeNewExperience() {
        addBtn.style.display = "block";
        Form.style.display = "none";
    }
    
    
    
    
</script>

    </body>
</html>