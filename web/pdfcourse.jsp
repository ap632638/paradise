<%-- 
    Document   : pdfcourse
    Created on : 13 Oct, 2019, 5:23:06 PM
    Author     : Arun
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="lgheader.jsp" %>
<%
    Connect c=new Connect();
    Connection con=c.getCon();
    Statement smt=con.createStatement();
    ResultSet rs=smt.executeQuery("select * from courses where type='pdf' and class='"+s.getAttribute("class")+"';");
    
%>
<div class="container profile">
    <table class="table table-bordered table-hover table-responsive" align="center">
        <% while(rs.next()){ %>
        <tr>
            <td id="namm"> <% out.println(rs.getString("name")); %></td>
            <td><% out.println(rs.getString("description")); %></td>
            <td> <a href="" class="btn btn-info btn-block">Download</a></td>
        </tr>
        <% } %>
    </table>
</div> 
</div>
<script>
    if(document.getElementById('namm').value==="")
    {
        alert('nothing');
    }
</script>
<%@include file="footer.jsp" %>

