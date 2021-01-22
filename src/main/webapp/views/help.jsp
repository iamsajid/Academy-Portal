<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Issue</title>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body style="background-color: lavender;">
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
    </br>
    <div class="text-center wow fadeInDown" align="center">
        <h2>Issue</h2>
        </br>
        <p>Report your issues</p>
        
         
        <form action="/help_issue" class="needs-validation" novalidate>
            <div class="form-fild" align="center">
                <label for="IssueeId">Issue Id:<a data-toggle="tooltip" data-placement="top"
                    title="Enter valid Issue Id"> <input type="text" class="form-control" id="IssueeId"
                        placeholder="Enter Issue Id" pattern="[0-9]{2}" name="issueId" style="width: 400px;"
                        required></a></label>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
        
      
        
           <div class="form-fild" align="center">
                <label for="descriptionn">Description</label>
                <input type="text" class="form-control" id="descriptionn" placeholder="Enter Description" name="description"
                    style="width: 400px;" required>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>
       

           
            <div class="form-fild" align="center">
                <label for="dateOfTickett">Date Of Ticket:</label>
                <input type="date" class="form-control" id="dateOfTickett" placeholder="Enter Present Date"
                    name="dateOfTicket" style="width: 400px;" required>
                <div class="valid-feedback"></div>
                <div class="invalid-feedback"></div>
            </div>

            
           
            </br>

             <button type="submit" class="btn btn-primary">Register</button>
        </form>

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