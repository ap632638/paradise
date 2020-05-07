<%-- 
    Document   : stuportal
    Created on : 9 Oct, 2019, 12:52:04 AM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store");
%>

<%@include file="lgheader.jsp" %>
<div class="container profile" >
    <h1>Hello <% out.println(s.getAttribute("sname")); %></h1>
    <p style="padding: 50px !important;"> Explore the new world of learning with the courses provided to you exclusively by the experienced faculties.
        This portal aims to provide you a one step solution to every problem you face while doing the studies.
        We have provided study material in both video and pdf format as per your need.
    </p>
</div>

<script>
    window.history.forward();
	function noBack() { window.history.forward(); }
</script>
<%@include file="footer.jsp" %>