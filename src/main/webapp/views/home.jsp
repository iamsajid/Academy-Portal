<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Home Page</title>

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
			<li class="nav-item active"><a class="nav-link" href="/home">ACADEMY
					PORTAL</a></li>

			<li class="nav-item "><a class="nav-link" href="/admin_registration_page">Admin</a></li>
			<li class="nav-item"><a class="nav-link" href="/faculty_registration_page">Faculty</a></li>

			<li class="nav-item"><a class="nav-link " href="/employee_registration_page">Employee</a>
			</li>
		</ul>

	</nav>

	</br>
	</br>
	<div class="text-center wow fadeInDown" align="center">
		<h1>Welcome to Academy Portal</h1>
		</br>
		</br>
		<div class="container-fluid" style="margin: auto;">
			<h2>Choose Your Role</h2>
			</hr>
			<div class="row" style="margin: 30px;">
				<div class="col" style="background-color: lightgray; padding: 3em;">
					<a href="/admin_registration_page"> <img
						src="http://image005.flaticon.com/1/svg/74/74229.svg"
						class="rounded" height="150px" width="150px">
						<H3>Admin</H3>
					</a>
				</div>
				<div class="col" style="background-color: lightgray; padding: 3em;">
					<a href="/faculty_registration_page"> <img
						src="http://image005.flaticon.com/1/svg/74/74229.svg"
						class="rounded" height="150px" width="150px">
						<h3>Faculty</h3>
					</a>
				</div>
				<div class="col" style="background-color: lightgrey; padding: 3em;">
					<a href="/employee_registration_page"> <img
						src="http://image005.flaticon.com/1/svg/74/74229.svg"
						class="rounded" height="150px" width="150px">
						<H3>Employee</H3>
					</a>
				</div>
			</div>
		</div>
	</div>




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