package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arun
 */
public class Contacts extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String name=request.getParameter("author");
            String email=request.getParameter("email");
            String subject=request.getParameter("subject");
            String msg=request.getParameter("comment");
             Connect c=new Connect();
            Connection con=c.getCon();
            Statement smt=null;
            smt=con.createStatement();
            smt.executeUpdate("INSERT INTO contact(name,email,subject,msg) VALUES('"+name+"','"+email+"','"+subject+"','"+msg+"');");
            request.setAttribute("flag","true");
            RequestDispatcher rd=request.getRequestDispatcher("contact.jsp");
             response.setHeader("Cache-Control", "no-cache, no-store");
            rd.forward(request,response);
        } catch (SQLException ex) {
            Logger.getLogger(Contacts.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
