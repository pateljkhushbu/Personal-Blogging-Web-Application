<%@page import="main.database.Database"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete article background</title>
</head>
<body>
	<%
		try{
				String id2=request.getParameter("deleteArticleId").toString();
				int id = Integer.parseInt(id2);
				int res = Database.delete(id);
				response.sendRedirect("listArticleDesign.jsp");
		}catch(Exception e){
			response.sendRedirect("../home.jsp");
		}
	%>
</body>
</html>