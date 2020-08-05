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
<meta http-equiv="Expires" content="sat, 01 Dec 1501 00:00:00 GMT">
<title>Vmedico | Admin Portal</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
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
	<div class="container">
		<h2>Doctor administration</h2>
		<div class="row row-content align-items-center">
			<div class="col-sm-4 col-md-5 flex-last">
				<ul style="list-style: none;">
					<li><a href="/addDoctor"><span
							class="glyphicon glyphicon-plus"></span>&nbsp;Add a doctor's
							detail</a></li>
					<li><a href="/show-doctor"><span
							class="glyphicon glyphicon-th-large"></span>&nbsp;Edit / remove
							doctor's detail</a></li>
					<hr>
					<li><a href="/addHospital"><span
							class="glyphicon glyphicon-plus"></span>&nbsp;Add a hospital's
							detail</a></li>
					<li><a href="/show-hospital"><span
							class="glyphicon glyphicon-th-large"></span>&nbsp;Edit / remove
							hospital's detail</a></li>
					<hr>
					<li><a href="/addDoctor"><span
							class="glyphicon glyphicon-plus"></span>&nbsp;Add a testing
							laboratory's detail</a></li>
					<li><a href="/show-doctors"><span
							class="glyphicon glyphicon-th-large"></span>&nbsp;Edit / remove
							testing laboratory's detail</a></li>
				</ul>
				<c:choose>
					<c:when test="${mode=='MODE_ADDDOCTOR' }">
						<div class="container text-center">
							<h3>Add a new doctor</h3>
							<hr>
							<form class="form-horizontal" method="POST" action="save-doctor">
								<div class="form-group">
									<label class="control-label col-md-3">uprn</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="duprn"
											placeholder="Enter name" value="${doctor.duprn }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Username</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dusername"
											placeholder="Enter name" value="${doctor.dusername }" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3">Age</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dage"
											placeholder="Enter age" value="${doctor.dage }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Gender</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dgender"
											placeholder="Enter male or female" value="${doctor.dgender }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Specialization</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dspecialization"
											placeholder="Enter specialization"
											value="${doctor.dspecialization }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Working hospital
										ID</label>
									<div class="col-md-7">
										<input type="text" class="form-control"
											name="dworkinghospitalid"
											placeholder="Enter working hospital id"
											value="${doctor.dworkinghospitalid }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Address</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="daddress"
											placeholder="Enter address" value="${doctor.daddress }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">E-mail</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="demail"
											placeholder=" email@gmail.com" value="${doctor.demail }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Contact No</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dcontactno"
											placeholder="Enter Contact number"
											value="${doctor.dcontactno }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Password</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dpassword"
											placeholder="Enter your password"
											value="${doctor.dpassword }" />
									</div>
								</div>
								<div class="form-group ">
									<input type="submit" class="btn btn-primary" value="Add doctor" />
								</div>
							</form>
						</div>
					</c:when>

					<c:when test="${mode=='MODE_SHOWDOCTOR' }">
						<div class="container text-center" id="taskDiv">
							<h3>Edit / remove doctor's detail</h3>
							<hr>
							<div class="table-responsive text-align-center">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>UPRN</th>
											<th>Username</th>
											<th>Age</th>
											<th>Gender</th>
											<th>Specialization</th>
											<th>Working hospital id</th>
											<th>Address</th>
											<th>E-mail</th>
											<th>Contact no</th>
											<th>Password</th>
											<th>Edit details</th>
											<th>Delete doctor</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="doctor" items="${doctors}">
											<tr>
												<td><c:out value="${doctor.duprn}" /></td>
												<td><c:out value="${doctor.dusername}" /></td>
												<td><c:out value="${doctor.dage}" /></td>
												<td><c:out value="${doctor.dgender}" /></td>
												<td><c:out value="${doctor.dspecialization}" /></td>
												<td><c:out value="${doctor.dworkinghospitalid}" /></td>
												<td><c:out value="${doctor.daddress}" /></td>
												<td><c:out value="${doctor.demail}" /></td>
												<td><c:out value="${doctor.dcontactno}" /></td>
												<td><c:out value="${doctor.dpassword}" /></td>
												<td><a href="/edit-doctor?duprn=${doctor.duprn}"><span
														class="glyphicon glyphicon-pencil"></span></a></td>
												<td><a href="/delete-doctor?duprn=${doctor.duprn}"><span
														class="glyphicon glyphicon-trash"></span></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</c:when>

					<c:when test="${mode=='MODE_EDITDOCTOR' }">
						<div class="container text-center">
							<h3>Update doctor's detail</h3>
							<hr>
							<form class="form-horizontal" method="POST" action="save-doctor">
								<div class="form-group">
									<label class="control-label col-md-3">uprn</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="duprn"
											placeholder="Enter id" value="${doctor.duprn }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Username</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dusername"
											placeholder="Enter name" value="${doctor.dusername }" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3">Age</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dage"
											placeholder="Enter age" value="${doctor.dage }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Gender</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dgender"
											placeholder="Enter male or female" value="${doctor.dgender }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Specialization</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dspecialization"
											placeholder="Enter specialization"
											value="${doctor.dspecialization }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Working hospital
										ID</label>
									<div class="col-md-7">
										<input type="text" class="form-control"
											name="dworkinghospitalid"
											placeholder="Enter working hospital id"
											value="${doctor.dworkinghospitalid }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Address</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="daddress"
											placeholder="Enter address" value="${doctor.daddress }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">E-mail</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="demail"
											placeholder=" email@gmail.com" value="${doctor.demail }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Contact No</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dcontactno"
											placeholder="Enter Contact number"
											value="${doctor.dcontactno }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Password</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="dpassword"
											placeholder="Enter your password"
											value="${doctor.dpassword }" />
									</div>
								</div>
								<div class="form-group ">
									<input type="submit" class="btn btn-primary" value="Update" />
								</div>
							</form>
						</div>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${mode=='MODE_ADDHOSPITAL' }">
						<div class="container text-center">
							<h3>Add a new hospital</h3>
							<hr>
							<form class="form-horizontal" method="POST"
								action="save-hospital">
								<div class="form-group">
									<label class="control-label col-md-3">Hospital ID</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hid"
											placeholder="Enter name" value="${hospital.hid }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital name</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hname"
											placeholder="Enter name" value="${hospital.hname }" />
									</div>
								</div>

								<div class="form-group">
									<label class="control-label col-md-3">Hospital address</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="haddress"
											placeholder="Enter address" value="${hospital.haddress}" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">E-mail</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hemail"
											placeholder=" email@gmail.com" value="${hospital.hemail}" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital contact no</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hcontactno"
											placeholder="Enter Contact number"
											value="${hospital.hcontactno }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Password</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hpassword"
											placeholder="Enter your password"
											value="${hospital.hpassword }" />
									</div>
								</div>
								<div class="form-group ">
									<input type="submit" class="btn btn-primary" value="Add hospital" />
								</div>
							</form>
						</div>
					</c:when>

					<c:when test="${mode=='MODE_SHOWHOSPITAL' }">
						<div class="container text-center" id="taskDiv">
							<h3>Edit / remove hospital's detail</h3>
							<hr>
							<div class="table-responsive text-align-center">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>Hospital ID</th>
											<th>Hospital name</th>
											<th>Hospital Address</th>
											<th>Hospital E-mail</th>
											<th>Hospital Contact no</th>
											<th>Hospital Password</th>
											<th>Edit details</th>
											<th>Delete doctor</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="hospital" items="${hospitals}">
											<tr>
												<td><c:out value="${hospital.hid}" /></td>
												<td><c:out value="${hospital.hname}" /></td>
												<td><c:out value="${hospital.haddress}" /></td>
												<td><c:out value="${hospital.hemail}" /></td>
												<td><c:out value="${hospital.hcontactno}" /></td>
												<td><c:out value="${hospital.hpassword}" /></td>
												<td><a href="/edit-hospital?hid=${hospital.hid}"><span
														class="glyphicon glyphicon-pencil"></span></a></td>
												<td><a href="/delete-hospital?hid=${hospital.hid}"><span
														class="glyphicon glyphicon-trash"></span></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</c:when>

					<c:when test="${mode=='MODE_EDITHOSPITAL' }">
						<div class="container text-center">
							<h3>Update hospital's detail</h3>
							<hr>
							<form class="form-horizontal" method="POST" action="save-hospital">
								<div class="form-group">
									<label class="control-label col-md-3">Hospital id</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hid"
											placeholder="Enter id" value="${hospital.hid }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital name</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hname"
											placeholder="Enter name" value="${hospital.hname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital Address</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="haddress"
											placeholder="Enter address" value="${hospital.haddress }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital E-mail</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hemail"
											placeholder=" email@gmail.com" value="${hospital.hemail }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital Contact No</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hcontactno"
											placeholder="Enter Contact number"
											value="${hospital.hcontactno }" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Hospital Password</label>
									<div class="col-md-7">
										<input type="text" class="form-control" name="hpassword"
											placeholder="Enter password"
											value="${hospital.hpassword }" />
									</div>
								</div>
								<div class="form-group ">
									<input type="submit" class="btn btn-primary" value="Update" />
								</div>
							</form>
						</div>
					</c:when>
				</c:choose>
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