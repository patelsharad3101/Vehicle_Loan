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
    background-color: #4CAF50;
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
  var UserTypeOfEmployment  =sessionStorage.getItem("store_employmenttype");
  document.getElementById("typeofemployment").value = UserTypeOfEmployment;
  var UserAnnualIncome  =sessionStorage.getItem("store_yearlysalary");
  document.getElementById("annualincome").value = UserAnnualIncome;
  var UserExistingEmi  =sessionStorage.getItem("store_existingemi");
  document.getElementById("existingemi").value = UserExistingEmi;
 
});
  
} else{
    alert("Sorry, your browser do not support local storage.");
}
</script>
</head>
<body>

<form action="saveIncome" method="POST">
  <div class="container">
     <div class="container">
            <div class="signup-content">
                
                <div class="signup-form">
                  <!--   <form class="register-form" id="register-form" method="POST" > -->
                       
			<h2>Employment Details</h2>
                        
                            <div class="form-group">
                                <label for="type for employment">Type Of Employment :</label>
                                <input type="text"  id="typeofemployment"name="typeOfEmployment" required readonly/>
                            </div>
                  
				<div class="form-group">
                                <label for="annual income">Annual Income :</label>
                                <input type="text" id="annualincome" name="annualIncome" required readonly/>
                            </div>
                  		<div class="form-group">
                                <label for="existing EMI">Existing EMI :</label>
                                <input type="text" id="existingemi" name="existingEmi" required readonly/>
                            </div>
			<hr noshade>
			
			
			   
                           
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" />
                        


			
                        
                  <!--   </form> -->
                </div>
            </div>
        </div>

    </div>
<div>

</form>

</body>
</html>
