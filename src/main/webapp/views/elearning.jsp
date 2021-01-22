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
    

<style type="text/css">
 header
{
 height:14%;
  padding:2px;
  text-decoration:none;
  background-color:#DCDCDC;
  text-align: center;
}
.error
{
color: red;
}
.text-right {
  text-align: right !important;
}
#content{
  /* text-align: center;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%); */
  padding: 25px 25px 25px 25px;
 text-align: center;
 border-radius: 20px;
 margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
 background: white;
 width: 200px; height: auto;
 border-style: solid;
  border-color: #808080;
  }
</style>

<script type="text/javascript">
    function goToNewPage()
    {
        var url = document.getElementById('list').value;
        if(url != 'none') {
            window.location = url;
        }
    }
</script>
</head>

<body style="background-color:lavender;">
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
<form>
 <div id="content">
 <table>
 <tr><td>SELECT THE SKILL</td></tr>
<tr><td><select name="list" id="list" accesskey="target">
    <option value='none' selected>Choose a course</option>
    <option value="https://www.youtube.com/watch?v=eIrMbAQSU34">Java</option>
    <option value="https://www.youtube.com/watch?v=If1Lw4pLLEo">spring</option>
    <option value="https://www.youtube.com/watch?v=JR7-EdxDSf0">Hibernate</option>
    
</select></td></tr>
<tr><td><input type=button value="Go" onclick="goToNewPage()" /></td></tr>
</table>
</div>
</form>

</body>
</html>