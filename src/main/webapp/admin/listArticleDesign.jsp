<%@page import="main.Config"%>
<%@page import="main.articlesmodel.Articles"%>
<%@page import="java.util.Date"%>
<%@page import="main.database.Database"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Panel</title>
<link rel="stylrsheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
<style>
	.container-fluid{margin:5px;}

</style>
<script>
    function edit(id){
    	window.location.href = "EditArticleDesign.jsp?editArticleId="+id;
    	}
  	</script>
</head>

<body>
	<jsp:include page="/Style/Master.html"></jsp:include>

	<div class="container-fluid">
	<h1>All Articles</h1>

	<div id="container-fluid">
		<table id="table_article" class="table table-primary table-striped">
			<thead>
				<tr>
					<th scope="col">Article Name</th>
					<th scope="col">Summary</th>
					<th scope="col">Content</th>
					<th scope="col">Publish Date</th>
					<th scope="col">Edit</th>
					<th scope="col">Delete</th>
					
				</tr>
			</thead>

			<tbody>

				<%
				ArrayList<Articles> articles = Database.getList(10000);
				int i = 0;
				for (i = 0; i < articles.size(); ++i) {
					int id = articles.get(i).getId_articles();
					Date date = articles.get(i).getPublishDate();
					java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MMM-yyyy");
					String dte = sdf.format(date);
				%>

				<tr>
					<td><%=articles.get(i).getTitle_articles()%></td>
					<td><%=articles.get(i).getSummary_articles()%></td>
					<td><%=articles.get(i).getContent_articles()%></td>
					<td><%=dte%></td>
					<td><button class="btn btn-dark" type="submit" onclick="edit(<%=id%>)"
						name="saveChanges"><i class="fa-solid fa-user-pen" ></i>
						</button></td>
					<td><a class="btn btn-dark" href="deleteArticle.jsp?deleteArticleId=<%=articles.get(i).getId_articles()%>">
					<i class="fa-solid fa-trash-can" ></i></a></td>
					
					</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<script>
		    $(document).ready(function() {
		        $('#table_article').DataTable();
		    } );
		    </script> 
 

	
	</div>
	<div class="container-fluid text-center">
   <h2>To add a new article!</h2>
   <div class="justify-content-center">
   <a class="btn btn-dark btn-lg" href="addArticleForm.jsp"><i class="fa-solid fa-plus"></i> Add</a>
   </div>
    </div>
 <div>
   <a class="btn btn-dark btn-lg" href="logout.jsp"><i class="fas fa-sign-out-alt"></i>Logout</a>
 </div>
	</div>
</body>
</html>