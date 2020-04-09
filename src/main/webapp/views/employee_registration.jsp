<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Employee Registration</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body style="background-color: lightgrey;">
	<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
		<ul class="navbar-nav ">
			<li class="nav-item "><a class="nav-link" href="/home">ACADEMY
					PORTAL</a></li>

			<li class="nav-item nav "><a class="nav-link"
				href="/admin_registration_page">Admin</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/faculty_registration_page">Faculty</a></li>

			<li class="nav-item active"><a class="nav-link "
				href="/employee_registration_page">Employee</a></li>
		</ul>

	</nav>

	</br>
	</br>
	<div class="text-center wow fadeInDown" align="center">
		<h2>Employee Registration</h2>
		</br> <img src="http://image005.flaticon.com/1/svg/74/74229.svg"
			alt="user icon" class="logo" height="130px" width="120px">

		<form action="/employee_registration" class="needs-validation" novalidate>
			<div class="form-fild" align="center">
				<label for="fname">First Name:</label> <input type="text"
					class="form-control" id="fname" placeholder="Enter firstName"
					name="firstName" style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>

			<div class="form-fild" align="center">
				<label for="lname">Last Name:</label> <input type="text"
					class="form-control" id="lname" placeholder="Enter lastName"
					name="lastName" style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="age">Age:</label> <a  data-toggle="tooltip"
					data-placement="top"
					title="Age can not be less than 20 or greater than 99"> <input
					type="text" class="form-control" id="age" placeholder="Enter Age"
					name="age" pattern="[2-9]{1}[0-9]{1}" style="width: 400px;"
					required></a>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>

			</div>

			<div class="form-fild" align="center">
				<label for="gender">Gender:</label> <a 
					data-toggle="tooltip" data-placement="top"
					title="Gender should be M or F"> <input type="text"
					class="form-control" id="gender" placeholder="Enter Gender"
					name="gender" style="width: 400px;" required></a>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="contactNo">Contact No:</label> <a 
					data-toggle="tooltip" data-placement="top"
					title="Length should be 10 Digits"> <input type="text"
					class="form-control" pattern="^[7-9]\d{9}$" id="contact_no"
					placeholder="Enter Conatact No" name="contactNo"
					style="width: 400px;" required>
				</a>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="admin_id">Employee Id:</label> <a 
					data-toggle="tooltip" data-placement="top"
					title="Employee Id should be of 3 Digits "> <input type="text"
					class="form-control" id="employee_id" pattern="[0-9]{3}"
					placeholder="Enter Employee Id" name="employeeId" style="width: 400px;"
					required></a>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>

			<div class="form-fild" align="center">
				<label for="password">Password:</label> <a 
					data-toggle="tooltip" data-placement="top"
					title="Password should consist upperCase lowerCase and symbol!">
					<input type="password" class="form-control" id="password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[~!@#$%^&*()_}{]).{8,}"
					placeholder="Enter password" name="password" style="width: 400px;"
					required>
				</a>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			
			</br>
			<p>
				Already Registered ? <a href="employee_login_page">Login Here</a>
			</p>
			<button type="submit" class="btn btn-primary">Register</button>
		</form>
	</div>

	<script>
		// Disable form submissions if there are invalid fields
		(function() {
			'use strict';
			window
					.addEventListener(
							'load',
							function() {
								// Get the forms we want to add validation styles to
								var forms = document
										.getElementsByClassName('needs-validation');
								// Loop over them and prevent submission
								var validation = Array.prototype.filter
										.call(
												forms,
												function(form) {
													form
															.addEventListener(
																	'submit',
																	function(
																			event) {
																		if (form
																				.checkValidity() === false) {
																			alert('Pleaseupdate the highlighted mandetory filed');
																			event
																					.preventDefault();
																			event
																					.stopPropagation();
																		}
																		form.classList
																				.add('was-validated');
																	}, false);
												});
							}, false);
		})();
		//function for tooltip
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>

</body>
<!-- Footer -->
<footer class="page-footer font-small blue">

	<!-- Copyright -->
	<div class="footer-copyright text-center py-3">
		© 2020 Copyright: <a href="#"> Cognizant</a>
	</div>
	<!-- Copyright -->

</footer>
<!-- Footer -->

</html>