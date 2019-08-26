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
        String userID = request.getParameter("user-id");
        String username = request.getParameter("username");
        String profile_image = request.getParameter("profile_image");
        String email = request.getParameter("email");
        String preference = request.getParameter("preference");

        // Parse ID
        long id = Integer.parseInt(userID);

        User user = new User(id, username, email, preference, profile_image);
        DaoFactory.getUsersDao().updateProfile(user);
        response.sendRedirect("/profile");

//        request.getSession().removeAttribute("user");
//        request.getSession().invalidate();
//        request.getRequestDispatcher("/login").forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/users/update-profile.jsp").forward(request, response);
    }
}
