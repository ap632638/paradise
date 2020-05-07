<%-- 
    Document   : tviewprofile
    Created on : 13 Oct, 2019, 3:55:37 PM
    Author     : Arun
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="tlgheader.jsp" %>
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
							<th>Staff ID</th>
                                                        <td><% out.println(rs.getString("staff_id")); %></td>
						</tr>
						<tr>
							<th>Name</th>
                                                        <td><% out.println(rs.getString("name")); %></td>
						</tr>
						<tr>
							<th>Qualification</th>
                                                        <td><% out.println(rs.getString("qual"));%></td>
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
				<th>Aadhar Number</th>
				<td><% out.println(rs.getString("aadhar")); %></td>
			</tr>
			<tr>
				<th>Date of Joining</th>
				<td><% out.println(rs.getString("doj")); %></td>
				<th>Contact</th>
				<td><% out.println(rs.getString("contact")); %></td>
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

