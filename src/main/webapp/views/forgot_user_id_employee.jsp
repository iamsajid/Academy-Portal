<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
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
<title>Forgot Password</title>
</head>
<nav
	class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
	<ul class="navbar-nav ">
		<li class="nav-item "><a class="nav-link" href="/home">ACADEMY
				PORTAL</a></li>
		<li class="nav-item active "><a class="nav-link "
			href="/employee_registrstion_page">Employee</a></li>
			
				<li class="nav-item "><a class="nav-link" href="/help">Help</a></li>

	</ul>

</nav>
<title>Forgot User Id</title>
</head>
<body style="background-color: lavender;">
<br>
<h3 align="center">Choose the valid question and give the correct answer to retrieve your User Id</h3><br>
<form action="/forgot_user_id_employee" class="needs-validation" novalidate method ="post">
			<div class="form-fild" align="center">
				

	<select name="securityQuestion" id="securityQuestion" 	style="width: 400px;">
		<option value="What is your zodiac sign">What is your zodiac
			sign</option>
		<option value="what is your favourite color">what is your
			favourite color</option>
		<option value="who is your favourite teacher">who is your
			favourite teacher</option>
	</select>
	</div>
	<br>
	<div class="form-fild" align="center">
				<label ></label> <input type="text" name="answer"
					class="form-control" id="fname" placeholder="Enter your answer"
					style="width: 400px;" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback"></div>
			</div>
		<br>	
	
	<center><button type="submit" class="btn btn-primary">Get UserId</button></center>
</form><br>
<h3 align="center">Your UserId is ${employee.getEmployeeId()}</h3>
</body>
</html>
