<%@page import="java.sql.*"%>
<%@page import="dataAccess.*"%>
<%@page import="domain.*"%>
<%@page import="service.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver");
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

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

<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://rawgit.com/lukaskral/bootstrap-table/feature_lukaskral_bootstrap_table_filter_integration/dist/bootstrap-table.min.css">
<script
	src="https://rawgit.com/lukaskral/bootstrap-table/feature_lukaskral_bootstrap_table_filter_integration/src/bootstrap-table.js"></script>

<link rel="stylesheet" href="../src/bootstrap-table-filter.css">
<script src="../src/bootstrap-table-filter.js"></script>
<script src="../src/ext/bs-table.js"></script>


<title>Music Catalog</title>

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
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-list-alt"></span> Full Catalog</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<div class="container">
		<div class="starter-template">
			<h1>Catalog</h1>
		</div>
	</div>

	<div id="filter-bar"></div>

	<table id="tbl" data-url="tbl_data.json" data-click-to-select="true"
		data-toolbar="#filter-bar" data-show-toggle="true"
		data-show-columns="true">
		<thead>
			<tr>
				<th data-field="songname" data-align="" data-sortable="true">Song
					Name</th>
				<th data-field="artist" data-align="center" data-sortable="true">Artist</th>
				<th data-field="album" data-align="" data-sortable="true">Album</th>
				<th data-field="year" data-align="" data-sortable="true">Year</th>
				<th data-field="genre" data-align="" data-sortable="true">Genre</th>
				<th data-field="youtube" data-align="" data-sortable="true">YouTube
					URL</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>0</td>
				<td>test0</td>
				<td>$0</td>
			</tr>
			<tr>
				<td>1</td>
				<td>test1</td>
				<td>$1</td>
			</tr>
			<tr>
				<td>2</td>
				<td>test2</td>
				<td>$2</td>
			</tr>
			<tr>
				<td>3</td>
				<td>test3</td>
				<td>$3</td>
			</tr>
		</tbody>
	</table>

	<pre style="margin-top: 30px" id="log"></pre>

	<script type="text/javascript">
		$(function() {
			$('#tbl').bootstrapTable();
			$('#filter-bar').bootstrapTableFilter(
					{
						connectTo : '#tbl',
						onAll : function(name, args) {
							var d = new Date();
							$('#log').prepend(
									d.toLocaleString() + ': ' + name + "\n");
						},
						onSubmit : function(data) {
							var data = $('#filter-bar').bootstrapTableFilter(
									'getData');
							var d = new Date();
							$('#log').prepend(
									d.toLocaleString() + ': '
											+ JSON.stringify(data) + "\n");
						}
					});

		});
	</script>
</body>
</html>