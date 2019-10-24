package com.ensias.workplace.controller;

import com.ensias.workplace.model.Database;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "MyProjects", urlPatterns = {"/my-projects"})
public class MyProjects extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        if (session.getAttribute("role").equals("freelancer")) {
            request.getRequestDispatcher("myprojects2.jsp").forward(request, response);
        } else if (session.getAttribute("role").equals("employer"))  {
            request.getRequestDispatcher("myprojects.jsp").forward(request, response);
        } else {
            response.sendRedirect("");
        }
        
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        HttpSession session = request.getSession(false);
        
        Database database = new Database();
        
        String form = request.getParameter("form");
        
        if (form.equals("deleteProject")) {
            Integer projectID = Integer.valueOf(request.getParameter("project-id"));
            database.deleteProject(projectID);
            response.sendRedirect("my-projects");
            
        } 
        
        if (form.equals("archiveProject")) {
            Integer projectID = Integer.valueOf(request.getParameter("project-id-archive"));
            database.archiveProject(projectID);
            response.sendRedirect("my-projects");
        }
        
    }

}