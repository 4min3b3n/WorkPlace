package com.ensias.workplace.controller.freelancer;

import com.ensias.workplace.beans.Freelancer;
import com.ensias.workplace.beans.Project;
import com.ensias.workplace.model.Database;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Projects", urlPatterns = {"/projects"})
public class Projects extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        if(session.getAttribute("connected") != null && (Boolean) session.getAttribute("connected")) {
                
            Database database = (Database) getServletContext().getAttribute("database");

            ArrayList<Project> projects = database.getProjects();

            request.setAttribute("projects", projects);
            
            request.getRequestDispatcher("projects.jsp").forward(request, response);

        } else {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

}