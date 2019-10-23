package com.ensias.workplace.controller.employer;

import com.ensias.workplace.beans.Freelancer;
import com.ensias.workplace.model.Database;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author amine
 */
@WebServlet(name = "Freelancers", urlPatterns = {"/freelancers", "/profiles"})
public class Freelancers extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        if(session.getAttribute("connected") != null && (Boolean) session.getAttribute("connected")) {
                
            Database database = (Database) getServletContext().getAttribute("database");

            ArrayList<Freelancer> freelancers = database.getFreelancers();

            request.setAttribute("freelancers", freelancers);

            request.getRequestDispatcher("freelancers.jsp").forward(request, response);

        } else {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        
    }
        
        
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    }


}
