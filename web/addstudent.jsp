<%-- 
    Document   : addstudent
    Created on : 17 Oct, 2019, 2:40:59 AM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="tlgheader.jsp" %>
    <div class="profile">
        <form action="/paradise/addstudent" method="post">
<table class="table table-bordered m-auto text-center tmain " >
    
    <thead>
        <tr>
            <td colspan="2"><h3>Add Student</h3></td>
        </tr>
        
    </thead>
    <tbody>
        <tr>
            <td><label> Student Id</label></td>
            <td> <input type="text" name="sid" class="form-control"id="sid"></input></td>
        </tr>
        <tr>
            <td><label> Student Name</label></td>
            <td> <input type="text" name="sname" class="form-control"id="name"></input></td>
        </tr>
        <tr>
            <td><label class="text-dark">Class</label></td>
            <td><select id="u-select" name="clas" class="form-control" onclick="cls();">
                                <option value="">--Select Class--</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                                </td>
        </tr>
        
            <tr><td colspan="2">
         <div class="form-group" id="sub" style="display:none">
                            <table class="table table-bordered table-hover" style="width: 100% !important;">
                                <tr>
                                    <td><label>Subject</label></td>
                                    <td>
                                        <select id="sub" name="sub" class="form-control">
                                                <option value="">--Select Class--</option>
                                                <option value="math">Maths</option>
                                                <option value="bio">Biology</option>
                                                <option value="comm">Commerce</option>
                                        </select>
                                    </td>
                                </tr>
                               
                            </table>
         </div></td></tr>
         <tr>
            <td><label> Father Name</label></td>
            <td> <input type="text" name="fname" class="form-control"id="fame"></input></td>
        </tr>
         <tr>
            <td><label> Mother Name</label></td>
            <td> <input type="text" name="mname" class="form-control"id="mame"></input></td>
        </tr>
         <tr>
            <td><label> Aadhar</label></td>
            <td> <input type="text" name="aadhar" class="form-control"id="aad"></input></td>
        </tr>
         <tr>
            <td><label> SSSMID</label></td>
            <td> <input type="text" name="sssmid" class="form-control"id="sss"></input></td>
        </tr>
         <tr>
            <td><label> Address</label></td>
            <td> <textarea type="text" name="address" class="form-control"id="add"></textarea></td>
        </tr>
        <tr>
            <td><label> Contact</label></td>
            <td> <input type="text" name="contact" class="form-control"id="con"></input></td>
        </tr>
        <tr>
            <td><label> Email</label></td>
            <td> <input type="email" name="email" class="form-control"id="eml"></input></td>
        </tr>
        <tr>
            <td><label> DOB</label></td>
            <td> <input type="text" name="dob" class="form-control"id="db"></input></td>
        </tr>
        <tr>
            <td><label> Password</label></td>
            <td> <input type="password" name="pass" class="form-control"id="pas"></input></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" class="btn btn-block btn-primary" onclick="return validate();" value="submit"></td>
        </tr>
    </tbody>
    
</table>
            </form>
</div>
    <script>
        function validate(){
            if(document.getElementById('sid').value===""){
                alert("Id can't be empty");
                return false;
            }
             if(document.getElementById('name').value===""){
                alert("Name can't be empty");
                return false;
            }
             if(document.getElementById('u-select').value===""){
                alert("Class can't be empty");
                return false;
            }
             
             if(document.getElementById('fame').value===""){
                alert("Father Name can't be empty");
                return false;
            }
             if(document.getElementById('mame').value===""){
                alert("Mother Name can't be empty");
                return false;
            }
             if(document.getElementById('aad').value===""){
                alert("Aadhar Number can't be empty");
                return false;
            }
             if(document.getElementById('sss').value===""){
                alert("SSSMID can't be empty");
                return false;
                
            }
             if(document.getElementById('add').value===""){
                alert("Address can't be empty");
                return false;
            }
             if(document.getElementById('con').value===""){
                alert("Contact can't be empty");
                return false;
            }
             if(document.getElementById('eml').value===""){
                alert("Email can't be empty");
                return false;
            }
             if(document.getElementById('db').value===""){
                alert("DoB can't be empty");
                return false;
            }
             if(document.getElementById('pas').value===""){
                alert("Password can't be empty");
                
            }
            return true;
        }
        function cls()
        {
            var a=document.getElementById('u-select').value;
         if(parseInt(a)>10 && parseInt(a)<=12)
    {
       document.getElementById('sub').style="display:block;";
    }
    else{
        document.getElementById('sub').style="display:none;";
    }
        }
    
    </script>

<%@include file="footer.jsp" %>