<%-- 
    Document   : teachportal
    Created on : 9 Oct, 2019, 6:23:53 PM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store");
%>

<%@include file="tlgheader.jsp" %>
<div class="container profile" >
    <h1>Hello <% out.println(s.getAttribute("tname")); %></h1>
    <p style="padding: 50px !important;"> Explore the new world of teaching by providing the best information and knowledge to our students digitally.
        This portal aims to provide you a one step solution to every student with the help of teachers like you.
        You can provide study material in both video and pdf format as per your convinience.
    </p>
</div>


<%@include file="footer.jsp" %>
