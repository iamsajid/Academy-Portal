<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Admin Registration</title>


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
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
    <ul class="navbar-nav ">
      <li class="nav-item ">
        <a class="nav-link" href="/home">ACADEMY PORTAL</a>
      </li>

      <li class="nav-item active ">
        <a class="nav-link" href="/admin_registration_page">Admin</a>
      </li>
     
    </ul>

  </nav>

<body style="background-color: lavender;">
	

	
	</br>
	<div class="text-center wow fadeInDown" align="center">
		<h2>Admin Registration</h2>
		</br> <img src="https://pngimage.net/wp-content/uploads/2018/06/logo-admin-png-4.png"
			alt="user icon" class="logo" height="130px" width="120px">

		<form action="/admin_registration" class="needs-validation" novalidate method ="post">
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
				<label for="dob">DOB<a  data-toggle="tooltip"
					data-placement="top"
					title="Enter valid date of birth eg-DD-MM-YYYY"> <input
					type="date" class="form-control" id="dob" placeholder="Enter DOB" pattern="[0-9]{2}[-]{1}[0-9]{2}-[0-9]{4}"
					name="dob"  style="width: 400px;"
					required></a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>

			</div>

			<div class="form-fild" align="center">
				<label for="gender">Gender:
				 <a data-toggle="tooltip" data-placement="top"
					title="Gender should be M or F"> <input type="text"
					class="form-control" id="gender" placeholder="Enter Gender"pattern="[MF]{1}"
					name="gender" style="width: 400px;" required></a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="contactNo">Contact No:
				<a data-toggle="tooltip" data-placement="top"
					title="Length should be 10 Digits"> <input type="text"
					class="form-control" pattern="^[7-9]\d{9}$" id="contact_no"
					placeholder="Enter Conatact No" name="contactNo"
					style="width: 400px;" required>
				</a></label> 
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			
			
			<div class="form-fild" align="center">
				<label for="emailid">Email : <a 
					data-toggle="tooltip" data-placement="top"
					title="Enter valid email id (eg-abc@gmail.com)"> <input type="text"
					class="form-control" id="emailid" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
					placeholder="Enter Email Id" name="email" style="width: 400px;"
					required></a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div> 
			

			<div class="form-fild" align="center">
				<label for="password">Password: <a 
					data-toggle="tooltip" data-placement="top"
					title="Password should consist upperCase lowerCase and symbol!">
					<input type="password" class="form-control" id="password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[~!@#$%^&*()_}{]).{8,}"
					placeholder="Enter password" name="password" style="width: 400px;"
					required>
				</a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="securityQuestion">Security Question: <a 
					data-toggle="tooltip" data-placement="top"
					title="Choose the appropriate security question">
					<select
					name="securityQuestion" id="securityQuestion">
					<option value="What is your zodiac sign">What is your zodiac sign</option>
					<option value="what is your favourite color">what is your favourite color</option>
					<option value="who is your favourite teacher">who is your favourite teacher</option>
				</select>
				</a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<div class="form-fild" align="center">
				<label for="answer">Answer: <a 
					data-toggle="tooltip" data-placement="top"
					title="Give the correct answer for chosen question ">
					<input type="text" class="form-control" id="answer"
					
					placeholder="write your answer here" name="answer" style="width: 400px;"
					required>
				</a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			</br>
			<p>
				Already Registered ? <a href="/admin_login_page">Login Here</a>
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
																			alert('Please update the highlighted mandetory field');
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


</html>