<%@ page import="main.Config" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body>
<%

	String user = request.getParameter("user");
	String pass = request.getParameter("pass");
	session.setAttribute("Error", "No");
	session.setAttribute("logged","No");
	if(user.equals(Config.user)&&pass.equals(Config.pass)){
		session.setAttribute("logged","Yes");
		response.sendRedirect("listArticleDesign.jsp");
	}
	else{
		session.setAttribute("Error","Yes");
		response.sendRedirect("adminloginform.jsp");
		}
%>
</body>
</html>