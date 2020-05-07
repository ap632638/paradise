<%-- 
    Document   : blog-write
    Created on : 12 Oct, 2019, 11:50:53 PM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="lgheader.jsp" %>
<div class="profile">
<table class="table table-bordered m-auto text-center tmain " >
    <form action="/paradise/blogwrite" method="post" encType="multipart/form-data>
    <thead>
        <tr>
            <td colspan="2"><h3>My Blog</h3></td>
        </tr>
        
    </thead>
    <tbody>
        <tr>
            <td><label>Blog Title</label></td>
            <td><textarea name="title" class="form-control" placeholder="Enter title" id="title"></textarea></td>
        </tr>
        <tr>
            <td><label class="text-dark">Blog</label></td>
            <td><textarea name="blog" class="form-control" id="blog" placeholder="Write Your Blog Here....." cols="5" rows="5" ></textarea></td>
        </tr>
        <tr>
            <td>Image</td>
            <td><input type="file" name="filename" id="file" class="form-control"></td></td>
        </tr>
        <tr>
            <td>Author</td>
            <td><input type="text" name="author" id="author" class="form-control" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <p id="error" class="error"></p>
                <input type="submit" class="btn btn-primary btn-block" onclick="return validate();"></td>
        </tr>
    </tbody>
</table>
</div>
<script>
    function validate()
    {
        var a=document.getElementById('title').value;
        var b=document.getElementById('blog').value;
        var c=document.getElementById('author').value;
        var fileInput = document.getElementById('file');
        var filePath = fileInput.value;
        var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
        if(!allowedExtensions.exec(filePath))
        {
           document.getElementById('error').innerHTML='Please upload file having extensions .jpeg/.jpg/.png/.gif only.';
            fileInput.value = '';
            return false;
        }
        if(a.trim()==="")
        {
            document.getElementById('error').innerHTML="Enter valid title";
            return false;
        }
        if(b.trim()==="")
        {
            document.getElementById('error').innerHTML="Blog Can't be empty";
            return false;
        }
        if(c.trim()==="")
        {
            document.getElementById('error').innerHTML="Enter valid author name";
            return false;
        }
    }
    
</script>
<%@include file="footer.jsp" %>