<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>skill mapping</title>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
    <ul class="navbar-nav ">
      <li class="nav-item ">
        <a class="nav-link" href="/home">HOME</a>
      </li>

      <li class="nav-item active ">
        <a class="nav-link" href="/admin_registration_page">Admin</a>
      </li>
     
    </ul>

  </nav>
<body style="background-color: lavender;">
<h3 align="center">Skill List</h3>
<center>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			
			<td>SkillId</td>
			<td>SkillFamily</td>
			<td>SkillName</td>
			<td>Action</td>
			
		</tr>
	<c:forEach var="skill" items="${skill}">
			<tr>
				
				<td>${skill.skillId}</td>
				<td>${skill.skillFamily}</td>
				<td>${skill.skillName}</td>
				<td><input type="button" name="map" value="Map"
					onclick="/map_module"> </td>
				
			</tr>
		</c:forEach>
	</table>
	</center>

</body>
</html>