<%-- 
    Document   : viewresult6_10
    Created on : 11 Oct, 2019, 8:55:28 AM
    Author     : Arun
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="lgheader.jsp" %>
<% 
    ResultSet rs=(ResultSet) request.getAttribute("result");
    ResultSetMetaData rsMetaData = rs.getMetaData();
   
    while(rs.next())
    {
%>
<div class="row" style="transform: translate(-270px, 60px); float: right;">
    <div class="col-sm-3">
    <button class="butn btn btn-primary float-right" onclick="printData();">Print</button> 
    </div>
</div>
<div class="rslt">
        <table border="1px"style="text-align: center; border-collapse: collapse; height: 500px;" align="center" id="rslt" class="table table-bordered  m-auto text-center tmain">
                        <thead>
                                <tr>
                                        <td colspan="2">
                                            <span><img src="<% ServletContext sc=request.getServletContext();
                                                             out.println(sc.getInitParameter("sclogo")); %>" style=" width: 135px; height: 100px;float: left;"/ ></span><h3 style="font-size: 35px;">Paradise Public School</h3>
                                        </td>
                                </tr>
                        </thead>
                        <tbody>
                                <tr>
                                        <td colspan="2">
                                                <table border="1px"style="text-align: center; border-collapse: collapse; width:100%;" class="table table-bordered table-hover m-auto text-center tsub1">
                                                        <thead>
                                                                <tr>
                                                                    <td colspan="4"><h4 class="h4">Result</h4></td>
                                                                </tr>
                                                        </thead>
                                                        <tbody>
                                                                <tr>
                                                                        <td>Name: </td>
                                                                        <td><% out.println(rs.getString("name")); %></td>
                                                                        <td>Session: </td>
                                                                        <td><% 
                                                                                
                                                                                out.println(sc.getInitParameter("scsession"));
                                                                            %></td>
                                                                </tr>
                                                                <tr>
                                                                        <td>Father Name: </td>
                                                                        <td><% out.println(rs.getString("father")); %></td>
                                                                        <td>Class: </td>
                                                                        <td><% out.println(rs.getString("class"));%></td>
                                                                </tr>
                                                        </tbody>
                                                </table>
                                        </td>
                                </tr>
                                <tr>
                                        <td colspan="2">
                                                <table border="1px"style="text-align: center; border-collapse: collapse; width:100%;" class="table table-bordered table-hover tsub1">
                                                        <thead>
                                                                <tr>
                                                                        <th>
                                                                                Subject
                                                                        </th>
                                                                        <th>Total Marks</th>
                                                                        <th>Marks Obtained</th>
                                                                        <th>Remarks</th>
                                                                </tr>
                                                        </thead>
                                                        <tbody>
                                                                <tr>
                                                                        <td>
                                                                            <% out.println(rsMetaData.getColumnName(5).toUpperCase()); %>
                                                                        </td>
                                                                        <td>100</td>
                                                                        <td><% out.println(rs.getString(rsMetaData.getColumnName(5))); %></td>
                                                                        <td><% 
                                                                            if(Integer.parseInt(rs.getString(rsMetaData.getColumnName(5)))>74)
                                                                            {
                                                                                out.println("DISTN");
                                                                            }
                                                                            else{
                                                                                out.println("-");
                                                                            }
                                                                            %></td>
                                                                </tr>
                                                                <tr>
                                                                        <td>
                                                                            <% out.println(rsMetaData.getColumnName(6).toUpperCase()); %>
                                                                        </td>
                                                                        <td>100</td>
                                                                        <td><% out.println(rs.getString(rsMetaData.getColumnName(6))); %></td>
                                                                        <td>
                                                                            <% 
                                                                            if(Integer.parseInt(rs.getString(rsMetaData.getColumnName(6)))>74)
                                                                            {
                                                                                out.println("DISTN");
                                                                            }
                                                                            else{
                                                                                out.println("-");
                                                                            }
                                                                            %>
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                        <td>
                                                                                <% out.println(rsMetaData.getColumnName(7).toUpperCase()); %>
                                                                        </td>
                                                                        <td>100</td>
                                                                        <td><% out.println(rs.getString(rsMetaData.getColumnName(7))); %></td>
                                                                        <td>
                                                                            <% 
                                                                            if(Integer.parseInt(rs.getString(rsMetaData.getColumnName(7)))>74)
                                                                            {
                                                                                out.println("DISTN");
                                                                            }
                                                                            else{
                                                                                out.println("-");
                                                                            }
                                                                            %>
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                        <td>
                                                                                <% out.println(rsMetaData.getColumnName(8).toUpperCase()); %>
                                                                        </td>
                                                                        <td>100</td>
                                                                        <td><% out.println(rs.getString(rsMetaData.getColumnName(8))); %></td>
                                                                        <td>
                                                                            <% 
                                                                            if(Integer.parseInt(rs.getString(rsMetaData.getColumnName(8)))>74)
                                                                            {
                                                                                out.println("DISTN");
                                                                            }
                                                                            else{
                                                                                out.println("-");
                                                                            }
                                                                            %>
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                        <td>
                                                                                <% out.println(rsMetaData.getColumnName(9).toUpperCase()); %>
                                                                        </td>
                                                                        <td>100</td>
                                                                        <td><% out.println(rs.getString(rsMetaData.getColumnName(9))); %></td>
                                                                        <td>
                                                                            <% 
                                                                            if(Integer.parseInt(rs.getString(rsMetaData.getColumnName(9)))>74)
                                                                            {
                                                                                out.println("DISTN");
                                                                            }
                                                                            else{
                                                                                out.println("-");
                                                                            }
                                                                            %>
                                                                            
                                                                        </td>
                                                                </tr>
                                                                <tr>
                                                                        <td>
                                                                                <% out.println(rsMetaData.getColumnName(10).toUpperCase()); %>
                                                                        </td>
                                                                        <td>100</td>
                                                                        <td><% out.println(rs.getString(rsMetaData.getColumnName(10))); %></td>
                                                                        <td>
                                                                            <% 
                                                                            if(Integer.parseInt(rs.getString(rsMetaData.getColumnName(10)))>74)
                                                                            {
                                                                                out.println("DISTN");
                                                                            }
                                                                            else{
                                                                                out.println("-");
                                                                            }
                                                                            %>
                                                                            
                                                                        </td>
                                                                </tr>
                                                        </tbody>
                                                        <tfoot>
                                                                <tr>
                                                                        <th>Grand Total</th>
                                                                        <th>600</th>
                                                                        <th><% 
                                                                            int tot=Integer.parseInt(rs.getString(rsMetaData.getColumnName(5)))+Integer.parseInt(rs.getString(rsMetaData.getColumnName(6)))+Integer.parseInt(rs.getString(rsMetaData.getColumnName(7)))+Integer.parseInt(rs.getString(rsMetaData.getColumnName(8)))+Integer.parseInt(rs.getString(rsMetaData.getColumnName(9)))+Integer.parseInt(rs.getString(rsMetaData.getColumnName(10)));
                                                                            out.println(tot);
                                                                            double per=tot/6;
                                                                            %></th>
                                                                        <th></th>
                                                                </tr>
                                                        </tfoot>
                                                </table>
                                        </td>
                                </tr>
                                <tr>
                                        <td colspan="2">
                                                <table border="1px"style="text-align: center; border-collapse: collapse; width:100%;" class="table table-bordered table-hover tsub1">
                                                        <tbody>
                                                                <tr>
                                                                    <th>Percentage</th>
                                                                    <th><% out.println(per);%></th>
                                                                </tr>
                                                                <tr>
                                                                        <th>Result</th>
                                                                        <th>
                                                                            <% 
                                                                             if(per>=75.0)
                                                                             {
                                                                                 out.println("Pass in first division");
                                                                             }
                                                                             if(per<75.0 && per>=55.0)
                                                                             {
                                                                                 out.println("Pass in second division");
                                                                             }
                                                                             if(per<55.0 && per>=33.0){
                                                                                 out.println("Pass in third division");
                                                                             }
                                                                             if(per<33.0)
                                                                             {
                                                                                 out.println("Fail");
                                                                             }
                                                                            %>
                                                                        </th>
                                                                </tr>
                                                        </tbody>
                                                </table>
                                        </td>
                                </tr>
                        </tbody>
                        <tfoot>
                                <tr>
                                        <td>ABS: Absent, ##: Grace</td>
                                        <td>Data Source: Paradise Public School</td>
                                </tr>
                        </tfoot>
                </table>
</div>
<% } %>
<script type="text/javascript">
		function printData()
		{
  		 var divToPrint=document.getElementById("rslt");
   		newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}

	</script>
<%@include file="footer.jsp" %>