<%@page import="main.Config"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="main.articlesmodel.Articles" %>
<%@ page import="main.database.Database" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="/Style/Master.html"></jsp:include>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Articles</title>
    <link rel="stylrsheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
            <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
            <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
            
            
            
    <style>
	.container-fluid{margin:2px;}
	
    </style>
  </head>
  <body>
    <div class="container-fluid">
	<table id="table_article" class="table text-center table-primary table-striped" style="margin: 0px auto;">
  	<thead>
    <tr class="bg-primary">
      <th scope="col">No.</th>
      <th scope="col">Published Date</th>
      <th scope="col">Title</th>
      <th scope="col">Summary</th>
      <th scope="col">Read </th>
    </tr>
  	</thead>
  	<tbody>
 <%
ArrayList<Articles> articles = Database.getList(100);
int i = 0;
int num=1;
for(i=0; i<articles.size();++i)                 
{
int id = articles.get(i).getId_articles();
Date date = articles.get(i).getPublishDate();
java.text.SimpleDateFormat sdf =
    new java.text.SimpleDateFormat("dd MMMM yyyy");
String dte = sdf.format(date);
%>
 
<tr>
<th scope="row"><%=num %></th>
<td><%=dte %></td>
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

 <script>
    $(document).ready(function() {
        $('#table_article').DataTable();
    } );
    </script> 
   <br>
   <br>
   <div class="container-fluid text-center">
   <h2>To view all the articles old and new!</h2>
   <div class="justify-content-center">
   <a class="btn btn-dark btn-lg" href="Archive.jsp"><i class="fa-solid fa-folder"></i> Archived</a>
   </div>
    </div>
    </div>
    <br>
    <br>
  </body>
</html>
 <jsp:include page="/Style/footer.html"></jsp:include>
