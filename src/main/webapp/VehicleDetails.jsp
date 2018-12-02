<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: black;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
// Check if the localStorage object exists
if(localStorage){

$( window ).load(function() {
  var UserCarMake  =sessionStorage.getItem("store_carmake");
  document.getElementById("carMake").value = UserCarMake;
  var UserCarModel  =sessionStorage.getItem("store_carmodel");
  document.getElementById("carModel").value = UserCarModel;
  var UserExShowroomPrice  =sessionStorage.getItem("store_exshowroomprice");
  document.getElementById("exShowroomPrice").value = UserExShowroomPrice;
 
});
  
} else{
    alert("Sorry, your browser do not support local storage.");
}
</script>

</head>
<body>

<form action="saveVehicle" method="POST">
  <div class="container">
    <h1>Vehicle Details</h1>
    
    <hr>

    <label for="Car Make"><b>Car Make</b></label>
    <input type="text" placeholder=""  name="carMake" id="carMake"required readonly>

    <label for="Car Model"><b>Car Model</b></label>
    <input type="text" placeholder="" name="carModel" id="carModel"  required readonly>

    <label for="Ex Showroom Price"><b>Ex Showroom Price</b></label>
    <input type="text" placeholder="" name="exShowroomPrice"  id="exShowroomPrice"required readonly>
    <hr>
    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  
</form>

</body>
</html>
