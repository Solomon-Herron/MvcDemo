package com.mvc;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/MvcDemoServlet")
public class MvcDemoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Step1: Get the User data from the model (userdatautil)
                //pull data structure from a seperate class that queries database, or calls api
        List<User> users = UserDataUtil.getUsers();

        //Step2: bind queried data to response.
        //setAttribute allows you to append objects/data structures to the request object, and send it to the jsp. The method signature allows you to give the object a name, you must supply object as second parameter
        request.setAttribute("user_list", users);

        //step3: get request dispatcher
        RequestDispatcher dispatcher = request.getRequestDispatcher("users-mvcdemo.jsp");

        //step4: forward to JSP
        dispatcher.forward(request, response);
    }
}
