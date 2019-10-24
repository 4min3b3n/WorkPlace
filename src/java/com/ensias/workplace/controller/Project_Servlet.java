package com.ensias.workplace.controller;

import com.ensias.workplace.beans.Bid;
import com.ensias.workplace.beans.Employer;
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

@WebServlet(name = "Project", urlPatterns = {"/project"})
public class Project_Servlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
        HttpSession session = request.getSession(false);

            if(session.getAttribute("connected") != null) {
                
                Database database = new Database();
                
                Integer projectID = Integer.valueOf(request.getParameter("id"));
                
                Project project = database.getProject(projectID);
                
                if (session.getAttribute("role").equals("employer")) {
                    
                    
                    Employer owner = (Employer) database.getUser(project.getOwnerID()); 
                    session.setAttribute("owner", owner);

                    // TODO: Bids
                    ArrayList<Bid> bids = database.getBids(project.getProjectID());
                    session.setAttribute("bids", bids);
                        
                    
                    
                } else  {
                    
                }
                
                session.setAttribute("project", project);
                
                request.getRequestDispatcher("project.jsp").forward(request, response);
                
            } else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        
        Database database = new Database();
        
        String form = request.getParameter("form");

        if (session.getAttribute("role") == "freelancer") {
            
            if (form.equals("bid")) {
                
                Bid bid = new Bid();
                
                bid.setBid(Integer.valueOf(request.getParameter("bid_budget")));
                bid.setDelivery(Integer.valueOf(request.getParameter("bid_time")));
                bid.setNote(request.getParameter("bid_content"));
                bid.setProjectID(Integer.valueOf(request.getParameter("projectID")));
                bid.setFreelancerID(Integer.valueOf(request.getParameter("freelancerID")));
                
                if (database.bid(bid)) {
                    response.sendRedirect("project?id="+request.getParameter("projectID"));
                } else {
                    response.sendRedirect("home");
                }
                
            }
        } 

    }

    

}
