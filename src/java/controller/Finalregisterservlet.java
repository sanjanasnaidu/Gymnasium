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
import model.Finalregister;
import service.Finalregisterservice;

/**
 *
 * @author Harry Poter
 */
public class Finalregisterservlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
     PrintWriter out = response.getWriter();
     String fname = request.getParameter("fname");
     String lname = request.getParameter("lname");
     String gender = request.getParameter("gender");
     String contact = request.getParameter("contact");
     String email = request.getParameter("email");
     String slot = request.getParameter("slot");
     String packages = request.getParameter("packages");
     String price = request.getParameter("price");
     String instructor = request.getParameter("instructor");
     
     Finalregister user = new Finalregister(fname,lname,gender,contact,email,slot,packages,price,instructor);
             
     try {  
         Finalregisterservice registerService = new Finalregisterservice();
         boolean result = registerService.register(user);       
         out.println("<html>");
         out.println("<head>");       
         out.println("<title>Registration Successful</title>");     
         out.println("</head>");
         out.println("<body>");
         out.println("<center>");
         if(result){
             out.println("<h1>Thanks for Registering with us</h1>");
             out.println("<br><h3>Go back to the <a href='home.jsp'>Home page</a></h3>");
         }else{
             out.println("<h1>Registration Failed</h1>");
         }
         out.println("</center>");
         out.println("</body>");
         out.println("</html>");
     } finally {        
         out.close();
     }
    }
}