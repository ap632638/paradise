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
public class ViewResult extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response){
        HttpSession s=request.getSession();
        try {
        if(s.isNew())
        {
            
                response.sendRedirect("sessionexpired.jsp");
        }
        else{
            String roll=(String) s.getAttribute("roll");
            String clas=(String) s.getAttribute("class");
            int cls= Integer.parseInt(clas);
            String sub=(String) s.getAttribute("sub");
            Connect c=new Connect();
            Connection con=c.getCon();
            Statement smt=con.createStatement();
            if(cls>=1 && cls<=5)
            {
            ResultSet rs=smt.executeQuery("SELECT student.name,student.class,student.father,student.dob,result1_5.mathematics,result1_5.enviromental_studies,result1_5.english,result1_5.hindi,result1_5.computer FROM student INNER JOIN result1_5 ON student.student_id=result1_5.student_id WHERE result1_5.student_id='"+roll+"';");
            request.setAttribute("result", rs);
            RequestDispatcher rd=request.getRequestDispatcher("viewresult1_5.jsp");
            rd.forward(request, response);
            }
            if(cls>=6 && cls<=10){
            ResultSet rs=smt.executeQuery("SELECT student.name,student.class,student.father,student.dob,result6_10.mathematics,result6_10.science,result6_10.social_science,result6_10.hindi,result6_10.english,result6_10.sanskrit FROM student INNER JOIN result6_10 ON student.student_id=result6_10.student_id WHERE result6_10.student_id='"+roll+"';");
            request.setAttribute("result", rs);
            RequestDispatcher rd=request.getRequestDispatcher("viewresult6_10.jsp");
            rd.forward(request, response);
            }
            if((cls==11 || cls==12) && (sub.equals("commerce"))){
                 ResultSet rs=smt.executeQuery("SELECT student.name,student.class,student.father,student.dob,result_commerce.accounts,result_commerce.bussiness_studies,result_commerce.ip,result_commerce.hindi,result_commerce.english FROM student INNER JOIN result_commerce ON student.student_id=result_commerce.student_id WHERE result_commerce.student_id='"+roll+"';");
            request.setAttribute("result", rs);
            RequestDispatcher rd=request.getRequestDispatcher("viewresult_commerce.jsp");
            rd.forward(request, response);
            }
            if((cls==11 || cls==12) && (sub.equals("maths"))){
                ResultSet rs=smt.executeQuery("SELECT student.name,student.class,student.father,student.dob,result_maths.mathematics,result_maths.physics,result_maths.chemistry,result_maths.hindi,result_maths.english FROM student INNER JOIN result_maths ON student.student_id=result_maths.student_id WHERE result_maths.student_id='"+roll+"';");
            request.setAttribute("result", rs);
            RequestDispatcher rd=request.getRequestDispatcher("viewresult_maths.jsp");
            rd.forward(request, response);
            }
            if((cls==11 || cls==12) && (sub.equals("biology"))){
                ResultSet rs=smt.executeQuery("SELECT student.name,student.class,student.father,student.dob,result_bio.biology,result_bio.physics,result_bio.chemistry,result_bio.hindi,result_bio.english FROM student INNER JOIN result_bio ON student.student_id=result_bio.student_id WHERE result_bio.student_id='"+roll+"';");
            request.setAttribute("result", rs);
            RequestDispatcher rd=request.getRequestDispatcher("viewresult_bio.jsp");
            rd.forward(request, response);
            }
        }
        } catch (IOException ex) {
            Logger.getLogger(ViewResult.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ViewResult.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(ViewResult.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
}