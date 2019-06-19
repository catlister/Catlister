package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateProfileServlet", urlPatterns = "/update-profile")
public class UpdateProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String preference = request.getParameter("preference");
            String passwordConfirmation = request.getParameter("confirm_password");

            // validate input
            boolean inputHasErrors = email.isEmpty()
                    || preference.isEmpty()
                    || password.isEmpty()
                    || (!password.equals(passwordConfirmation));

            if (inputHasErrors) {
                response.sendRedirect("/update-profile");
                return;
            }

            String hashedPW = BCrypt.hashpw(password, BCrypt.gensalt());

            // update user profile

            // still needs to call a user object session

            DaoFactory.getUsersDao().updateProfile(user);
            response.sendRedirect("/profile");
        }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/update-profile.jsp").forward(request, response);
    }
}
