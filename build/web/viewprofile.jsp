<%-- 
    Document   : viewprofile
    Created on : 12 Oct, 2019, 2:37:51 PM
    Author     : Arun
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="lgheader.jsp" %>
<% 
   ResultSet rs=(ResultSet)request.getAttribute("profile");
   while(rs.next())
   {
%>
<body>
    <div class="profile">
	<table class="table table-bordered m-auto text-center tmain d-fixed ">
		<thead>
			<tr>
				<th colspan="4"><h3>My Profile</h3></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="3">
					<table class="table table-bordered table-hover m-auto text-center " style="width: 100% !important;">
						<tr>
							<th>Student ID</th>
                                                        <td><% out.println(rs.getString("student_id")); %></td>
						</tr>
						<tr>
							<th>Name</th>
                                                        <td><% out.println(rs.getString("name")); %></td>
						</tr>
						<tr>
							<th>Class</th>
                                                        <td><% out.println(rs.getString("class")+"  ("); if(Integer.parseInt(rs.getString("class"))>10){out.println(rs.getString("subject").toUpperCase()+")");} %></td>
						</tr>
					</table>
				</td>
				<td style="    width: 130px;">
                                    <img src="<% out.println(rs.getString("img")); %>" class="dp" />
				</td>
			</tr>
			<tr>
				<th>Father Name</th>
				<td><% out.println(rs.getString("father")); %></td>
				<th>Mother Name</th>
				<td><% out.println(rs.getString("mother")); %></td>
			</tr>
			<tr>
				<th>Date of Birth</th>
				<td><% out.println(rs.getString("dob")); %></td>
				<th>Contact</th>
				<td><% out.println(rs.getString("contact")); %></td>
			</tr>
			<tr>
				<th>Aadhar Number</th>
				<td><% out.println(rs.getString("aadhar")); %></td>
				<th>SSSMID</th>
				<td><% out.println(rs.getString("sssmid")); %></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><% out.println(rs.getString("address")); %></td>
				<th>Email</th>
				<td><% out.println(rs.getString("email")); %></td>
			</tr>
		</tbody>

	</table>
    </div>
<marquee><span class="error">In case of any invalid data, contact to admin. </span></marquee>
<% } %>
<%@include file="footer.jsp" %>
