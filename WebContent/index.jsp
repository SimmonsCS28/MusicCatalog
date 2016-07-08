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

	<div class="container">

		<div class="starter-template">
			<h1>Welcome To Music Log!</h1>
			<p class="lead">Music Log provides a straight-forward web app for
				users to create a catalog of your favorite music.</p>
			<p class="lead">
				To get started, login to an existing account with your Username and
				Password.<br> If you do not already have an account, click on
				the register tab and create an account.
			</p>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-login">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-6">
									<a href="#" class="active" id="login-form-link">Login</a>
								</div>
								<div class="col-xs-6">
									<a href="#" id="register-form-link">Register</a>
								</div>
							</div>
							<hr>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<form id="login-form" action="/MusicCatalog/FormHandler"
										method="post" role="form" style="display: block;">
										<div class="form-group">
											<input type="text" name="username" id="username" tabindex="1"
												class="form-control" placeholder="Username" value="">
										</div>
										<div class="form-group">
											<input type="password" name="password" id="password"
												tabindex="2" class="form-control" placeholder="Password">
										</div>
										<div class="form-group text-center">
											<input type="checkbox" tabindex="3" class="" name="remember"
												id="remember"> <label for="remember">
												Remember Me</label>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-6 col-sm-offset-3">
													<input type="submit" name="login-submit" id="login-submit"
														tabindex="4" class="form-control btn btn-login"
														value="Log In">
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-12">
													<div class="text-center">
														<a href="http://localhost:8080/MusicCatalog/recover.jsp" tabindex="5"
															class="forgot-password">Forgot Password?</a>
													</div>
												</div>
											</div>
										</div>
									</form>
									<form id="register-form"
										action="/MusicCatalog/FormHandler" method="post"
										role="form" style="display: none;">
										<div class="form-group">
											<input type="text" name="username" id="username" tabindex="1"
												class="form-control" placeholder="Username" value="">
										</div>
										<div class="form-group">
											<input type="email" name="email" id="email" tabindex="1"
												class="form-control" placeholder="Email Address" value="">
										</div>
										<div class="form-group">
											<input type="password" name="password" id="password"
												tabindex="2" class="form-control" placeholder="Password">
										</div>
										<div class="form-group">
											<input type="password" name="confirm-password"
												id="confirm-password" tabindex="2" class="form-control"
												placeholder="Confirm Password">
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-6 col-sm-offset-3">
													<input type="submit" name="register-submit"
														id="register-submit" tabindex="4"
														class="form-control btn btn-register" value="Register Now">
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Login Javascript -->
	<script>
		$(function() {

			$('#login-form-link').click(function(e) {
				$("#login-form").delay(100).fadeIn(100);
				$("#register-form").fadeOut(100);
				$('#register-form-link').removeClass('active');
				$(this).addClass('active');
				e.preventDefault();
			});
			$('#register-form-link').click(function(e) {
				$("#register-form").delay(100).fadeIn(100);
				$("#login-form").fadeOut(100);
				$('#login-form-link').removeClass('active');
				$(this).addClass('active');
				e.preventDefault();
			});

		});
	</script>

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