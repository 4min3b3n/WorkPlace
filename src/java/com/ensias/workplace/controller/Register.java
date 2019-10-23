package com.ensias.workplace.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ensias.workplace.beans.Employer;
import com.ensias.workplace.beans.Freelancer;
import com.ensias.workplace.beans.User;
import com.ensias.workplace.model.Database;


@WebServlet(name="Register", urlPatterns={"/register"})
public class Register extends HttpServlet {

       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
                       
        if(session.getAttribute("connected") != null && (Boolean) session.getAttribute("connected")) {
            response.sendRedirect("home");
        } else {
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        Database database = new Database();
        getServletContext().setAttribute("database", database);
        
        User user;
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repeatedPassword = request.getParameter("repeatedPassword");
        
        String role = request.getParameter("role");
        
        if (role.equals("freelancer")) {
            
            user = new Freelancer();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setUsername(username);
            
            if (password.equals(repeatedPassword)) {
                
                user.setPassword(password);
                
                int userID = database.signUp(user);
                
                if (userID != -1) {
            
                    HttpSession session = request.getSession();
                    
                    session.setAttribute("userID", userID);
                    
                    user = database.getUser(userID);
                    session.setAttribute("user", user);

                    session.setAttribute("connected", true);

                    session.setAttribute("username", username);
                    session.setAttribute("password", password);
                    
                    session.setAttribute("role", "freelancer");
                    
                    response.sendRedirect("home");
                                      
                } else {
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            }
            
        } else if (role.equals("employer")) {
            
            user = new Employer();
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setUsername(username);
            
            if (password.equals(repeatedPassword)) {
                user.setPassword(password);
                
                int userID = database.signUp(user);
                
                if (userID != -1) {
            
                    HttpSession session = request.getSession();
                    
                    session.setAttribute("userID", userID);
                    
                    user = database.getUser(userID);
                    session.setAttribute("user", user);

                    session.setAttribute("connected", true);

                    session.setAttribute("username", username);
                    session.setAttribute("password", password);
                    
                    session.setAttribute("role", "employer");
                    
                    response.sendRedirect("home");
                    
                } else {
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            }
            
        } 
            
    }

}
