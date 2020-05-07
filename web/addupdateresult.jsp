<%-- 
    Document   : addupdateresult
    Created on : 14 Oct, 2019, 2:27:13 PM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="tlgheader.jsp" %>
<div class="container profile">
    
                <div class="text-center">
                <button class="tablink btn-danger" onclick="openPage('single', this, '#f35a5a')" id="defaultOpen">Add Result</button>
                <button class="tablink" onclick="openPage('multi', this, '#f35a5a')">Update Result</button>
                <div id="single" class="tabcontent">
                    <form class="text-left" method="post" action="" id="adfrm">
                        <div class="form-group">
                            <table>
                                <tr><td><label for="u-select">Student Id</label></td>
                                <td><input class="form-control" type="text" name="id"></td></tr>
                                <tr>
                                    <td><label>Class</label></td>
                                    <td>
                            <select id="u-select" name="clas" class="form-control" onclick="cls();">
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
                            </table>
                        </div>
                        <div class="form-group" id="a15" style="display:none;">
                            <table class="table table-hover table-bordered">
                                <tr> <td><label>Mathematics</label></td>
                                    <td><input type="text" name="maths" class="form-control"></td>
                                </tr>
                                <tr> <td><label>Enviromental Studies</label></td>
                                    <td><input type="text" name="evs" class="form-control"></td>
                                </tr>
                                <tr> <td><label>English</label></td>
                                    <td> <input type="text" name="eng" class="form-control" ></td>
                                </tr>
                                <tr> <td> <label>Hindi</label> </td>
                                    <td><input type="text" name="hindi" class="form-control"></td>
                                </tr>
                                <tr><td><label>COmputer</label></td>
                                    <td>
                                        <input type="text" name="com" class="form-control"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="form-group" id="a610" style="display:none;">
                            <table class="table table-hover table-bordered">
                                <tr> <td><label>Mathematics</label></td>
                                    <td><input type="text" name="maths" class="form-control"></td>
                                </tr>
                                <tr> <td><label>Science</label></td>
                                    <td><input type="text" name="evs" class="form-control"></td>
                                </tr>
                                <tr> <td><label>Social Science</label></td>
                                    <td> <input type="text" name="eng" class="form-control" ></td>
                                </tr>
                                <tr> <td> <label>Hindi</label> </td>
                                    <td><input type="text" name="hindi" class="form-control"></td>
                                </tr>
                                <tr><td><label>English</label></td>
                                    <td>
                                        <input type="text" name="com" class="form-control"></td>
                                </tr>
                                <tr><td><label>Sanskrit</label></td>
                                    <td>
                                        <input type="text" name="sans" class="form-control"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="form-group" id="sub" style="display:none">
                            <table class="table table-bordered table-hover">
                                <tr>
                                    <td><label>Subject</label></td>
                                    <td>
                                        <select id="sub" name="clas" class="form-control" onclick="subject();">
                                                <option value="">--Select Class--</option>
                                                <option value="math">Maths</option>
                                                <option value="bio">Biology</option>
                                                <option value="comm">Commerce</option>
                                        </select>
                                    </td>
                                </tr>
                               
                            </table>
                        </div>
                        <div class="form-group" id="a1112c" style="display:none;">
                            <table class="table table-hover table-bordered">
                                <tr> <td><label>Accounts</label></td>
                                    <td><input type="text" name="acc" class="form-control"></td>
                                </tr>
                                <tr> <td><label> Bussiness Studies</label></td>
                                    <td><input type="text" name="bs" class="form-control"></td>
                                </tr>
                                <tr> <td><label>Information Practices</label></td>
                                    <td> <input type="text" name="ip" class="form-control" ></td>
                                </tr>
                                <tr> <td> <label>Hindi</label> </td>
                                    <td><input type="text" name="hindi" class="form-control"></td>
                                </tr>
                                <tr><td><label>English</label></td>
                                    <td>
                                        <input type="text" name="eng" class="form-control"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="form-group" id="a1112m" style="display:none;">
                            <table class="table table-hover table-bordered">
                                <tr> <td><label>Mathematics</label></td>
                                    <td><input type="text" name="math" class="form-control"></td>
                                </tr>
                                <tr> <td><label> Physics</label></td>
                                    <td><input type="text" name="phy" class="form-control"></td>
                                </tr>
                                <tr> <td><label>Chemistry</label></td>
                                    <td> <input type="text" name="chem" class="form-control" ></td>
                                </tr>
                                <tr> <td> <label>Hindi</label> </td>
                                    <td><input type="text" name="hindi" class="form-control"></td>
                                </tr>
                                <tr><td><label>English</label></td>
                                    <td>
                                        <input type="text" name="eng" class="form-control"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="form-group" id="a1112b" style="display:none;">
                            <table class="table table-hover table-bordered">
                                <tr> <td><label>Biology</label></td>
                                    <td><input type="text" name="bio" class="form-control"></td>
                                </tr>
                                <tr> <td><label> Physics</label></td>
                                    <td><input type="text" name="phy" class="form-control"></td>
                                </tr>
                                <tr> <td><label>Chemistry</label></td>
                                    <td> <input type="text" name="chem" class="form-control" ></td>
                                </tr>
                                <tr> <td> <label>Hindi</label> </td>
                                    <td><input type="text" name="hindi" class="form-control"></td>
                                </tr>
                                <tr><td><label>English</label></td>
                                    <td>
                                        <input type="text" name="eng" class="form-control"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="form-group"
                       
                       
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" placeholder="Title for Notification" name="msgtitle" id="title">
                        </div>
                        <div class="form-group">
                            <label for="msg">Message</label>
                            <textarea class="form-control" name="msg" id="msg"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="send" value="Send" class="btn btn-primary btn-block">
                        </div>
                    </form>
                </div>
                <div id="multi" class="tabcontent">
                    <form class="text-left" method="post">
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" placeholder="Title for Notification" name="msgtitle" id="title">
                        </div>
                        <div class="form-group">
                            <label for="msg">Message</label>
                            <textarea class="form-control" name="msg" id="msg"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="send" value="Send To Topic" class="btn btn-primary btn-block">
                        </div>
                    </form>
                </div>
            </div>
</div>
<script>
    function subject(){
        var a=document.getElementById('sub');
        
        if(a.value==="math"){
            document.getElementById(a1112b).style="display:block";
        }
    }
    function openPage(pageName, elmnt, color) {
  // Hide all elements with class="tabcontent" by default */
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Remove the background color of all tablinks/buttons
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
    tablinks[i].style.border="none";
  }

  // Show the specific tab content
  document.getElementById(pageName).style.display = "block";

  // Add the specific color to the button used to open the tab content
  elmnt.style.backgroundColor = color;
  elmnt.style.border= "3px solid rgba(128,135,185,1)";
}
   document.getElementById("defaultOpen").click(); 
function cls()
{
    var a=document.getElementById("u-select").value;
    if(parseInt(a)<6)
    {
        document.getElementById('a1112b').style="display:none;";
        document.getElementById('a1112c').style="display:none;";
        document.getElementById('a1112m').style="display:none;";
        document.getElementById('sub').style="display:none;";
        document.getElementById('a15').style="display:block";
        document.getElementById('a610').style="display:none;";
    }
    if(parseInt(a)>5 && parseInt(a)<11)
    {
        document.getElementById('a1112b').style="display:none;";
        document.getElementById('a1112c').style="display:none;";
        document.getElementById('a1112m').style="display:none;";
        document.getElementById('sub').style="display:none;";
        document.getElementById('a15').style="display:none";
        document.getElementById('a610').style="display:block;";
    }
    if(parseInt(a)>10 && parseInt(a)<=12)
    {
       
        document.getElementById('a610').style="display:none;";
        document.getElementById('a15').style="display:none";
        document.getElementById('sub').style="display:block;";
    }
    
}

</script>
<%@include file="footer.jsp" %>
