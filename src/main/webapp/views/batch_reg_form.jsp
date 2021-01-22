<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Batch Registration</title>


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
    

    </br>
    </br>
    <div class="text-center wow fadeInDown" align="center">
        <h2>Batch Registration</h2>
        </br>
        <p>Enter Batch Details</p>
        
        <form action="/batch_registration" class="needs-validation" novalidate>
            <div class="form-fild" align="center">
                <label for="batchId">Batch Id:<a data-toggle="tooltip" data-placement="top"
                    title="Enter valid Batch Id (eg-BO1)"> <input type="text" class="form-control" id="batchId"
                        placeholder="Enter Batch Id" pattern="[B]{1}[0-9]{2}" name="batchId" style="width: 400px;"
                        required></a></label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-fild" align="center">
                <label for="skillId">Skill Id:<a data-toggle="tooltip" data-placement="top"
                    title="Enter valid skill Id (eg-S01)">
                    <input type="text" class="form-control" id="skilId" pattern="[S]{1}[0-9]{2}"
                        placeholder="Enter Skill Id " name="skillId" style="width: 400px;" required></a></label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            <div class="form-fild" align="center">
                <label for="moduleId">Module Id: <a data-toggle="tooltip" data-placement="top"
                    title="Enter valid module Id (eg-MO1)"> <input type="text" class="form-control" id="age"
                        placeholder="Enter Module Id" name="moduleId" pattern="[M]{1}[0-9]{2}" style="width: 400px;"
                        required></a></label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>

            </div>

            <div class="form-fild" align="center">
                <label for="technology">Technology:</label>
                <input type="text" class="form-control" id="technology" placeholder="Enter Technology" name="technology"
                    style="width: 400px;" required>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            <div class="form-fild" align="center">
                <label for="facultyId">Faculty Id:</label>
                <input type="text" class="form-control" id="facultyId" placeholder="Enter Faculty Id" name="facultyId"
                    style="width: 400px;" required>

                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            <div class="form-fild" align="center">
                <label for="batchStartDate">Batch Start Date:</label>
                <input type="date" class="form-control" id="batchStartDate" placeholder="Enter Batch Start Date"
                    name="batchStartDate" style="width: 400px;" required>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            <div class="form-fild" align="center">
                <label for="batchEndDate">Batch End Date:</label>
                <input type="date" class="form-control" id="batchEndDate" placeholder="Enter Batch End Date"
                    name="batchEndDate" style="width: 400px;" required>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            <div class="form-fild" align="center">
                <label for="batchCapacity">Batch Capacity:<a data-toggle="tooltip" data-placement="top"
                    title="Max Batch Capacity is 40">
                    <input type="number" class="form-control" id="batchCapacity" placeholder="Enter batchCapacity"
                        name="batchCapacity" min="0" max="40" style="width: 400px;" required>
                </a></label> 
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            <div class="form-fild" align="center">
                <label for="classRoom">ClassRoom:</label>
                <input type="text" class="form-control" id="classRoom" placeholder="Enter classRoom" name="classRoom"
                    style="width: 400px;" required>

                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
            </br>

            <button type="submit" class="btn btn-primary">Register</button>
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