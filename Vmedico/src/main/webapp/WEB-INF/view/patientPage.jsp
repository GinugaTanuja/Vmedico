<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Vmedico | Patient Portal</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body data-spy="scroll" data-target="#myScrollspy" data-offset="50">

	<div role="navigation">
		<nav class="navbar navbar-inverse ">
			<a href="/home" class="navbar-brand">Vmedico</a>
			<div class="navbar-collapse collapse">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar"></button>
				<ul class="nav navbar-nav">
					<li><a href="/patientlogin">Login as patient</a></li>
					<li><a href="/doctorlogin">Login as doctor</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-users">All Users</a></li>
				</ul>
			</div>
		</nav>
	</div>


	<!-- Scroll spy -->
	<div class="container">
		<h2>Menu</h2>
		<div class="container-fluid">
			<div class="row">
				<nav class="col-sm-3 col-4" id="myScrollspy">
					<ul class="nav nav-pills flex-column">
						<li class="nav-item"><a class="nav-link active"
							href="#bookAppointment">Book doctor appointment</a></li>
						<li class="nav-item"><a class="nav-link" href="#section2">Section
								2</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Section
								3</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#section31">dropdown-item 1</a> <a
									class="dropdown-item" href="#section32">dropdown-item 2</a>
							</div></li>
						<li class="nav-item"><a class="nav-link" href="#section4">Section
								4</a></li>
					</ul>
				</nav>

				<div class="col-sm-9 col-8">

					<s:form method="POST" modelAttribute="email" action="${pageContext.request.contextPath }/patientPage">
						<div id="bookAppointment">
							<h2>Appointment from</h2>
							<hr>
							<form class="form-horizontal" method="POST" action="save-user">
								<div class="form-group">
									<label class="control-label col-md-3">Patient username</label>
									<div class="col-md-5">
										<input type="text" class="form-control" name="pusername"
											placeholder="Enter your name" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3">Patient email</label>
									<div class="col-md-5">
										<input type="text" class="form-control" name="pemail"
											placeholder="Enter your email" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital name</label>
									<div class="col-md-5">
										<input type="text" class="form-control" name="phospitalname"
											placeholder="Select your hospital name" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Doctor name</label>
									<div class="col-md-5">
										<input type="text" class="form-control" name="pdoctorname"
											placeholder="Select your doctor name" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Patient symptoms
										or cause of appointment</label>
									<div class="col-md-5">
										<textarea rows="5" cols="100" class="form-control"
											name="psymptoms" placeholder="Enter your symptoms"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Slot</label>
									<div class="col-md-5">
										<input type="text" class="form-control" name="pslot"
											placeholder="Select your slot" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Contact No</label>
									<div class="col-md-5">
										<input type="text" class="form-control"
											name="pappointmentdate"
											placeholder="Select your appointment date" />
									</div>
								</div>
								<div class="form-group text-center ">
									<input type="submit" class="btn btn-primary" value="Book" />
								</div>
							</form>
						</div>
					</s:form>
				</div>

				<hr>
				<div id="section2">
					<h1>This is Section 2</h1>
					<p>Content for section #2</p>
				</div>

				<div id="section31">
					<h1>This is Section 3.1</h1>
					<p>Content for section #3.1</p>
				</div>

				<div id="section32">
					<h1>This is Section 3.2</h1>
					<p>Content for section #3.2</p>
				</div>

				<div id="section4">
					<h1>This is Section 4</h1>
					<p>Content for section #4</p>
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