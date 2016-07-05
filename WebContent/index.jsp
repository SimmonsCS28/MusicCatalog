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

<title>Music Catalog</title>

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="starter-template.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
					<li><a href="http://localhost:8080/MusicCatalog/search.jsp"><span
							class="glyphicon glyphicon-search"></span> Search</a></li>
					<li><a href="http://localhost:8080/MusicCatalog/catalog.jsp"><span
							class="glyphicon glyphicon-list-alt"></span> Full Catalog</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div class="container">

		<div class="starter-template">
			<h1>Welcome To Music Catalog!</h1>
			<p class="lead">
				To get started, use the form below to enter information about a
				song.<br> When you've entered in all the information available,
				click submit!
			</p>
		</div>
		<form action="/MusicCatalog/FormHandler" method="post" id="form"
			name="songInformation" onsubmit="submitSuccess()">
			<label for="basic-url">Song Title</label>
			<div class="input-group">
				<input type="text" class="form-control" name="songTitle"
					placeholder="Song Title" aria-describedby="basic-addon1">
			</div>
			<label for="basic-url">Artist</label>
			<div class="input-group">
				<input type="text" class="form-control" name="artistName"
					placeholder="Artist Name" aria-describedby="basic-addon1">
			</div>
			<label for="basic-url">Album</label>
			<div class="input-group">
				<input type="text" class="form-control" name="albumName"
					placeholder="Album Name" aria-describedby="basic-addon1">
			</div>
			<label for="basic-url">Year</label>
			<div class="input-group">
				<input type="text" class="form-control" name="songYear"
					placeholder="Song Year" aria-describedby="basic-addon1">
			</div>
			<label for="basic-url">Genre</label>
			<div class="input-group">
				<input type="text" class="form-control" name="genre"
					placeholder="Genre" aria-describedby="basic-addon1">
			</div>
			<label for="basic-url">YouTube URL</label>
			<div class="input-group">
				<input type="text" class="form-control" name="youtube"
					placeholder="You Tube URL" aria-describedby="basic-addon1">
			</div>

			<input type="submit" value="Submit" name="songSubmit"> <input
				type="reset" value="Clear" name="Clear">


		</form>
		<script>
			function submitSuccess() {
				alert("Song successfully submitted.")
			}
		</script>
	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>