/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class AddStudent extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connect c=new Connect();
            Connection con=c.getCon();
            Statement smt=con.createStatement();
            int i=smt.executeUpdate("Insert Into student(student_id,name,class,subject,father,mother,aadhar,sssmid,address,contact,email,dob,password) values('"+request.getParameter("sid")+"','"+request.getParameter("sname")+"','"+request.getParameter("clas")+"','"+request.getParameter("sub")+"','"+request.getParameter("fname")+"','"+request.getParameter("mname")+"','"+request.getParameter("aadhar")+"','"+request.getParameter("sssmid")+"','"+request.getParameter("address")+"','"+request.getParameter("contact")+"','"+request.getParameter("email")+"','"+request.getParameter("dob")+"',md5('"+request.getParameter("pass")+"'));");
            if(i>0){
               RequestDispatcher rd=request.getRequestDispatcher("successadd.jsp");
               rd.forward(request,response);
            }
     
        } catch (SQLException ex) {
            Logger.getLogger(AddStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    

