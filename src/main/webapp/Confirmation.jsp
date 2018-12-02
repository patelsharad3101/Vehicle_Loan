<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html> 
<head>
<link rel="stylesheet" href="admincss/bootstrap.min.css">
    <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
// Check if the localStorage object exists
if(localStorage){

$( window ).load(function() {
  document.getElementById("display_user").innerHTML =sessionStorage.getItem("store_user");
  document.getElementById("display_carmake").innerHTML =sessionStorage.getItem("store_carmake");
  document.getElementById("display_carmodel").innerHTML =sessionStorage.getItem("store_carmodel");
  document.getElementById("display_exshowroomprice").innerHTML =sessionStorage.getItem("store_exshowroomprice");
  document.getElementById("display_employment").innerHTML =sessionStorage.getItem("store_employmenttype");
  document.getElementById("display_mobile").innerHTML =sessionStorage.getItem("store_mobile");
  document.getElementById("display_email").innerHTML =sessionStorage.getItem("store_email");
  document.getElementById("display_loanamount").innerHTML =sessionStorage.getItem("store_eligibleloan");
});
  
} else{
    alert("Sorry, your browser do not support local storage.");
}
</script>
<style>


body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
   background: url(images/bgcar.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover; 
}



.container {
    padding: 30px;
    color:255,255,255;
    width:50%;
    
}
</style>
</head>
<body  background="images/bg1.png";>
<div class="container">
<div class="header" id="myHeader" style="width:30%;">
  <a href="index.jsp"><h2>Vehicle Loan <br><i class="fa fa-car" aria-hidden="true"></i></h2></a>
</div>

<ul class="list-group">
<h1> <li class="list-group-item" ><b>Hello: <span id = "display_user"></span></li></h1>
  <li class="list-group-item"><b> Car Make: <span id = "display_carmake"></span></li>
  <li class="list-group-item">Car Model: <span id = "display_carmodel"></span></li>
  <li class="list-group-item"> Applied Loan Amount: <span id = "display_exshowroomprice"></li>
  	 <li class="list-group-item">Employment Details: <span id = "display_employment"></span></li>
  <li class="list-group-item"> Mobile: <span id = "display_mobile"></span></li>
  <li class="list-group-item"> Email: <span id = "display_email"></span></li>
  <li class="list-group-item"> Eligible Loan Amount: <span id = "display_loanamount"></span> </p>
</ul>

<p>
 <div >
      <h3>
<a class="btn btn-large btn-success"   ; data-toggle="confirmation" 
   href="LoanOffer.jsp" >Apply For The given Eligible Loan Amount</a></h3>
    </div>
    </div>
 </body>
</html>
