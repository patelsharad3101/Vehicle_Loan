<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
// Check if the localStorage object exists
if(localStorage){

$( window ).load(function() {

	 var str_loantenure = $("#tenure").val();
     sessionStorage.setItem("store_loantenure", str_loantenure); 
	var UserLoan  =sessionStorage.getItem("store_eligibleloan");
	  document.getElementById("display_loanamount").value = UserLoan;
		var UserLoan1  =sessionStorage.getItem("store_eligibleloan");
	  document.getElementById("display_loan").value = UserLoan1;
	  var IR= 9.25;
      sessionStorage.setItem("store_interestrate", IR );
	
  document.getElementById("display_loanamount").innerHTML =sessionStorage.getItem("store_eligibleloan");
});
  
} else{
    alert("Sorry, your browser do not support local storage.");
}
</script>

<style>
.slidecontainer {
    width: 100%;
}

.slider {
    -webkit-appearance: none;
    width: 100%;
    height: 15px;
    border-radius: 5px;
    background: #d3d3d3;
    outline: none;
    opacity: 0.7;
    -webkit-transition: .2s;
    transition: opacity .2s;
}

.slider:hover {
    opacity: 1;
}

.slider::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #4CAF50;
    cursor: pointer;
}

.slider::-moz-range-thumb {
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #4CAF50;
    cursor: pointer;
}

table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th {
    height: 50px;
}

input[type=submit] {
    width: 100%;
    background-color: black;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

#bg{
width:50%;
margin:auto;
border:}

</style>
</head>
<body>
<div class="container">
<div class="header" id="myHeader" style="width:30%;">
  <a href="index.jsp"><h2>Vehicle Loan <br><i class="fa fa-car" aria-hidden="true"></i></h2></a>
</div>
<div id="bg">
<h2><center>LOAN OFFERS</center></h2>
<p><center>CUSTOMIZE YOUR LOAN QUOTE:</center></p>
<HR>
<h4>LOAN AMOUNT</h4>
</br>
<span id = "display_loanamount"></span>
<br>

<h4>LOAN TENURE</h4>

<div class="""slidecontainer">
  <input type="range" min="5" max="84" value="5" class="slider" id="myR" name=" 7s v month">
 </div>
<HR>
<h4>YOUR LOAN QUOTES </h4>
<p>New Car Loan (Product type):</p>
<table>
  <tr>
    <th>Loan Amount<br><p><span id="display_loan"></span>
</th>
    <th> Best Rate<br>(Floating)<br>9.25%</th>
  </tr>
  <tr>
    <th>Tenure (in Months) <br><p><span id="tenure"></span></th>
    <th>Rs.<br><strike>1770</strike><br>0<br>Processing Fee<br>(Including Service Tax)</th>
  </tr>
  

</table>

<div class="row">
      <a href="Register.jsp"><input type="submit" value="Submit"></a>
    </div>
</div>
<script>

var slider2 = document.getElementById("myR");
var output2 = document.getElementById("tenure");
output2.innerHTML = slider2.value;

slider2.oninput = function() {
  output2.innerHTML = this.value;
}



</script>
</body>
</html>