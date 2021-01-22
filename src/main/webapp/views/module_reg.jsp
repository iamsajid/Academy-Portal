<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Module Registration</title>
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

<body style="background-color: lavender;">
<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
		<ul class="navbar-nav ">
			<li class="nav-item "><a class="nav-link" href="/home">ACADEMY
					PORTAL</a></li>

			<li class="nav-item active "><a class="nav-link"
				href="/admin_registration_page">Admin</a></li>
		</ul>
	</nav>
	</br>
	<div class="text-center wow fadeInDown" align="center">
		<h2>Module Registration</h2>
		</br>
		<h6>Enter Module Details</h6>
		<br>

		<form action="/module_registration" class="needs-validation"
			novalidate>
			<div class="form-fild" align="center">
				<label for="modId">moduleId<a data-toggle="tooltip"
					data-placement="top" title="Enter valid Module Id (eg-MO1)"> <input
						type="text" class="form-control" id="modId"
						placeholder="Enter Module Id" pattern="[M]{1}[0-9]{2}"
						name="moduleId" style="width: 400px;" required></a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<br>

			<div class="form-fild" align="center">
				<label for="techName">technologyName<a data-toggle="tooltip"
					data-placement="top" title="Enter valid Technology Name(eg-java)">
						<input type="text" class="form-control" id="techName"
						placeholder="Enter Technology Name" name="technologyName"
						style="width: 400px;" required>
				</a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<br>

			<div class="form-fild" align="center">
				<label for="profLevel">proficiencyLevel<a
					data-toggle="tooltip" data-placement="top"
					title="Enter valid proficiency level (eg-Proficient/Advanced/expert)">
						<input type="text" class="form-control" id="profLevel"
						placeholder="Enter Proficiency Level" name="proficiencyLevel"
						style="width: 400px;" required>
				</a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<br>

			<div class="form-fild" align="center">
				<label for="ExeType">executionType</label><br> 
				<select
					name="executionType" id="ExeType">
					<option value="E-learning">E-learning</option>
					<option value="Classroom Training">Classroom Training</option>

				</select>
			</div>
			<br>
			<div class="form-fild" align="center">
				<label for="Certitype">certificationType</label><br> <select
					name="certificationType" id="Certitype">
					<option value="Internal">Internal</option>
					<option value="External">External</option>

				</select>
			</div>

			<br>
			<div class="form-fild" align="center">
				<label for="certiName">certificationName<a
					data-toggle="tooltip" data-placement="top"
					title="Enter Certification Name"> <input type="text"
						class="form-control" id="certiName"
						placeholder="Enter Certification Name" name="certificationName"
						style="width: 400px;" required></a></label>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
			<br>
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