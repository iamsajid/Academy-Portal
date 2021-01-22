<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Employee Dashboard</title>

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
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
    <ul class="navbar-nav ">
      <li class="nav-item ">
        <a class="nav-link" href="/home">ACADEMY PORTAL</a>
      </li>

      
   <li class="nav-item active "><a class="nav-link "
			href="/employee_registrstion_page">Employee</a></li>
      <li class="nav-item "><a class="nav-link" href="/help">Help</a></li>

      
      
    </ul>

  </nav>
	

	</br>

	<div class="text-center wow fadeInDown" align="center">
		<h2>SEARCH PAGE</h2>
		</br>
		<div class="container-fluid" style="margin: auto;">

			</hr>
		
			<div class="row" style="margin: 30px;">
				<div class="col"
					style="background-color: lavender; padding: 3em; border-radius: 25px; border: 3px solid grey;">
					<a href="/basic_search">
						<H3>Basic Search</H3><br>
						<H6>Skill ID/Module ID/Batch ID/Faculty ID</H6>
					</a>
				</div>

				<div class="col"
					style="background-color: lavender; border-radius: 25px; border: 3px solid grey; padding: 3em;">
					<a href="/advance_search">
						<H3> Advance Search</H3><br>
						<H6>Batch start/end date/proficiency level/Skill/Module mapping"</H6>
					</a>

				</div>

			</div>
			
			<div class="row" style="margin: auto">

				
			</div>
		</div>
</body>


</html>