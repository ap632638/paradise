/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Arun
 */
public class login extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request,HttpServletResponse response) {
        try {
            Connect c=new Connect();
            Connection con=c.getCon();
            Statement smt=null;
            ResultSet rs=null;
            smt=con.createStatement();
            String opt=request.getParameter("opt");
           
            if(opt.equals("1"))
            {
                rs=smt.executeQuery("SELECT * FROM student where (student_id='"+request.getParameter("uname")+"' OR email='"+request.getParameter("uname")+"') AND password=md5('"+request.getParameter("upass")+"');");
                if(rs.next()){
                   HttpSession s=request.getSession();
                  /* s.setMaxInactiveInterval(60);*/
                   s.setAttribute("check","1");
                   s.setAttribute("sname",rs.getString("name"));
                   s.setAttribute("roll",rs.getString("student_id"));
                   s.setAttribute("class", rs.getString("class"));
                   s.setAttribute("sub",rs.getString("subject"));
                   response.sendRedirect("stuportal.jsp");
                }
                else{
                    RequestDispatcher rd=request.getRequestDispatcher("slogin_fail.jsp");
                    rd.forward(request, response);
                }
            }
            else{
                 rs=smt.executeQuery("SELECT * FROM teacher where (staff_id='"+request.getParameter("uname")+"' OR email='"+request.getParameter("uname")+"') AND password=md5('"+request.getParameter("upass")+"');");
                if(rs.next()){
                   HttpSession s=request.getSession();
                   /*s.setMaxInactiveInterval(60);*/
                   s.setAttribute("check", "2");
                   s.setAttribute("tname",rs.getString("name"));
                   s.setAttribute("teachid",rs.getString("staff_id"));
                   response.sendRedirect("teachportal.jsp");
                }
                else{
                    RequestDispatcher rd=request.getRequestDispatcher("tlogin_fail.jsp");
                    rd.forward(request, response);
                }
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}