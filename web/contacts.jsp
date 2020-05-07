<%-- 
    Document   : contacts
    Created on : 4 Oct, 2019, 1:29:38 PM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store");
%>
 <!-- Page breadcrumb -->
 <section id="mu-page-breadcrumb">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-page-breadcrumb-area">
           <h2>Contact</h2>
           <ol class="breadcrumb">
            <li><a href="#">Home</a></li>            
            <li class="active">Contact</li>
          </ol>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- End breadcrumb -->

 <!-- Start contact  -->
 <section id="mu-contact">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-contact-area">
          <!-- start title -->
          <div class="mu-title">
            <h2>Get in Touch</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores ut laboriosam corporis doloribus, officia, accusamus illo nam tempore totam alias!</p>
          </div>
          <!-- end title -->
          <!-- start contact content -->
          <div class="mu-contact-content">           
            <div class="row">
              <div class="col-md-6">
                <div class="mu-contact-left">
                  <form class="contactform" method="post" action="/paradise/contacts">                  
                    <p class="comment-form-author">
                      <label for="author">Name <span class="required">*</span></label>
                      <input type="text"  size="30" value="" name="author" id="name">
                    <p id="nerror"></p>
                    </p>
                    <p class="comment-form-email">
                      <label for="email">Email <span class="required">*</span></label>
                      <input type="email"  aria-required="true" value="" name="email" id="email" onkeyup="uemail();">
                      <p id="eerror"></p>
                    </p>
                    <p class="comment-form-url">
                      <label for="subject">Subject</label>
                      <input type="text" name="subject"  id="subject">  
                      <p id="suberror"></p>
                    </p>
                    <p class="comment-form-comment">
                      <label for="comment">Message</label>
                      <textarea  aria-required="true" rows="8" cols="45" id="message" name="comment"></textarea>
                      <p id="msgerror"></p>
                    </p>                
                    <p class="form-submit">
                      <input type="submit" value="Send Message" class="mu-post-btn" name="submit" onclick="return validate()">
                    </p>        
                  </form>
                </div>
              </div>
              
              

           
              <div class="col-md-6">
                <div class="mu-contact-right">
                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7346.59824187204!2d76.05061442287662!3d22.976025567632377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396317230bf54463%3A0x9b118fa0aa2e8129!2sParadise%20Public%20High%20School!5e0!3m2!1sen!2sin!4v1570176561645!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </div>
              </div>
            </div>
          </div>
          <!-- end contact content -->
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- End contact  -->
 <script>
     	window.history.forward();
	function noBack() { window.history.forward(); }
function uemail()
{
	var a=document.getElementById('email').value;
	var exp=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/;
	if(a.match(exp))
	{
		document.getElementById('eerror').innerHTML="";
	}
	else
	{
		document.getElementById('eerror').innerHTML="Enter valid email.";
	}
}
     function validate()
{
		var uname=document.getElementById("name");
		var uemail=document.getElementById("email");
		var usub=document.getElementById("subject");
		var umsg=document.getElementById("message");
		if(uname.value.trim()==="")
		{
			document.getElementById('nerror').innerHTML="Name required";
			uname.focus();
			return false;
		}
		else{
			document.getElementById('nerror').innerHTML="";
		}
		if(uemail.value.trim()==="")
		{
			document.getElementById('eerror').innerHTML="Email required";
			uemail.focus();
			return false;
		}
		else{
			document.getElementById('eerror').innerHTML="";
                        
		}
		
		if(usub.value.trim()==="")
		{
			document.getElementById('suberror').innerHTML="Enter a valid subject";
			usub.focus();
			return false;
		}
		else{
			document.getElementById('suberror').innerHTML="";
		}
		if(umsg.value.trim()==="")
		{
			document.getElementById('msgerror').innerHTML="Message required";
			umsg.focus();
			return false;
		}
		else
		{
			document.getElementById('msgerror').innerHTML="";
		}
                return true;
               
}

     
 </script>
 <%@include file="footer.jsp" %>