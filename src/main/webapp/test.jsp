<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link href="css/fontawesome-all.min.css" rel="stylesheet">
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
</head>
	<title>Vehicle Loan</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
<head>
<style>
body{
background-repeat: no-repeat;
    background-attachment: fixed; }
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script language="JavaScript" type="text/javascript" 
			src="local.js" ></script>
<script language="JavaScript" type="text/javascript" 
			src="car.js"></script>

 <link rel="stylesheet" href="eligibility.css">


</head>
	<body background="images/bg1.png">
	
	<!-- header -->
	<header >
	
	<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<h1>
					<a class="navbar-brand text-capitalize" href="index.jsp">
						Vehicle Loan
					</a>
			</h1>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav text-center  ml-lg-auto">
						<li class="nav-item active  mr-3">
							<a class="nav-link" href="index.jsp">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item  mr-3">
							<a class="nav-link" href="about.jsp">About</a>
						</li>
                                                  <li class="nav-item  mr-3">
							<a class="nav-link" href="EmiCalculator.jsp">EMI Calculator</a>
						</li>

						<li class="nav-item  mr-3">
							<a class="nav-link" href="Eligibility.jsp">Apply For Loan</a>
						</li>
						
						<li class="nav-item  mr-3">
							<a class="nav-link" href="UserLogin.jsp">Login</a>
						</li>
						
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<!-- //header -->>
<form method="post" action="Confirmation.jsp">

  <div class="container">

<h4> Vehicle Details:</h4>


<label for="Car Make"><b><i class="fa fa-car" aria-hidden="true"></i> Car Make</b></label>
    <div class='resp_code frms'>
      
       
      <div id="selection">
        <select id="listBox" onchange='selct_car(this.value)'></select>
</div>
<label for="Car Model"><b><i class="fa fa-car " aria-hidden="true"></i> Car Model</b></label>
<div class='resp_code frms'>
	
        <select id='secondlist'></select>
      </div>
      <div id="dumdiv" align="center" style=" font-size: 10px;color: #dadada;">
        <a id="dum" style="padding-right:0px; text-decoration:none;color: green;text-align:center;" href="http://www.hscripts.com"></a>
      </div>
    </div>

 
 
<label><i class="fa fa-university" aria-hidden="true"></i> Ex-Showroom Price:</label>
    <input type="number" pattern="[1-9]{4-9}" id="exshowroomprice"  name="Ex-Showroom Price" placeholder="Enter Value" title="enter number format" required><br><br>

<label><i class="fa fa-university" aria-hidden="true"></i> On Road Price</label>
    <input type="number" pattern="[1-9]{4-9}" id="onroadprice" name="On Road Price" placeholder="Enter Value" title="enter number format" required><br>
   <hr>


<h4> Applicant Details:</h4>

<label><i class="fa fa-user" aria-hidden="true"></i> Name:</label>
   <input type="text" id="user" name="user" placeholder="Enter Full Name" required><br><br>

    

<label><i class="fa fa-calendar" aria-hidden="true"></i> Age</label>
    <input type="number" id="age" name="age" placeholder="Enter your age" min="21" max="65" required><br><br>

<label><i class="fa fa-venus-mars" aria-hidden="true"></i> Gender:</label><br>
<div class='resp_code frms'>

   <!--  <select required id="gender">
        <option>select category</option>
    <option value="Male">Male</option>
	<option value="Female">Female</option>
<option value="others">Others</option>
 </select> -->
 <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other  
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
<label><i class="fa fa-inr fa-fw" aria-hidden="true"></i> Yearly Salary:</label>
    <input type="number" pattern="[1-9]{4-9}" title="enter number format" id="yearlysalary" name="Yearly Salary" placeholder="Enter Yearly Salary" required><br><br>


<label><i class="fa fa-user" aria-hidden="true"></i> Existing EMI</label></br>
    <input type="number" pattern="[1-9]{4-9}" title="enter number format"  id="existingemi" name="Existing EMI" placeholder="Existing EMI" ><br><br>
<hr>
<h4>Contact Details</h4>
<label><i class="fa fa-phone" aria-hidden="true"></i> Mobile No</label><br>
    <input type="text" pattern="[6-9]{1}[0-9]{9}" title="Please enter a valid mobile number"maxlength="10" id="mobile" name="mobile" placeholder="Enter Mobile No:" required><br><br>
<label><i class="fa fa-envelope" aria-hidden="true"></i> Email ID</label>
    <input type="text" id="email" name="" placeholder="Enter Email ID" pattern="[a-zA-Z]{1}[a-zA-Z0-9._%+-]+@[a-z.-]+\.[a-z]{2,3}$" required><br>
<hr>
<!-- <h4>Identify Yourself</h4>
 -->
 <div>
<input type=submit class="save" value="Submit">
<!-- <button id="myBtn" class="row" >Check Eligibility</button>
 -->    </div>
</form>




</body>
<!-- js-->
	<script src="js/jquery-2.2.3.min.js"></script>
<!-- js-->
<!-- Banner Responsiveslides -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
<!-- // Banner Responsiveslides -->
<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
		<script>
			$('.counter').countUp();
		</script>
<!-- //stats -->
<!--pop-up-box -->
	<script src="js/jquery.magnific-popup.js"></script>
	<script>
		$(document).ready(function () {
			$('.popup-with-zoom-anim').magnificPopup({
				type: 'inline',
				fixedContentPos: false,
				fixedBgPos: true,
				overflowY: 'auto',
				closeBtnInside: true,
				preloader: false,
				midClick: true,
				removalDelay: 300,
				mainClass: 'my-mfp-zoom-in'
			});
		});
	</script>

	<!-- //pop-up-box -->
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js ">
	</script>
	<!-- //Bootstrap Core JavaScript -->



</body>
</html>