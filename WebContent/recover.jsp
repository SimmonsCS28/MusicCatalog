<%@page import="java.sql.*"%>
<%@page import="dataAccess.*"%>
<%@page import="domain.*"%>
<%@page import="service.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Music Log</title>

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="starter-template.css" rel="stylesheet">

<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">

			<a class="navbar-brand"
				href="http://localhost:8080/MusicCatalog/index.jsp">Music Log</a>

			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navHeaderCollapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse navHeaderCollapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8080/MusicCatalog/add.jsp"><span
							class="glyphicon glyphicon-plus"></span> Add</a></li>
					<li><a href="http://localhost:8080/MusicCatalog/search.jsp"><span
							class="glyphicon glyphicon-search"></span> Search</a></li>
					<li><a href="http://localhost:8080/MusicCatalog/catalog.jsp"><span
							class="glyphicon glyphicon-list-alt"></span> Full Catalog</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

</body>
</html>