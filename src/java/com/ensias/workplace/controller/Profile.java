/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensias.workplace.controller;

import com.ensias.workplace.beans.Experience;
import com.ensias.workplace.beans.Freelancer;
import com.ensias.workplace.model.Database;
import com.ensias.workplace.model.Security;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Profile", urlPatterns = {"/profile"})
public class Profile extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected final void doGet(
            HttpServletRequest request, 
            HttpServletResponse response) 
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        Database database = (Database) getServletContext().getAttribute("database");

        String profileID = (String) request.getParameter("id");

        if (profileID != null) {
            
            Integer id = Integer.valueOf(profileID);
            
            Freelancer user = (Freelancer) database.getUser(id);
            request.setAttribute("user", user);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
            
        }
        
        request.getRequestDispatcher("profile.jsp").forward(request, response);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        
        Database database = new Database();
        
        String form = request.getParameter("form");

        if (session.getAttribute("role") == "freelancer") {
            
            if (form.equals("changeProfile")) {

                String firstName = request.getParameter("first_name");
                String lastName = request.getParameter("last_name");
                String headline = request.getParameter("headline");
                String description = request.getParameter("description");
                String country = request.getParameter("country");
                Float hourly = Float.valueOf(request.getParameter("hour_rate"));
                Integer yearsExperience = Integer.valueOf(request.getParameter("experience"));

                database.changeFirstName((Integer) session.getAttribute("userID"), firstName);
                database.changeLastName((Integer) session.getAttribute("userID"), lastName);
                database.changeHeadline((Integer) session.getAttribute("userID"), headline);
                database.changeDescription((Integer) session.getAttribute("userID"), description);
                database.changeCountry((Integer) session.getAttribute("userID"), country);
                database.changeHourly((Integer) session.getAttribute("userID"), hourly);
                database.changeYearsExperience((Integer) session.getAttribute("userID"), yearsExperience);

                session.setAttribute("user", country);
                
                response.sendRedirect("profile");
            
            }


            if (form.equals("changePassword")) {

                String oldPassword = request.getParameter("old_password");
                String newPassword = request.getParameter("new_password");
                String renewPassword = request.getParameter("renew_password");

                oldPassword = Security.MD5(oldPassword);

                if (database.verifyPassword((Integer) session.getAttribute("userID")).equals(oldPassword)) {
                    if (newPassword.equals(renewPassword)) {
                        database.changePassword((Integer) session.getAttribute("userID"), newPassword);
                        request.getRequestDispatcher("profile.jsp").include(request, response);
                    }
                }

            }

            if (form.equals("changeAvailable")) {

                database.changeAvailable( (Integer) (session.getAttribute("userID")));
                response.sendRedirect("profile");
                
            }
            
            if (form.equals("addNewExperience")) {

                String title = request.getParameter("work_experience[title]");
                String company = request.getParameter("work_experience[company]");
                String description = request.getParameter("work_experience[content]");
                String startDate = request.getParameter("work_experience[from-period]");
                String endDate = request.getParameter("work_experience[to-period]");

                Experience experience = new Experience();

                experience.setTitle(title);
                experience.setStartDate(startDate);
                experience.setEndDate(endDate);
                experience.setCompany(company);
                experience.setDescription(description);

                if (database.newExperience((Integer) session.getAttribute("userID"), experience)) {
                    response.sendRedirect("profile");
                }

            }
            
        } else if (session.getAttribute("role") == "employer") {
            
            
            if (form.equals("changeProfile")) {
                
                String firstName = request.getParameter("first_name");
                String lastName = request.getParameter("last_name");
                String headline = request.getParameter("headline");
                String description = request.getParameter("description");
                String country = request.getParameter("country");
                
                database.changeFirstName((Integer) session.getAttribute("userID"), firstName);
                database.changeLastName((Integer) session.getAttribute("userID"), lastName);
                database.changeHeadline((Integer) session.getAttribute("userID"), headline);
                database.changeDescription((Integer) session.getAttribute("userID"), description);
                database.changeCountry((Integer) session.getAttribute("userID"), country);
                
                response.sendRedirect("profile");
            }
                 
            // session.setAttribute("user", country);

        }
        

    }
            

}
