<%@page import="main.Config"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Article</title> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
form{
padding: 25px;
border: 3px solid black;
border-radius: 5px;
margin:0px auto;
font-size:20px; 
font-style:bold;
}
.p1{
  text-align: center;
  font-family: 'Satisfy', cursive;
  font-size:40px;
}
</style>
</head>
<body>
<jsp:include page="/Style/Master.html"></jsp:include>
<hr style="height:5px; color:green;">
<p class="p1">Add Articles<p>
<hr style="height:5px; color:green;">
<div class="form1">
<form class="form-horizontal col-sm-6 needs-validation" action="addArticle.jsp" method="post" novalidate>
<div>
<input type="hidden" name="id_articles"/>
</div>
<div class="form-group row">
<label class="form-label">Title: </label>
<textarea class="form-control" id="title_articles" name="title_articles" placeholder="Please enter your article title over here!" rows="1" required></textarea>
<div class="invalid-feedback">Please enter something!</div>
</div>
<div class="form-group row">
<label class="form-label">Summary: </label>
<textarea class="form-control" id="summary_articles" name="summary_articles" placeholder="Please enter you summary/descritpion here!" rows="3" required></textarea>
<div class="invalid-feedback">Please enter something!</div>
</div>
<div class="form-group row">
<label class="form-label">Content: </label>
<textarea class="form-control" id="content_articles" name="content_articles" rows="10" placeholder="Please write your article over here!" required></textarea>
<div class="invalid-feedback">Please enter something!</div>
</div>
<br>
<div class="form-group">
<input class="btn btn-dark btn-lg" style="border-color:lime;" type="submit" value="Submit">
</div>
</form>
<script>
			// Self-executing function
			(function() {
				'use strict';
				window.addEventListener('load',function() {
				// Fetch all the forms we want to apply custom Bootstrap validation styles to
				var forms = document.getElementsByClassName('needs-validation');
				// Loop over them and prevent submission
				var validation = Array.prototype.filter.call(forms,function(form) {
					form.addEventListener('submit',function(event) 
						{
						if (form.checkValidity() === false) 
						{
							event.preventDefault();
							event.stopPropagation();
						}
						form.classList.add('was-validated');
							},false);
					});
				}, false);
			})();
		</script>

<div>
   <a class="btn btn-dark btn-lg" href="logout.jsp"><i class="fasfa-sign-out-alt"></i>Logout</a>
 </div>      
</div>
</body>
</html>