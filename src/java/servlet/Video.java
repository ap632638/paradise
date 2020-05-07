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
public class Video extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        try {
            HttpSession s=request.getSession();
            String clas= (String) s.getAttribute("class");
            Connect c=new Connect();
            Connection con=c.getCon();
            Statement smt=con.createStatement();
            ResultSet rs=smt.executeQuery("Select * from courses where type='vd' and class='"+clas+"';");
            request.setAttribute("video",rs);
            RequestDispatcher rd=request.getRequestDispatcher("videocourse.jsp");
            rd.forward(request,response);
        } catch (SQLException ex) {
            Logger.getLogger(Video.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(Video.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Video.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }
            }