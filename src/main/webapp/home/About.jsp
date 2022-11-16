<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="/Style/Master.html"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
body{
background-image:url('../Images/about-background.jpg');
background-height:100%;
background-position: center;
background-size:cover;
background-repeat:no-repeat;
}
html,body{
height:100%;

}
hr{
  border: 10px solid skyblue;
  border-radius: 10px; 
}
.div2{
background-color: rgba(0,0,0,.5);
color: #000 ; 
font-size:300px;
border: 5px solid skyblue;
border-radius: 400px; 
}
.row1{
background-image: url('http://localhost:8080/personalBlogging/Images/about1.jpg'); 
background-size:cover; height:100%;"
height:500px; 
border-style:2px solid blue;
}
.div1{
padding:3px;
}
</style>
</head>
<body>
<div class="container-fluid">


<div class="contianer-fluid text-center">
    <i class="fa-brands fa-blogger fa-10x"></i>
    <h3 style="margin-top: 2px;">Personal Blogging!</h3>
<p class="fst-italic fs-4">The word Blog initially used to be referred as Weblog. 
These blogs or previously known as internet logs are basically day to day online journaling or diary-style entries. 
Blog is a well-known way for a single person or group of people to share their life or part of their life with the rest of the world.
Blogging can be community based where multiple people can share their life, communicate with each other and form a strong bond or 
it can simply be a personal based where one person allows his or her thoughts to be shared on internet for others to view in a safe space.</p>  
</div>
<hr>
<br>
<div class="row row1" style="">
<div class="col-md-6 text-center fs-3 div1">
<br>
<br>
<H2>Why visit us?</H2>
We have articles which consists of unbiased Thoughts and random snippet on different topics.
Various articles on both personal life and the rest of the world.
Different takes on various subjects.
Overview on anything and everything!
</div>
<div class="col-md-6 text-center div2"><i class="fa-brands fa-readme"></i></div>
</div>
<div class="content">
<h3></h3>
</div>
</div>
</body>
<br>
</html>
 <jsp:include page="/Style/footer.html"></jsp:include>
