<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Advance Search</title>

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

      
   <li class="nav-item active "><a class="nav-link "
			href="/employee_registrstion_page">Employee</a></li>
      <li class="nav-item "><a class="nav-link" href="/help">Help</a></li>

      
      
    </ul>

  </nav>

<body style="background-color: lavender;">

	<form action="/search2">
	<center><table>
		<tr>
			<td><select name="search" id="advancesearch">
					<option value="BatchStartDate">BatchStartDate</option>
					<option value="BatchEndDate">BatchEndDate</option>
					
			</select></td>
			<td>
				<input type="text" name="searchvalue">
			</td>
			
		</tr>
	</table>
			<center><input type="submit" value="GetData" ></center>
	</form>
	
	<br><br>
	<table border="1" cellpadding="2" cellspacing="2">
	<tr><td>SkillId</td>
		<td>BatchId</td>
		<td>ModuleId</td>
		<td>FacultyId</td>
		<td>BatchStartDate</td>
		<td>BatchEndDate</td>
	</tr>
	<tr>
		<td>${batch.getSkillId()}</td>
		<td>${batch.getBatchId()}</td>
		<td>${batch.getModuleId()}</td>
		<td>${batch.getFacultyId()}</td>
		<td>${batch.getBatchStartDate()}</td>
		<td>${batch.getBatchEndDate()}</td>
	</tr>
	</table>
	</center>
	