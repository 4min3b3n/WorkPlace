package com.ensias.workplace.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/***
 * Home Servlet Used to Load Application.
 * @author 4min3b3n
 */
public class Home extends HttpServlet {

    @Override
    protected final void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        HttpSession session = request.getSession(false);
        // Check if Session is open
        if (session != null) {
            if(session.getAttribute("connected") != null && (Boolean) session.getAttribute("connected")) {
                // Reload Home Page
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("home.jsp").forward(request, response);
                
            }
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException { }

}