<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Batch Mapping</title>

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
        <a class="nav-link" href="faculty_registration_page">Faculty</a>
      </li>

      
      
    </ul>

  </nav>

<body style="background-color: lavender;">
	<center>
		<h3>Batch List</h3>
		<br>
	</center>

	<center>
		<table border="1" cellpadding="2" cellspacing="2">
			<tr>
				<td>batchId</td>
				<td>skillId</td>
				<td>moduleId</td>
				<td>technology</td>
				<td>facultyId</td>
				<td>batchStartDate</td>
				<td>batchEndDate</td>
				<td>batchCapacity</td>
				<td>Action</td>
			</tr>
			<tr>
				<td>${batch.getBatchId()}</td>
				<td>${batch.getSkillId()}</td>
				<td>${batch.getModuleId()}</td>
				<td>${batch.getTechnology()}</td>
				<td>${batch.getFacultyId()}</td>
				<td>${batch.getBatchStartDate()}</td>
				<td>${batch.getBatchEndDate()}</td>
				<td>${batch.getBatchCapacity()}</td>
				<td><input type="button" name="accept" value="Accept"
					onclick="/acceptbatch"> <input type="button" name="reject"
					value="reject" onclick="/rejectbatch"></td>

			</tr>
		</table>
	</center>


</body>
</html>