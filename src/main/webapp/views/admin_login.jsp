<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Admin Login</title>

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
	</br>
	<div class="text-center wow fadeInDown" align="center">
		<h2>Admin Login</h2>
		</br> <img
			src="https://pngimage.net/wp-content/uploads/2018/06/logo-admin-png-4.png"
			alt="user icon" class="logo" height="130px" width="120px">

		<form action="/admin_login" class="needs-validation" novalidate>
			<div class="form-fild" align="center">

				<input type="text" class="form-control" id="uname"
					placeholder="Enter username" name="user_name" style="width: 400px;"
					required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			</br>
			<div class="form-fild" align="center">

				<input type="password" class="form-control" id="pwd"
					placeholder="Enter password" name="password" style="width: 400px;"
					required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			</br>
			<p>
				New User? <a href="/admin_registration_page">Register Here</a>
			</p>
				<p>
				 <a href="/forgot_user_id_page_admin">Forgot User Id?</a> 
			</p>
			<p>
				 <a href="/forgot_password_page_admin">Forgot Password?</a>
			</p>
			<button type="submit" class="btn btn-primary">Login</button>
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
																			alert('Please enter User Id and Password');
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
	</script>

</body>


</html>