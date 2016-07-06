<%@page import="java.sql.*"%>
<%@page import="dataAccess.*"%>
<%@page import="domain.*"%>
<%@page import="service.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>Music Catalog</title>

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
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>

<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">

			<a class="navbar-brand"
				href="http://localhost:8080/MusicCatalog/index.jsp">Music
				Catalog</a>

			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navHeaderCollapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse navHeaderCollapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8080/MusicCatalog/add.jsp"><span
							class="glyphicon glyphicon-plus"></span> Add</a></li>
					<li class="active"><a
						href="http://localhost:8080/MusicCatalog/search.jsp"><span
							class="glyphicon glyphicon-search"></span> Search</a></li>
					<li><a href="http://localhost:8080/MusicCatalog/catalog.jsp"><span
							class="glyphicon glyphicon-list-alt"></span> Full Catalog</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div id="searchbar" class="container">
		<div class="starter-template" style="padding-top: 100px;">
			<p class="lead">Choose a filter to search by or simply enter text
				to search for all titles containing similar information.</p>
		</div>
		<div class="row" style="padding-top: 50px;">
			<div class="col-xs-8 col-xs-offset-2">
				<form action="/MusicCatalog/FormHandler" method="post">
					<div class="input-group">
						<div class="input-group-btn search-panel">
							<select name="searchInput"
								class="btn btn-default dropdown-toggle">
								<option value="none">Any</option>
								<option value="songTitle">Song Title</option>
								<option value="artistName">Artist Name</option>
								<option value="albumName">Album Name</option>
								<option value="albumYear">Album Year</option>
								<option value="genre">Genre</option>
							</select>
						</div>
						<input type="text" class="form-control" name="searchInput"
							placeholder="Search term..."> <span
							class="input-group-btn">
							<button class="btn btn-default" type="submit" name="retrieveSong"
								value="Search">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>




	<div id="results" class="container">
		<div style="padding-top: 100px;">
			<table class="table table-bordered">
				<c:forEach var="element" items="${songInfo}">
					<thead>
						<tr>
							<th>Song Title</th>
							<th>Artist</th>
							<th>Album</th>
							<th>Year</th>
							<th>Genre</th>
							<th>YouTube URL</th>
						</tr>
						<tr>
							<th>${element.year }</th>
							<th>${element.name}</th>
							<th>${element.artist}</th>
							<th>${element.album}</th>
							<th>${element.genre}</th>
							<th>${element.youtube}</th>
						</tr>
					</thead>
				</c:forEach>
			</table>
		</div>
	</div>

	<script>
		$(document).ready(function(e) {
			$('.search-panel .dropdown-menu').find('a').click(function(e) {
				e.preventDefault();
				var param = $(this).attr("href").replace("#", "");
				var concept = $(this).text();
				$('.search-panel span#search_concept').text(concept);
				$('.input-group #search_param').val(param);
			});
		});
	</script>
</body>
</html>

