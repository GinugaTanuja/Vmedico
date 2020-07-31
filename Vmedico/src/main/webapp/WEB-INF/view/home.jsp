<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Vmedico | Home</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>

	<div role="navigation">
		<nav class="navbar navbar-expand-sm navbar-inverse  ">
			<a href="/home" class="navbar-brand">Vmedico</a>
			<div class="navbar-collapse collapse">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar"></button>
				<ul class="nav navbar-nav">
					<li><a href="/patientlogin">Login as patient</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-users">All Users</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="container">
		<c:choose>
			<c:when test="${mode=='MODE_HOME' }">
				<div class="container" id="homediv">
					<div class="jumbotron text-center">
						<h1>Welcome to Vmedico</h1>
						<h3>Virtual Health Asssistant</h3>
					</div>
				</div>
			</c:when>
			<c:when test="${mode=='MODE_REGISTER' }">
				<div class="container text-center">
					<h3>New Registration</h3>
					<hr>
					<form class="form-horizontal" method="POST" action="save-user">
						<input type="hidden" name="id" value="${user.id }" />
						<div class="form-group">
							<label class="control-label col-md-3">Username</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="pusername" placeholder ="Enter your name"
									value="${user.pusername }" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-3">Age</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="page" placeholder ="Enter your age"
									value="${user.page }" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Gender</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="pgender" placeholder ="Enter male or female"
									value="${user.pgender }" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Blood Group</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="pbloodgroup" placeholder ="Enter your blood group"
									value="${user.pbloodgroup }" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Address</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="paddress" placeholder ="Enter your address"
									value="${user.paddress }" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">E-mail</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="pemail" placeholder =" Email@gmail.com"
									value="${user.pemail }" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Contact No</label> 
							<div class="col-md-7">
								<input type="text" class="form-control" name="pcontactno" placeholder ="Enter your Contact number"
									value="${user.pcontactno }" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control" name="ppassword" placeholder ="Enter your password"
									value="${user.ppassword }" />
							</div>
						</div>
						<div class="form-group ">
							<input type="submit" class="btn btn-primary" value="Register" />
						</div>
					</form>
				</div>
			</c:when>
			<c:when test="${mode=='MODE_PATIENTLOGIN' }">
				<div class="container text-center">
					<h3>Patient Login</h3>
					<hr>
					<form class="form-horizontal" method="POST" action="/login-user">
						<c:if test="${not empty error}">
							<div class="alert alert-danger">
								<c:out value="${ error}"></c:out>
							</div>
						</c:if>
						<div class="form-group">
							<label class="control-label col-md-3">Patient Username</label>
							<div class="col-md-7">
								<input type="text" class="form-control" placeholder="Enter your username" name="pusername"
									value="${user.pusername }" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Patient Password</label>
							<div class="col-md-7">
								<input type="password" class="form-control" placeholder="Enter your password" name="ppassword"
									value="${user.ppassword }" />
							</div>
						</div>
						<div class="form-group ">
							<input type="submit" class="btn btn-primary" value="Login" />
						</div>
					</form>
				</div>



			</c:when>
		</c:choose>
	</div>
	<hr>
	<footer class="row-footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 col-xs-offset-1 col-sm-2 col-sm-offset-1">
					<h5>Links</h5>
					<ul class="list-unstyled">
						<li><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Menu</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-5">
					<h5>Our Address</h5>
					<address>
						2-114, Road no 4<br> Manikonda, Telangana<br> India<br>
						<i class="fa fa-phone"></i>: +852 1234 5678<br> <i
							class="fa fa-fax"></i>: +852 8765 4321<br> <i
							class="fa fa-envelope"></i>: <a
							href="mailto:info.vmedico@gmail.com">info.vmedico@gmail.com</a>
					</address>
				</div>
				<div class="col-xs-12 col-sm-4">
					<div class="nav navbar-nav" style="padding: 40px 10px;">
						<a class="btn btn-social-icon btn-google-plus"
							href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
						<a class="btn btn-social-icon btn-facebook"
							href="http://www.facebook.com/profile.php?id="><i
							class="fa fa-facebook"></i></a> <a
							class="btn btn-social-icon btn-linkedin"
							href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
						<a class="btn btn-social-icon btn-twitter"
							href="http://twitter.com/"><i class="fa fa-twitter"></i></a> <a
							class="btn btn-social-icon btn-youtube"
							href="http://youtube.com/"><i class="fa fa-youtube"></i></a> <a
							class="btn btn-social-icon" href="mailto:"><i
							class="fa fa-envelope-o"></i></a>
					</div>
				</div>
				<div class="col-xs-12">
					<p style="padding: 10px;"></p>
					<p align=center>© Copyright 2020 Vmedico</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>