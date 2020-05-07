<%-- 
    Document   : videocourse
    Created on : 13 Oct, 2019, 5:03:06 PM
    Author     : Arun
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="lgheader.jsp" %>
<%
    ResultSet rs=(ResultSet) request.getAttribute("video");
    
%>
<div class="row profile">
    <% while(rs.next()) { %>
    <div class="col-sm-4">
        <video src="<% out.println(rs.getString("location")); %>" controls></video>
        <h4><% out.println("name"); %></h4>
        <p><% out.println("description"); %></p>
    </div>
    <% }%>
</div>  

<%@include file="footer.jsp" %>
