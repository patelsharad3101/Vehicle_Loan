<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Complete Application Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    
<script type="text/javascript">
// Check if the localStorage object exists
if(localStorage){

$( window ).load(function() {
  
  document.getElementById("name").value =sessionStorage.getItem("store_user");
  var UserAge  =sessionStorage.getItem("store_age");
  document.getElementById("age").value = UserAge;
  var UserGender  =sessionStorage.getItem("store_gender");
  document.getElementById("gender").value = UserGender;
  var UserMobile  =sessionStorage.getItem("store_mobile");
  document.getElementById("mobile").value = UserMobile;
  var UserEmail  =sessionStorage.getItem("store_email");
  document.getElementById("email").value = UserEmail;
});
  
} else{
    alert("Sorry, your browser do not support local storage.");
}
</script>
    <style>
<style>

form{
width:80%;
    background-color: teal;
}
input:invalid {
  color: red;
}
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: teal;
    width:50%;
    margin: auto;
   
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



.resp_code
{
margin:5px 10px 10px 300px;
padding:10px 20px 10px 20px;
color:#333;
background:#f8f8f8;
overflow:auto;width:50%;
}

.frms
{
	margin:0 auto;
	width:100%;
	padding:10px;
	-moz-border-radius:.3em;
	-webkit-border-radius:.3em;
	-o-border-radius:.3em;
	font-family:Tahoma, Geneva, sans-serif;
	color:#333;
	font-size:.9em;
	line-height:1.2em;
}

.frms select
{
	width:99%;
	background:#fff;
	border:#ddd 1px solid;
	border-radius:.35em;
	-moz-border-radius:.35em;
	-webkit-border-radius:.35em;
	-o-border-radius:.35em;
	padding:0 .5%;
	margin-top:5px;
	margin-bottom:15px;
	height:35px;
}
.frms select:hover
{
	box-shadow:#dae1e5 0px 0px 5px;
	-moz-box-shadow:#dae1e5 0px 0px 5px;
	-webkit-box-shadow:#dae1e5 0px 0px 5px;
	-o-box-shadow:#dae1e5 0px 0px 5px;
}
.frms select:focus
{
	-webkit-box-shadow: inset 7px 4px 7px -7px rgba(0,0,0,0.42);
-moz-box-shadow: inset 7px 4px 7px -7px rgba(0,0,0,0.42);
box-shadow: inset 7px 4px 7px -7px rgba(0,0,0,0.42);
	
	border:#9d9983 1px solid;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.row {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.row:hover {
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
<script language="JavaScript" type="text/javascript" 
			src="state.js"></script>
</head>
<body>

    <div class="main">
        <div class="container" >
            <div class="signup-content">           
                <div class="signup-form">
                <form method="POST" class="register-form" id="register-form" action="save"  >
                <div style="background-color:black;color:white;padding:20px;">
                
                        <h2>Personal Details</h2>
                        </div>
                        <br><br>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name"><i class="fa fa-user" aria-hidden="true"></i>
                                Full Name :</label>
                                <input type="text" name="name" id="name" required readonly/>
                            </div>
                         
                        </div>

			 <div class="form-group">
                                <label for="gender"><i class="fa fa-venus-mars" aria-hidden="true"></i> Gender :</label>
                                <input type="text" name="gender" id="gender" required readonly/>
                            </div>
                               
			
			<div class="form-group">
                            <label for="age"><i class="fa fa-calendar" aria-hidden="true"></i>  Age :</label>
                            <input type="text" name="age" id="age" required readonly/>
                        </div>


			<div class="form-group">
                            <label for="mobile"><i class="fa fa-phone" aria-hidden="true"></i>   Mobile No :</label>
                            <input type="text" name="mobile" id="mobile" required readonly/>
                        </div>

			
                       <div class="form-group">
                            <label for="emailid"><i class="fa fa-envelope" aria-hidden="true"></i> Email ID :</label>
                            <input type="text" name="email" id="email" required readonly/>
                        </div>                       

			<div class="form-group">
                            <label for="password"><i class="fa fa-key" aria-hidden="true"></i>
                               Password :</label>
                            <input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Password must contain at least one number,one uppercase letter and one lowercase letter, and at least 8 or more characters" required />
                         <i class="fa fa-info-circle" aria-hidden="true"></i>The password must be atleast (8 characters long, one uppercase, one lowercase, one digit).<br>
                        </div>
                        
                        <br>
                          <div class="form-row">
                            <div class="form-group">
                               <div class='resp_code frms'>
                        
                        
                         
                            <label for="Security Question"><i class="fa fa-question-circle" aria-hidden="true"></i>
                              Security Question</label>  </br>  <br>   
                            <div id="selection">                     
                            <select class="security" name="que" id="que" required>
      <option value="">Select a question from the following options.</option>
      <option value="What was your childhood nickname?">What was your childhood nickname?</option>
      <option value="What is your favorite movie?">What is your favorite movie?</option>
      <option value="What is your sports hero?">What is your sports hero?</option>
      <option value="What is your favorite food?">What is your favorite food?</option>
   </select>
   </div>
                        </div>    
                        </div>
                        </div>
                        </br>
                         <div class="form-group">
                            <label for="answer"><i class="fa fa-reply" aria-hidden="true"></i>
                              Answer</label>
                            <input type="text" name="ans" id="ans" required />
                        </div>    

</div> 
<script>
var myInput = document.getElementById("Password");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
    document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
    document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>
                        <div class="form-group">
                            <label for="address"><i class="fa fa-address-card" aria-hidden="true"></i>
                               Address :</label>
                            <input type="text" name="address" id="address" required />
                        </div>
                       
                        <div class="form-row">
                            <div class="form-group">
                               <div class='resp_code frms'>
      
       <label for="state"><b>State</b></label>
      <div id="selection">
        <select id="listBox" onchange='selct_district(this.value)'></select>
	<label for="city"><b>City</b></label>
        <select id='secondlist'></select>
      </div>
      <div id="dumdiv" align="center" style=" font-size: 10px;color: #dadada;">
        <a id="dum" style="padding-right:0px; text-decoration:none;color: green;text-align:center;" href="http://www.hscripts.com"></a>
      </div>
    </div>
</div>
                            </div>
                            
                       
                        <div class="form-group">
                            <label for="pincode"><i class="fa fa-map-pin" aria-hidden="true"></i>
                               Pincode :</label>
                            <input type="text" pattern="[1-9][0-9]{5}"  name="pincode" id="pincode" />
                        </div>
                        
<!--                                                     <div class="form-group">
          <label class="control-label">Photo Upload</label> <font style= "color:red;">*</font>
          <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-files-o" aria-hidden="true"></i></span>
            <input class="form-control" name="files" type="file" required="required" id="file">
          </div>
          <div id="fileList"></div>
        </div>

		<div class="form-group">
          <label class="control-label">Upload AadharCard</label><font style= "color:red;">*</font>
          <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-files-o" aria-hidden="true"></i></span>
            <input class="form-control" name="files" type="file" required="required" onchange="javascript:updateList();">
          </div>
        </div>



   <div class="form-group">
          <label class="control-label">Upload PanCard</label> <font style= "color:red;">*</font>
          <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-files-o" aria-hidden="true"></i></span>
            <input class="form-control" name="files" type="file" required="required" id="file"  onchange="javascript:updateList();">
          </div>
          <div id="fileList"></div>
        </div>
                       -->  
                        
			
			  <input type=submit class="save" value="Submit">
<!-- <button id="myBtn" class="row" >Check Eligibility</button>
 -->    </div>


			
                        
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>