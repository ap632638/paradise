<%-- 
    Document   : uploadcourse
    Created on : 13 Oct, 2019, 4:18:31 PM
    Author     : Arun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="tlgheader.jsp" %>

<div class="profile">
<table class="table table-bordered m-auto text-center tmain " >
    <form action="/paradise/uploadcourse" method="post" encType="multipart/form-data>
    <thead>
        <tr>
            <td colspan="2"><h3>Upload Course</h3></td>
        </tr>
        
    </thead>
    <tbody>
        <tr>
            <td><label>Name</label></td>
            <td> <input type="text" name="name" class="form-control"id="name"></input></td>
        </tr>
        <tr>
            <td><label class="text-dark">Short Description</label></td>
            <td><textarea name="blog" class="form-control" id="desc" placeholder="Write Your Blog Here....." cols="5" rows="5" ></textarea></td>
        </tr>
        <tr>
            <td>Type</td>
            <td>
                <select id="sel" name="type" class="form-control">
                <option value="">--Select Type--</option>
                <option value="vd">Video</option>
                <option value="pdf">Pdf/zip</option>
            </select>
            </td>
        </tr>
        <tr>
            <td>Upload File</td>
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
        var a=document.getElementById('name').value;
        var b=document.getElementById('desc').value;
        var c=document.getElementById('author').value;
        var d=document.getElementById('sel').value;
        var fileInput = document.getElementById('file');
        var filePath = fileInput.value;
        var allowedExtensions = /(\.pdf|\.mp4|\.zip)$/i;
        if(!allowedExtensions.exec(filePath))
        {
           document.getElementById('error').innerHTML='Please upload file having extensions .pdf/.mp4/ .zip';
            fileInput.value = '';
            return false;
        }
        if(a.trim()==="")
        {
            document.getElementById('error').innerHTML="Enter valid name";
            return false;
        }
        if(d==="")
        {
            document.getElementById('error').innerHTML="Select valid type";
            return false;
        }
        if(b.trim()==="")
        {
            document.getElementById('error').innerHTML="Description Can't be empty";
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
