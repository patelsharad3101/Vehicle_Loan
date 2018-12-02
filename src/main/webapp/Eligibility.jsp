<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html >

<html> 
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

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



.header {
  padding: 10px 16px;
  
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 102px;
}
</style>
<!-- <style>
body{
background-repeat: no-repeat;
    background-attachment: fixed; }
</style> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- <script language="JavaScript" type="text/javascript" 
			src="local.js" ></script> -->
<script language="JavaScript" type="text/javascript" 
			src="car.js"></script>
<script>
if(localStorage){
    $(document).ready(function(){
        $(".save").click(function(){
            // Get input name
            var str_carmake = $("#listBox").val();
            var str_carmodel = $("#secondlist").val();
            var str_exshowroomprice = $("#exshowroomprice").val();
            var str_user = $("#user").val();
            var str_age = $("#age").val();
           var str_gender = $("#gender").val();
           /*  var str_gender  =request.getParameter("gender");
           if (document.getElementById('male').checked) {
            var	str_gender = document.getElementById('male').value;
            	}
            if (document.getElementById('female').checked) {
            	var str_gender = document.getElementById('female').value;
            	}
            if (document.getElementById('other').checked) {
            	var str_gender = document.getElementById('other').value;
            	}*/
            var str_employmenttype = $("#employmenttype").val();
            var str_yearlysalary = $("#yearlysalary").val();
            var str_existingemi = $("#existingemi").val();
            var str_mobile = $("#mobile").val();
            var str_email = $("#email").val();

            var str_yearlyemi= +str_existingemi * 12;
            var str_loan = (+str_yearlysalary - str_yearlyemi)*4 ; 
            var str_eligibleloan = Math.min(str_loan, str_exshowroomprice);

            // Store data
            sessionStorage.setItem("store_carmake", str_carmake);
            sessionStorage.setItem("store_carmodel", str_carmodel);
            sessionStorage.setItem("store_exshowroomprice", str_exshowroomprice );
            sessionStorage.setItem("store_user", str_user);
            sessionStorage.setItem("store_age", str_age);
            sessionStorage.setItem("store_gender", str_gender );
            sessionStorage.setItem("store_employmenttype", str_employmenttype);
            sessionStorage.setItem("store_yearlysalary", str_yearlysalary );
            sessionStorage.setItem("store_existingemi", str_existingemi);
            sessionStorage.setItem("store_mobile", str_mobile);
            sessionStorage.setItem("store_email", str_email);
            sessionStorage.setItem("store_appliedloan", str_exshowroomprice);
            sessionStorage.setItem("store_eligibleloan", str_eligibleloan);
				
            
        });
    });
} 
else{
    alert("Sorry, your browser do not support local storage.");
}
</script>
 <link rel="stylesheet" href="eligibility.css">


</head>
<body>
<div class="header" id="myHeader" style="width:15%;">
  <a href="index.jsp"><h2>Vehicle Loan <br><i class="fa fa-car" aria-hidden="true"></i></h2></a>
</div>
<div class="content" style="width:60%; margin:auto">
<form method="post" action="Confirmation.jsp">

  <div class="container" style="width:100%;">
  
<div style="background-color:black;color:white;padding:20px;">
<h4> Vehicle Details:</h4>
</div>
<br>

<label for="Car Make"><b><i class="fa fa-car" aria-hidden="true"></i> Car Make</b></label>
    <div class='resp_code frms'>
      
       
      <div id="selection">
        <select id="listBox" onchange='selct_car(this.value)' required></select>
</div>
<label for="Car Model"><b><i class="fa fa-car " aria-hidden="true"></i> Car Model</b></label>
<div class='resp_code frms'>
	
        <select id='secondlist' required></select>
      </div>
      <div id="dumdiv" align="center" style=" font-size: 10px;color: #dadada;">
        <a id="dum" style="padding-right:0px; text-decoration:none;color: green;text-align:center;" href="http://www.hscripts.com"></a>
      </div>
    </div>

 
 
<label><i class="fa fa-rupee-sign"></i> Ex-Showroom Price:</label>
    <input type="number" pattern="[1-9]{4-9}" id="exshowroomprice"  name="Ex-Showroom Price" placeholder="Enter Value" title="enter number format" required><br><br>

<label><i class="fa fa-rupee-sign"></i> On Road Price</label>
    <input type="number" pattern="[1-9]{4-9}" id="onroadprice" name="On Road Price" placeholder="Enter Value" title="enter number format" required><br>
   <hr>

<div style="background-color:black;color:white;padding:20px;">
<h4> Applicant Details:</h4>
</div>
<br>
<label><i class="fa fa-user" aria-hidden="true"></i> Name:</label>
   <input type="text" id="user" name="user" placeholder="Enter Full Name" required><br><br>

    

<label><i class="fa fa-calendar" aria-hidden="true"></i> Age</label>
    <input type="number" id="age" name="age" placeholder="Enter your age" min="21" max="65" required><br><br>

<label><i class="fa fa-venus-mars" aria-hidden="true"></i> Gender:</label><br>
<div class='resp_code frms'>

    <select required id="gender">
        <option>select category</option>
    <option value="Male">Male</option>
	<option value="Female">Female</option>
<option value="others">Others</option>
 </select>
 <!-- <input type="radio" name="gender" id="male" value="male" > Male<br>
  <input type="radio" name="gender" id="female" value="female"> Female<br>
  <input type="radio" name="gender" id="other" value="other"> Other   -->
</div>
<br><br>
<label><i class="fa fa-user-plus" aria-hidden="true"></i> Type Of Employment:</label>
<div class='resp_code frms'>
    <select required id="employmenttype">
    <option>select </option>
    <option value="Salaried">Salaried</option>
    <option value="Self-Employed">Self-Employed</option>
    </select>
</div>
<br><br>
<label><i class="fa fa-rupee-sign"></i> Yearly Salary:</label>
    <input type="number" pattern="[1-9]{4-9}" title="enter number format" id="yearlysalary" name="Yearly Salary" placeholder="Enter Yearly Salary" required><br><br>


<label><i class="fa fa-user" aria-hidden="true"></i> Existing EMI</label></br>
    <input type="number" pattern="[1-9]{4-9}" title="enter number format"  id="existingemi" name="Existing EMI" placeholder="Existing EMI" ><br><br>
<hr>
<div style="background-color:black;color:white;padding:20px;">
<h4>Contact Details</h4>
</div>
<br>
<label><i class="fa fa-phone" aria-hidden="true"></i> Mobile No</label><br>
    <input type="text" pattern="[6-9]{1}[0-9]{9}" title="Please enter a valid mobile number"maxlength="10" id="mobile" name="mobile" placeholder="Enter Mobile No:" required><br><br>
<label><i class="fa fa-envelope" aria-hidden="true"></i> Email ID</label>
    <input type="text" id="email" name="" placeholder="Enter Email ID" pattern="[a-zA-Z]{1}[a-zA-Z0-9._%+-]+@[a-z.-]+\.[a-z]{2,3}$" required><br>
<hr>
<!-- <h4>Identify Yourself</h4>
 -->
 <div>
<input type=submit class="save" value="Next">
<!-- <button id="myBtn" class="row" >Check Eligibility</button>
 -->    </div>
</form>
</div>

<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
</body>
</html>