package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Arun
 */
public class logout extends HttpServlet {

   @Override
   public void doGet(HttpServletRequest request,HttpServletResponse response){
       HttpSession sc=request.getSession();
       
       
      String r=(String) sc.getAttribute("check");
       try {
          
            if(r.equals("1"))
            {
                sc.invalidate();
       sc.setMaxInactiveInterval(-10);
                response.sendRedirect("stulogin.jsp");
            }
            else
            {
                sc.invalidate();
       sc.setMaxInactiveInterval(-10);
                response.sendRedirect("teachlogin.jsp");
            }
       } catch (IOException ex) {
           Logger.getLogger(logout.class.getName()).log(Level.SEVERE, null, ex);
       }
   }
}
