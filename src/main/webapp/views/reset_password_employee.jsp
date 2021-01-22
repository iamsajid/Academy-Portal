<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
</head>
<body style="background-color: lavender;">
<h3 align="center">Reset Your Password here</h3>
<br>
	<form action="/reset_password_employee" class="needs-validation" novalidate
		method="post">
		
		<div class="form-fild" align="center">
			<label for="newpassword">New Password</label><input type="text" name="newpassword"
				class="form-control" id="newpassword" placeholder="Enter new password"
				style="width: 400px;" required>
			<div class="valid-feedback"></div>
			<div class="invalid-feedback"></div>
		</div>
		<br>
		<div class="form-fild" align="center">
			<label for="confirmpassword">Confirm Password</label> <input type="text" name="confirmpassword"
				class="form-control" id="confirmpassword" placeholder="confirm password"
				style="width: 400px;" required>
			<div class="valid-feedback"></div>
			<div class="invalid-feedback"></div>
		</div>
		<br>

		<center>
			<button type="submit" class="btn btn-primary">Reset Password</button>
		</center>
	</form>
</body>
</html>