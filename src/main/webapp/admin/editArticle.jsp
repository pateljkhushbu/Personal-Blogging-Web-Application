<%@page import="main.database.Database"%>
<%@page import="java.util.Date"%>
<%@page import="main.articlesmodel.Articles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
<% 
		String id2=request.getParameter("editArticleId").toString();
		int id = Integer.parseInt(id2);
		String title = (String)request.getParameter("title_articles");
		String content = (String)request.getParameter("content_articles");
		String summary = (String)request.getParameter("summary_articles");
		String date =  (String)  request.getParameter("publishDate");
		//Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(date);
		Articles article = new Articles(id,new Date(),title,summary,content);
		System.out.println("Article gathered");
		int res = Database.update(article);
		if(res==-1){
			System.out.println("Couldn't insert");
			response.sendRedirect("editArticleForm.jsp?editArticleId="+id);
		}
		else
			response.sendRedirect("listArticleDesign.jsp");
		%>
</body>
</html>