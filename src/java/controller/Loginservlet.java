/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import service.Loginservice;
/**
 *
 * @author Harry Poter
 */
public class Loginservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     PrintWriter out=response.getWriter();
     String username = request.getParameter("username");    
     String password = request.getParameter("password");
     Loginservice loginService = new Loginservice();
     boolean result = loginService.authenticateUser(username, password);
     User user = loginService.getUserByUserId(username);
     if(result == true){
         out.println("<html>");
         out.println("<head>");       
         out.println("<title>Login Successful</title>");     
         out.println("</head>");
         out.println("<body>");
         out.println("<center>");
         out.println("<h1>login Successfull</h1>");
     }
     else if(username==(request.getParameter("username")) && password!=(request.getParameter("password")))
     {
         out.println("<h1>Invalid Password</h1>");
     }
     else if(username!=(request.getParameter("username")) && password==(request.getParameter("password")))
     {
         out.println("<h1>Invalid Username</h1>");
     }
     else{
         out.println("<h1>Invalid Credentials</h1>");
     }
    }
}

