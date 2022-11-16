<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="main.Config"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="main.articlesmodel.Articles" %>
<%@ page import="main.database.Database" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.viewarticle{
padding: 20px;
border: 3px solid black;
border-radius: 5px;
margin:0px auto;
font-size:20px; 
font-style:bold;
background-color:white;
width:70%;
}

</style>
</head>
<body>
  <jsp:include page="/Style/Master.html"></jsp:include>
  <br>
  <br>
<%
  		int id_articles= 0;
  		try{
	  		String id2=request.getParameter("viewArticleId").toString();  //get the parameter object and convert it to string
	  		id_articles = Integer.parseInt(id2);
	  		System.out.println("id"+id_articles);
  		}catch(Exception e){
  			System.out.println("Article id null/not found");
  		}
		Articles article = Database.getById(id_articles);

  %>
  
<div class="container-fluid">
<div class="viewarticle">
<div class="row text-center">
<h1><%=article.getTitle_articles() %></h1>
</div>
<hr style="height:5px;">
<div class="row text-right">
<p style="">Summary:</p>
<p><%=article.getSummary_articles() %></p>
<br>
</div>
<hr style="height:5px;">
<div class="row text-right">
<p style="">Content:</p>
<p><%=article.getContent_articles() %></p>
</div>
<br>

</div>
</div> 	
</body>
</html>
 <jsp:include page="/Style/footer.html"></jsp:include>
