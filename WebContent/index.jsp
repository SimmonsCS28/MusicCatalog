
<%@page import="java.sql.*"%>
<%@page import="dataAccess.*"%>
<%@page import="domain.*"%>
<%@page import="service.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
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
<h1>Add Song</h1>
	<form action="/MusicCatalog/FormHandler" method="post" id="form" name="songInformation">
		
		Song Title: <input id="songTitle" type="text" name="songTitle" size="20"><br> 
		Artist Name: <input id="artistName" type="text" name="artistName" size="20"><br>
		Album Name: <input id="albumName" type="text" name="albumName" size="20"><br> 
		Song Year: <input id="songYear" type="text" name="songYear" size="20"><br> 
		Genre: <input id="genre" type="text" name="genre" size="20"><br> 
		<input type="reset" value="Clear" name="Clear">
		<input type="submit" value="Submit">
	</form>

<form action="/MusicCatalog/FormHandler" method = "post">
		Song Title: <input id="titleSearch" type="text" name ="titleSearch" size="20"><br>
 		<input type = "submit" name="retrieveSong" value="Retrieve Song">
</form>

</body>
</html>