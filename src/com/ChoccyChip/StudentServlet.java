package com.ChoccyChip;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //set content type
        response.setContentType("text/html");
        //get print writer
        PrintWriter out = response.getWriter();
        //generate html content
        out.println("<html><body>");
        out.println("<p>The student " + request.getParameter("firstName") + " " + request.getParameter("lastName") + " is confirmed.</p>" );
        out.println("</html></body>");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
