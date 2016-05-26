
<%@page import="jsp.*, java.sql.*"%>
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
	<form id="songInformation">
		<div id="i1" class="container">
			Song Title: <input id="songTitle" type="text" size="20">
		</div>
		<div id="i2" class=”container”>
			Artist Name: <input id="artistName" type="text" size="20">
		</div>
		<div id="i3" class=”container”>
			Album Name: <input id="albumName" type="text" size="20">
		</div>
		<div id="i4" class=”container”>
			Song Year: <input id="songYear" type="text" size="20">
		</div>
		<div id="i5" class=”container”>
			Genre: <input id="genre" type="text" size="20">
		</div>
	</form>

	<button onclick=pushToDb() class=”btnbtn-default”>Submit</button>

	<script language="JavaScript" type="Text/JavaScript">
		function pushToDb() {
			var myForm = document.getElementById('songInformation');
	<%Connection c = MySQL.connect();
			out.print(c);
			MySQL.close(c);%>
		/*console.log(myForm.songTitle.value + "\n" + myForm.artistName.value + "\n" + myForm.albumName.value 
					+ "\n" + myForm.songYear.value + "\n" + myForm.genre.value);*/
		}
	</script>




</body>
</html>