<%@ page import="main.articlesmodel.Articles" %>
<%@ page import="main.database.Database" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String title_articles= (String)request.getParameter("title_articles");
 String summary_articles=(String)request.getParameter("summary_articles");
 String content_articles=(String)request.getParameter("content_articles");
 Date date=new Date();
 Articles articles = new Articles(1, date, title_articles, summary_articles, content_articles);
 System.out.println("Article Done!!!"); 
 int ins= Database.insert(articles);
	if(ins==-1){
		System.out.println("Unable to insert value!");
		response.sendRedirect("addArticleForm.jsp");
	}
	else
		response.sendRedirect("listArticleDesign.jsp");
%>
</body>
</html>