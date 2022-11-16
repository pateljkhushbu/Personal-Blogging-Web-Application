<%@page import="main.Config"%>
<%@page import="main.articlesmodel.Articles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<style type="text/css">
form{
padding: 30px;
border: 2px solid black;
border-radius: 10px;
margin:0px auto;
font-size:20px; 
font-style:bold;
background-color: rgba(0, 255, 0, 0.1);
box-shadow: 3px 3px 5px 5px grey;
}

.loginform{
 padding: 20px;
 margin:0px auto;
}

</style>
</head>
<body>
<jsp:include page="/Style/Master.html"></jsp:include>
<div class="loginform">
<%

try{
	if(session.getAttribute("logged").equals("Yes")){
		response.sendRedirect("listArticleDesign.jsp");
	}
}catch(Exception ex){
	
	session.setAttribute("logged","No");
	
	response.sendRedirect("adminloginform.jsp");
	
	}


%>
<div class="loginform">

<form class="form-horizontal col-md-6" action="adminlogin.jsp" method="post">
<h1>Admin Login</h1>
<hr style="height:5px;">
<input type="hidden" name="logged" value="true" />
<div class="form-group row">
<label class="form-label">Enter user name: </label>
<input class="form-control" type="text" id="user" name="user" placeholder="Kindly enter your username!" required>
</div>
<div class="form-group row">
<label class="form-label">Enter Password: </label>
<input class="form-control" type="password" id="pass" name="pass" placeholder="Kindly enter your password!" required>
</div>
<br>
<div class="form-group">
<input class="btn btn-dark btn-lg" style="border-color:white;" type="submit" value="Login" name="logged">
</div>
</form>
</div>
</div>

</body>
</html>
