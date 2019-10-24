/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensias.workplace.controller.employer;

import com.ensias.workplace.beans.Project;
import com.ensias.workplace.model.Database;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 4min3b3n
 */
@WebServlet(name = "Post", urlPatterns = {"/post"})
public class Post extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);

        if(session.getAttribute("connected") != null) {
            request.getRequestDispatcher("post.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        Database database = (Database) getServletContext().getAttribute("database");
        
        String title = request.getParameter("post_title");
        Float budget = Float.parseFloat(request.getParameter("et_budget"));
        String description = request.getParameter("description");
        String country = request.getParameter("country");
        
        Integer userID = (Integer) session.getAttribute("userID");
        
        Project project = new Project();
        
        project.setOwnerID(userID);
        project.setTitle(title);
        project.setBudget(budget);
        project.setDescription(description); 
        project.setCountry(country);
                
        if (database.toDatabase(project) != -1) {
           response.sendRedirect("home");
        } else {
            request.getRequestDispatcher("post.jsp").forward(request, response);
        }
        
    }
        
        
    

    
}
