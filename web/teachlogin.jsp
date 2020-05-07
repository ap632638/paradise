<%-- 
    Document   : teachlogin
    Created on : 9 Oct, 2019, 5:09:42 PM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
 <!-- Page breadcrumb -->
 <section id="mu-page-breadcrumb">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-page-breadcrumb-area">
           <h2>Login</h2>
           <ol class="breadcrumb">
            <li><a href="index.jsp">Home</a></li> 
            <li><a href="#">Login</a></li> 
            <li class="active">Teacher Login</li>
          </ol>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- End breadcrumb -->
 <table  align="center" class="table table-borderless table-condensed table-hover mt-5">
     <form method="post" action="/paradise/login" >
         <thead>
             <tr><td colspan="2"><h3 class="text-center">Teacher Login</h3></td></tr>
         </thead>
         <tbody>
            <tr>
         <input type="text" value="2" name="opt" hidden="true"/>
                <td><label>Username</label></td>
                <td><input type="text" class="form-control" name="uname" id="uname" autofocus="on" placeholder="Enter email or staff id"/></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td><input type="password" class="form-control" name="upass" id="upass"placeholder="Enter password"/> </td>
            </tr>
         </tbody>
         <tfoot>
             <tr>
                 <td colspan="2">
                     <input type="submit" class="btn btn-primary btn-block" name="submit" value="Sign In"/>
                 </td>
             </tr>
         </tfoot>
     </form>
 </table>
 <marquee><span class="error">In case you forget password, contact to the admin.</span></marquee>
<%@include file="footer.jsp" %>
