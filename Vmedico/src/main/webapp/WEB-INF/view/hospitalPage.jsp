<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 1501 00:00:00 GMT">
<title>Vmedico | Hospital portal</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>

	<div role="navigation">
		<nav class="navbar navbar-inverse navbar-toggleable-sm fixed-top ">
			<a href="/home" class="navbar-brand">Vmedico</a>
			<div class="navbar-collapse collapse">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar"></button>
				<ul class="nav navbar-nav">
					<li><a href="/patientlogin">Login as patient</a></li>
					<li><a href="/doctorlogin">Login as doctor</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/adminlogin">Admin</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<c:choose>
		<c:when test="${mode=='MODE_HOSPITAL' }">
			<div class="container" id="pospitaldiv">
				<div class="jumbotron text-center">
					<h1>Proudly present our hospitals</h1>
					<h3>By Vmedico</h3>
				</div>
			</div>
		</c:when>
	</c:choose>
	<hr>


	<div class="container">
		<h2>Our Hospitals</h2>

		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse1"><strong>Yashodha hospital</strong></a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="container">
							<div class="row">
								<div class="col-sm-4">
									<a href="https://www.yashodahospitals.com/"><img
										src="/images/Yashoda-Hospital-Logo.jpg"
										style="width: 100px; height: 100px; border-radius: 50%; border: 2px solid gray"></a>
								</div>
								<div class="col-sm-4">
									<a href="https://www.yashodahospitals.com/"><strong>Yashoda
											hospital</strong></a> <br> Hospital details :<br>
									Malakpet,Hyderabad<br> yashoda@gmail.com<br>
									9550068568<br>
								</div>
								<div class="col-sm-4">
									<a href="/show-hospitaldoctor?dworkinghospitalid=1011200130" style="font-size: 30px;text-decoration: none;">
										Check our doctors</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse2"><strong>Omni Hospital</strong></a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="container">
							<div class="row">
								<div class="col-sm-4">
									<a href="https://omnihospitals.in/"><img
										src="/images/omni-hospital-logo.jpg"
										style="width: 100px; height: 100px; border-radius: 50%; border: 2px solid gray"></a>
								</div>
								<div class="col-sm-4">
									<a href="https://omnihospitals.in/"><strong>Yashoda
											hospital</strong></a> <br> Hospital details :<br>
									Kothapet,Hyderabad<br> omni@gmail.com<br> 9550068368<br>
								</div>
								<div class="col-sm-4">
									<a href="/show-hospitaldoctor?dworkinghospitalid=1011200150" style="font-size: 30px;text-decoration: none;">
										Check our doctors</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse3"><strong>Orchid hospital</strong></a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="container">
							<div class="row">
								<div class="col-sm-4">
									<a href="http://www.theorchidhospital.com/about.php"><img
										src="/images/orchid-hospital-logo.jpg"
										style="width: 100px; height: 100px; border-radius: 50%; border: 2px solid gray"></a>
								</div>
								<div class="col-sm-4">
									<a href="http://www.theorchidhospital.com/about.php"><strong>Yashoda
											hospital</strong></a> <br> Hospital details :<br>
									chaitanyapuri,Hyderabad<br> orchid@gmail.com<br> 9550068683<br>
								</div>
								<div class="col-sm-4">
									<a href="/show-hospitaldoctor?dworkinghospitalid=1011200170" style="font-size: 30px;text-decoration: none;">
										Check our doctors</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<hr>
	<footer class="row-footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 col-xs-offset-1 col-sm-2 col-sm-offset-1">
					<h5>Links</h5>
					<ul class="list-unstyled">
						<li><a href="/home">Home</a></li>
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
					<p align=center>� Copyright 2020 Vmedico</p>
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