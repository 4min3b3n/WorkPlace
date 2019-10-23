package com.ensias.workplace.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import com.ensias.workplace.beans.*;
import com.ensias.workplace.model.*;


@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        // Check if the user is connected.
        if(session.getAttribute("connected") != null && (Boolean) session.getAttribute("connected")) {
            response.sendRedirect("home");
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        Database database = new Database();
        getServletContext().setAttribute("database", database);
        
        User user;
        
        String username = request.getParameter("user_login");
        String password = request.getParameter("user_pass");
        String remember = request.getParameter("remember");
        
        Integer userID = database.logIn(username, password);
        
        if (userID != 0 && userID != -1) {
            
            // Create a new session.
            HttpSession session = request.getSession(true);
            
            // Fetch the user information from the database.
            user = database.getUser(userID);
            
            // Add the userID to the session.
            session.setAttribute("userID", userID);
            session.setAttribute("connected", true);
            session.setAttribute("user", user);
            
            // User is an employer, do..
            if (user instanceof Employer) {
                session.setAttribute("role", "employer");
            }
            
            // User is a freelancer, do..
            if (user instanceof Freelancer) {
                session.setAttribute("role", "freelancer");
            }
            
            if (remember.equals("1")) {
                session.setMaxInactiveInterval(0);
            }
            
            response.sendRedirect("home");
            
        } else {
            
            request.setAttribute("incorrect", "true");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        
        }
        
    }

}
