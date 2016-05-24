<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet”
	type=”text/css” />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Catalog</title>
</head>
<body>
	<script>
		var songTitle, artistName, albumName, songYear, genre
	</script>


	<form id="form1" role=”form”>
		<div id="songTitle" class=”container”>
			Song Title: <input songTitle="songTitle" type="text" size="20">
		</div>
		<div id="artistName" class=”container”>
		Artist Name: <input artistName="artistName" type="text" size="20">
		</div>
		<div id="albumName" class=”container”>
		Album Name: <input albumName="albumName" type="text" size="20">
		</div>
		<div id="songYear" class=”container”>
		Song Year: <input songYear="songYear" type="text" size="20">
		</div>
		<div id="genre" class=”container”>
		Genre: <input genre="genre" type="text" size="20">
		</div>

		<button type=”submit” class=”btnbtn-default”>Submit</button>
	</form>
</body>
</html>