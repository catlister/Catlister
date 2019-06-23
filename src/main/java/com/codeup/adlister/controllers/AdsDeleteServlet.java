
package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdsDeleteServlet", urlPatterns = "/dashboard")
public class AdsDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object loggedIn = req.getSession().getAttribute("user");

        if (loggedIn == null) {
            resp.sendRedirect("/login");
            return;
        }

        req.setAttribute("ads", DaoFactory.getAdsDao().all());
        req.setAttribute("users", DaoFactory.getUsersDao().allUsers());
        req.getRequestDispatcher("/WEB-INF/users/dashboard.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("cat-id"));
        Ads adsDao = DaoFactory.getAdsDao();
        adsDao.delete(id);
        resp.sendRedirect("/dashboard");
    }
}