
<%@page import="java.sql.*"%>
<%@page import="dataAccess.*"%>
<%@page import="domain.*"%>
<%@page import="service.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet”
	type=”text/css” />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Music Catalog</title>
</head>
<body>
	<form id="form" name="songInformation">
		<div id="i1" class="container">
			Song Title: <input id="songTitle" type="text" name="songTitle" size="20">
		</div>

		<div id="i2" class=”container”>
			Artist Name: <input id="artistName" type="text" name="artistName" size="20">
		</div>

		<div id="i3" class=”container”>
			Album Name: <input id="albumName" type="text" name="albumName" size="20">
		</div>
		<div id="i4" class=”container”>
			Song Year: <input id="songYear" type="text" name="songYear" size="20">
		</div>
		<div id="i5" class=”container”>
			Genre: <input id="genre" type="text" name="genre" size="20">
		</div>
		<input type="reset" value="Clear" name="Clear">
	</form>

	<button onclick=pushToDb() class=”btnbtn-default”>Submit</button>

	<script language="JavaScript" type="Text/JavaScript">
		function pushToDb() {
			var myForm = document.getElementById('song');
			document.getElementById('songTitle').value = name;
	<%
	String name = request.getParameter("songTitle");
	String artist = request.getParameter("artistName");
	String album = request.getParameter("albumName");
	String year = request.getParameter("songYear");
	String genre = request.getParameter("genre");
	
	SongService.save(5, year,  name, artist, album, genre);%>
		alert("Song submitted");
		console.log(songTitle);
		}
	</script>




</body>
</html>