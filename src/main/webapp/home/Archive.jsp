<%@page import="main.Config"%>
<%@ page import="main.articlesmodel.Articles" %>
<%@page import="main.database.Database"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Archive Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body>
  <jsp:include page="/Style/Master.html"></jsp:include>
  
    <div id="container">

    <table id="table_article" class="table text-center table-light table-striped" style="margin: 0px auto;">
  	<thead>
    <tr class="bg-primary">
      <th scope="col">No.</th>
      <th scope="col">Title</th>
      <th scope="col">Summary</th>
      <th scope="col">Read </th>
    </tr>
  	</thead>
  	<tbody>
      <%
    	 	ArrayList<Articles> articles = Database.getList(1000);// get all articles
			int i = 0;
    	 	int num=1;
			for(i=0; i<articles.size();++i)
			{
				int id = articles.get(i).getId_articles();
			%>
			<tr>
<th scope="row"><%=num %></th>
<td><%=articles.get(i).getTitle_articles()%></td>
<td><%=articles.get(i).getSummary_articles() %></td>
<td><a class="btn btn-dark" href="viewArticle.jsp?viewArticleId=<%=id%>" <%=articles.get(i).getTitle_articles()%>><i class="fa-solid fa-eye"></i></a>
</td>
</tr>
       <%
        num=num+1;
        }
       %>
       
</tbody>
</table>
			
		<div id="footer">
         </div>
	</div>
</body>
</html>
 <jsp:include page="/Style/footer.html"></jsp:include>
