<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Skill Registration</title>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
		<ul class="navbar-nav ">
			<li class="nav-item "><a class="nav-link" href="/home">ACADEMY
					PORTAL</a></li>

			<li class="nav-item active "><a class="nav-link"
				href="/admin_registration_page">Admin</a></li>
		</ul>
	</nav>

<body style="background-color: lavender;">
   

    </br>
    </br>
    <div class="text-center wow fadeInDown" align="center">
        <h2>Skill Registration</h2>
        </br>
        <h6>Enter Skill Details</h6>
        <br>
        <form action="/skill_registration" class="needs-validation" novalidate>
           
            <br>

            <div class="form-fild" align="center">
                <label for="skilId">skillId<a data-toggle="tooltip" data-placement="top"
                    title="Enter valid skill Id (eg-SO1)">
                    <input type="text" class="form-control" id="skilId" pattern="[S]{1}[0-9]{2}"
                        placeholder="Enter Skill Id" name="skillId" style="width: 400px;" required></a></label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            
            <br>
             <div class="form-fild" align="center">
                <label for="skilFamily">skillFamily<a data-toggle="tooltip" data-placement="top"
                    title="Enter vaild Skill Family"> <input type="text" class="form-control" id="skilFamily"
                        placeholder="Enter Skill Family" name="skillFamily" style="width: 400px;"
                        required></a></label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            <br>
            <div class="form-fild" align="center">
                <label for="skilName">skillName<a data-toggle="tooltip" data-placement="top"
                    title="Enter valid skill name"> <input type="text" class="form-control" id="skilName"
                        placeholder="Enter Skill Name" name="skillName" style="width: 400px;"
                        required></a></label> 
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>

            </div>
            <br>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <script>
        // Disable form submissions if there are invalid fields
        (function () {
            'use strict';
            window
                .addEventListener(
                    'load',
                    function () {
                        // Get the forms we want to add validation styles to
                        var forms = document
                            .getElementsByClassName('needs-validation');
                        // Loop over them and prevent submission
                        var validation = Array.prototype.filter
                            .call(
                                forms,
                                function (form) {
                                    form
                                        .addEventListener(
                                            'submit',
                                            function (
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
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

</body>


</html>