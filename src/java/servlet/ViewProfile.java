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
public class ViewProfile extends HttpServlet {
    public void doGet(HttpServletRequest request,HttpServletResponse response){
        HttpSession s=request.getSession();
        String check=(String) s.getAttribute("check");
        try {
                if(s.isNew())
                {

                        response.sendRedirect("sessionexpired.jsp");
                }
                else{
                    if(check.equals("1"))
                    {
                        String roll=(String) s.getAttribute("roll");
                        Connect c=new Connect();
                        Connection con=c.getCon();
                        Statement smt=con.createStatement();
                        ResultSet rs=smt.executeQuery("Select * from student where student_id='"+roll+"';");
                        request.setAttribute("profile", rs);
                        RequestDispatcher rd=request.getRequestDispatcher("viewprofile.jsp");
                        rd.forward(request, response);
                    }
                    else{
                        String id=(String) s.getAttribute("teachid");
                        Connect c=new Connect();
                        Connection con=c.getCon();
                        Statement smt=con.createStatement();
                        ResultSet rs=smt.executeQuery("Select * from teacher where staff_id='"+id+"';");
                        request.setAttribute("profile", rs);
                        RequestDispatcher rd=request.getRequestDispatcher("tviewprofile.jsp");
                        rd.forward(request, response);
                    }
                }
            }   
        catch (IOException ex) {
            Logger.getLogger(ViewProfile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ViewProfile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(ViewProfile.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }   
    }


