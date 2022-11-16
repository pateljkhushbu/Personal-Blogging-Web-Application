<%@page import="main.Config"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="main.articlesmodel.Articles" %>
<%@ page import="main.database.Database" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<jsp:include page="/Style/Master.html"></jsp:include>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style>
*{
margin:0px; 
padding:0px; 
}
.card{
padding:5px; 
margin:10px;
color:black;
box-shadow: 0 8px 8px -4px lightblue;
  background: linear-gradient(to right, #74ebd5, #acb6e5); 
  }
.img1{
height:400px;
}
</style>
</head>
<body>

<h1 style="font-family: 'Lobster', cursive;   text-align: center;">Welcome to personal blogging!</h1>
<br>
<div class="container-fluid text-center">
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active ">
      <img src="http://localhost:8080/personalBlogging/Images/img2.jpg" class="w-100 img1" alt="...">
    </div>
    <div class="carousel-item">
      <img src="http://localhost:8080/personalBlogging/Images/img3.jpg" class="w-100 img1" alt="...">
    </div>
    <div class="carousel-item">
      <img src="http://localhost:8080/personalBlogging/Images/img4.jpg" class="w-100 img1" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div><br>
</div>
<div>
<% ArrayList<Articles> articles = Database.getList(100);
int n = articles.size();
int limit=n-3; 
int num=1;
int i=0;
int id = articles.get(i).getId_articles();
Date date = articles.get(i).getPublishDate();
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd MMMM yyyy");
String dte = sdf.format(date);
%> 
</div>
       
<br>
<%i=n-(limit+3); %>
<div class="card border-dark card1">
  <div class="card-header">
  <b>Title: </b><i><%=articles.get(i).getTitle_articles()%></i>
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <b>Summary: </b>
      <p><%=articles.get(i).getSummary_articles() %>
      </p>
      <footer class="blockquote-footer"><b>Published Date: </b><cite title="Source Title"><i><%=dte %></i></cite></footer>
    </blockquote>
  </div>
</div>
<br>
<br>
<div class="row">
 <% i=n-(limit+2);%>
  <div class="col-sm-6">
    <div class="card border-dark card2">
      <div class="card-body">
        <h5 class="card-title">  <b>Title: </b><i><%=articles.get(i).getTitle_articles()%></i></h5>
        <p class="card-text">      <b>Summary: </b><%=articles.get(i).getSummary_articles() %></p>
<blockquote class="blockquote mb-0">
      <footer class="blockquote-footer"><b>Published Date: </b><cite title="Source Title"><i><%=dte %></i></cite></footer>
    </blockquote>
      </div>
    </div>
  </div>
 <%i=n-(limit+1);%>
  <div class="col-sm-6">
    <div class="card border-dark card3">
      <div class="card-body">
        <h5 class="card-title">  <b>Title: </b><i><%=articles.get(i).getTitle_articles()%></i></h5>
        <p class="card-text">      <b>Summary: </b><%=articles.get(i).getSummary_articles() %></p>
<blockquote class="blockquote mb-0">
      <footer class="blockquote-footer"><b>Published Date: </b><cite title="Source Title"><i><%=dte %></i></cite></footer>
    </blockquote>
      </div>
    </div>
  </div>
</div>    
<br>
<br>
<br>
</body>
</html>

 <jsp:include page="/Style/footer.html"></jsp:include>

