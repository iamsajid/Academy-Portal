<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
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
<title>Faculty Dashboard</title>



<body 
	style="background-color: lavender;">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
    <ul class="navbar-nav ">
      <li class="nav-item ">
        <a class="nav-link" href="/home">ACADEMY PORTAL</a>
      </li>

      
      <li class="nav-item active ">
        <a class="nav-link" href="faculty_registration_page">Faculty</a>
        
      </li>
      <li class="nav-item "><a class="nav-link" href="/help">Help</a></li>

      
      
    </ul>

  </nav>

	</br>

	<div class="text-center wow fadeInDown" align="center">
		<h2>Welcome to Faculty Page</h2>
		</br>
		<div class="container-fluid" style="margin: auto;">

			</hr>
			<div class="row" style="margin: auto">
				<div class="col" style="background-color: lavender; padding: 1em;">

					<h2>Hello ${faculty}</h2>

				</div>


			</div>
			<div class="row" style="margin: 30px;">
				<div class="col"
					style="background-color: lavender; padding: 3em; border-radius: 25px; border: 3px solid grey;">
					<a href="/batch_mapping">
						<H3>Batch Mapping</H3>
					</a>
				</div>
			</div>
			<div class="row" style="margin: auto">

				<div class="col" style="background-color: lavender; padding: 1em;">

					<a href="/home"><button type="button"
							class="btn btn-secondary btn-lg">Log Out</button></a>

				</div>
			</div>
		</div>
</body>


</html>