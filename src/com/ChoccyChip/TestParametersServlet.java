package com.ChoccyChip;

import com.sun.xml.internal.ws.api.policy.PolicyResolver;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/TestParametersServlet")
public class TestParametersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        /*     This is how you access global application parameters.

        ServletContext context = getServletContext();
        String maxArticles = context.getInitParameter("max-articles");
        String author = context.getInitParameter("Author");
        */

        //this is how you access a servlet specific parameter
        String maxArticles = getInitParameter("max-articles");
        String author =getInitParameter("Author");

        out.println("<html><body>");
        out.println("<p>Max number of articles: " + maxArticles + "</p>");
        out.println("<p>Author: " + author + " </p>");
        out.println("</body></html>");
    }
}
