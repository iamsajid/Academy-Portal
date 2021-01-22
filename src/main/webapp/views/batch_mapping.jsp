<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Batch List</title>
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
      <li class="nav-item">
        <a class="nav-link" href="faculty_registration_page">Faculty</a>
      </li>

      <li class="nav-item">
        <a class="nav-link " href="/employee_registrstion_page">Employee</a>
      </li>
      
    </ul>

  </nav>

<body style="background-color:lavender;">
	</br>
</head>
<body>

	<h3>Batch List</h3>
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
			<td>classRoom</td>
		</tr>
	<c:forEach var="batch" items="${batch}">
			<tr>
				<td>${batch.batch_id}</td>
				<td>${batch.skill_id}</td>
				<td>${batch.module_id }</td>
				<td>${batch.technology }</td>
				<td>${batch.faculty_id }</td>
				<td>${batch.batch_start_date }</td>
				<td>${batch.batch_end_date }</td>
				<td>${batch. }</td>
				
			</tr>
		</c:forEach>
	</table>

</body>
</html>