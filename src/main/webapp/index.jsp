<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="zxx">

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

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

	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!-- pop up box -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome icons -->
	<link href="css/fontawesome-all.min.css" rel="stylesheet">
	
	<style>
	input[type=submit] {
    width: 30%;
    background-color: gray;
    color: white;
    padding: 10px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;	
}

input[type=text]{
	width:100%;
	padding: 10px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;	}

	
	</style>


<body>
	
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
	<!-- //header -->
	<!-- banner -->
	<section class="banner">
		<div class="callbacks_container">
			<ul class="rslides" id="slider3">
				<li>
					<div class="slider-info bg1">
						<div class="banner-text container">
							<h4 class="movetxt text-left mb-3 agile-title text-capitalize">Don't Miss Your Perfect Car!</h4>
						
								
						</div>
					</div>
				</li>
				<li>
					<div class="slider-info bg2">
						<div class="banner-text container">
							<h4 class="movetxt text-left mb-3 agile-title text-capitalize">The Fastest Way To Your New Car</h4>
							
							
								
						</div>
					</div>
				</li>
				<li>
					<div class="slider-info bgcar">
						<div class="banner-text container">
							<h4 class="movetxt text-left mb-3 agile-title text-capitalize">Make Your Dreams Come True</h4>
							
							
								
						</div>
					</div>
				</li>
			</ul>
		</div>
	</section>
	<!-- //banner -->
	<!-- Products -->
	<section class="services py-5">
		<div class="container py-md-4 mt-md-3"> 
			<h2 class="heading-agileinfo">Exciting Features We Offer <span></span></h2>
			<span class="w3-line black"></span>
			<div class="row inner_w3l_agile_grids-1 mt-md-5 pt-4">
				<div class="col-md-4 w3layouts_news_left_grid1">
					<div class="new_top">
						<i class="fa fa-university" aria-hidden="true"></i></i>			
						<h3 class="mb-3 mt-3">1.No Processing Fee</h3>
						<p>We don't charge our customers for paying any fees for Loan approval!! You can avail loan without the burden of paying extra amount... </p>
					</div>
				</div>
				<div class="col-md-4 w3layouts_news_left_grid2">
					<div class="new_top">
						<i class="fa fa-user" aria-hidden="true"></i></i>
						<h3 class="mb-3 mt-3">2.24/7 Online Support</h3>
						<p>We believe in Customer satisfaction! For any enquiries regarding loan approval, we provide round the clock customer care services. </p>
					</div>
				</div>
				<div class="col-md-4 w3layouts_news_left_grid3">
					<div class="new_top">
						<i class="fa fa-address-card" aria-hidden="true"></i>
						<h3 class="mb-3 mt-3">3.Instant Eligibilty Check</h3>
						<p>Now you can avail for loan with much  more ease with our instant Eligibility Check process</p>
					</div>
				</div>
			</div>
			
	</div>   
</section>
<!-- //Products -->
<
	
	<!-- stats -->
<section class="stats pb-5">
		<div class="container py-md-4 mt-md-3">
			<div class="row inner_w3l_agile_grids-1">
			<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid">
				<p class="counter">2018</p>
				<h3>Year of Foundation</h3>
			</div>
			<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid1">
				<p class="counter">35</p>
				<h3>Issued Loans</h3>
			</div>
			<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid2">
				<p class="counter">25</p>
				<h3>Business Partners</h3>
			</div>
			<div class="col-lg-3 col-sm-6 w3layouts_stats_left w3_counter_grid2">
				<p class="counter">150</p>
				<h3>Happy Clients</h3>
			</div>
		</div>
   </div>	
</section>
<!-- //stats -->


<!-- clients -->
	<section class="features py-md-5">
		<div class="container py-md-4 mt-md-3">
			<h3 class="heading-agileinfo text-white">Our Awesome Testimonials <span class="text-white"></span></h3>
			<span class="w3-line black"></span>
			<div class="row about-main pt-5 mt-md-5">
				<div class="col-lg-6 about-right">
				<!-- stats -->
					<div class="stats1">
						<div class="row stats_inner">
							<div class="col-md-4 col-sm-2 col-xs-3 stat-grids">
								<img src="images/carlogo1.jpg" alt="logo1" class=" img-fluid">
							</div>
							<div class="col-md-4 col-sm-2 col-xs-3 stat-grids">
								<img src="images/carlogo2.jpg" alt="logo1" class=" img-fluid">
							</div>
								<div class="col-md-4 col-sm-2 col-xs-3 stat-grids">
								<img src="images/carlogo3.jpg" alt="logo1" class=" img-fluid">
							</div>
							
						</div>
					
							
						<div class="row stats_inner ">
							
							<div class="col-md-4 col-sm-4 col-xs-3stat-grids">
								<img src="images/carlogo4.jpg" alt="logo1" class=" img-fluid">
							</div>
							<div class="col-md-4 col-sm-4 col-xs-3stat-grids">
								<img src="images/carlogo5.jpg" alt="logo1" class=" img-fluid">
							</div>
							<div class="col-md-4 col-sm-4 col-xs-3 stat-grids">
								<img src="images/carlogo6.jpg" alt="logo1" class=" img-fluid">
							</div>
							
						
				
							
							
							
						</div>
					</div>
					<!-- //stats -->

				</div>
				<div class="col-lg-6 about-left">
					    <!-- testimonials -->
						<div class="w3_agile-section testimonials text-center" id="testimonials">
							<div class=" w3ls-team-info test-bg">
								<div class="testi-left">
									<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
										  <ol class="carousel-indicators">
											<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
											<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
											<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
										  </ol>
										  <div class="carousel-inner">
											<div class="carousel-item active">
												<div class="row thumbnail adjust1">
													 <div class="col-md-3 col-sm-3">
														  <img class="media-object img-fluid" src="images/ts1.jpg" alt="" />
													   </div>
													   <div class="col-md-9 col-sm-9">
															<div class="caption testi-text">
																  <h4>Siddhart Kaul</h4>
																  <h5>Software Engineer</h5>
															  </div>
														</div>
														<p class="mt-3">
														<span class="fa fa-quote-left pr-3" aria-hidden="true"></span>Qualitative and appealing to the mind with reason.Their continous efforts in entire loan process is  really appreciable </p>
												</div>
											</div>
											<div class="carousel-item">
												<div class="row thumbnail adjust1">
													 <div class="col-md-3 col-sm-3">
														  <img class="media-object img-fluid" src="images/ts2.jpg" alt="" />
													   </div>
													   <div class="col-md-9 col-sm-9">
															<div class="caption testi-text">
																  <h4>Raj dhawan</h4>
																  <h5>Businessman</h5>
															  </div>
														</div>
														<p class="mt-3">
														<span class="fa fa-quote-left pr-3" aria-hidden="true"></span>They have enabled me and given me the confidence throughout the process.There is no hustle and bustle at all with easy loan approval!</p>
												</div>
											</div>
											<div class="carousel-item">
												<div class="row thumbnail adjust1">
													 <div class="col-md-3 col-sm-3">
														  <img class="media-object img-fluid" src="images/ts3.jpg" alt="" />
													   </div>
													   <div class="col-md-9 col-sm-9">
															<div class="caption testi-text">
																  <h4>Albert Ross</h4>
																  <h5>Buisness Tycoon</h5>
															  </div>
														</div>
														<p class="mt-3">
														<span class="fa fa-quote-left pr-3" aria-hidden="true"></span>They have been at a constant support to us .It was really glad to work with such people.Anyone can easily apply for Loan  with instant eligibility process!</p>
												</div>
											</div>
										  </div>
									</div>
								</div>
							</div>
					</div>
    <!-- //testimonials-->
			</div>
		</div>
	</div>
</section>
<!-- clients -->


<!-- details -->
	<section class="details-books py-5">
		<div class="container py-md-4 mt-md-3">
		<h2 class="heading-agileinfo">Fast & Easy Application Process<span>Speed Up the Loan Process</span></h2>
			<span class="w3-line black"></span>
			<div class="row mt-md-5 pt-4">
			<div class="col-lg-6 agileits_updates_grid_right">
					<div id="accordion">
					  <div class="card w3l-acd">
						<div class="card-header wl3_head" id="headingOne">
						  <h5 class="mb-0">
							<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							 <span class="fa fa-check mr-2" aria-hidden="true"></span>
									What makes of cars do we finance?
							</button>
						  </h5>
						</div>
						<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
						  <div class="card-body">
							<p>You can now buy Astin Martin, Hundai, Maruti Suzuki, Honda, Ford with our new instant loan strategy </p>
						  </div>
						</div>
					  </div>
					  <div class="card w3l-acd">
						<div class="card-header wl3_head" id="headingTwo">
						  <h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							 <span class="fa fa-check mr-2" aria-hidden="true"></span>
									 What is the repayment schedule like?
							</button>
						  </h5>
						</div>
						<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
						  <div class="card-body">
							<p>You can easily calculate Emi by using our Emi calculator and  tenure time for the repayment .You can refer to the Emi scheduler that maintains a log of all your loan details.</p>
						  </div>
						</div>
					  </div>
					  <div class="card w3l-acd">
						<div class="card-header wl3_head" id="headingThree">
						  <h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							 <span class="fa fa-check mr-2" aria-hidden="true"></span>
									What is EMI? How is it calculated?
							</button>
						  </h5>
						</div>
						<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
						  <div class="card-body">
							<p> equated monthly installment, is the monthly amount payments we make towards a loan we opted for EMI payments include contributions towards both principal and interest on the loan amount. 
							The mathematical formula to calculate EMI is:	EMI = P*r* (1 + r)n/((1 + r)n - 1) where	P= Loan amount, r= interest rate, n=tenure in number of month.
							</p>
						  </div>
						</div>
					  </div>
                                       
					</div>
			</div>
			<div class="col-lg-6 details-w3l">
				<img src="images/g4.jpg" class="img-fluid" alt="" />
			</div>
			</div>
		</div>
	</section>
	<!-- //details -->

	

<footer>
		<div class="container py-md-4 mt-md-3">
			<div class="row footer-top-w3layouts-agile py-5">
				
				<div class="col-lg-3 col-md-6 col-sm-6 footer-grid">
					<div class="footer-title">
						<h3>About Us</h3>
					</div>
					<div class="footer-text">
						<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. lacinia eget consectetur sed, convallis at tellus..</p>

					</div>
				</div>

				<div class="col-lg-3 col-md-6 col-sm-6 footer-grid">
					<div class="footer-title">
						<h3>Contact Us</h3>
					</div>
					<div class="footer-office-hour">
						<ul>
							<li class="hd">Address :</li>
							<li>No.27 - 5549436 street lorem, Newyork City, USA</li>

						</ul>
						<ul>
							<li class="hd">Phone:+ 1 (234) 567 8901</li>
							<li class="hd">Email:
								<a href="mailto:info@example.com">info@example.com</a>
							</li>
							<li class="hd">Fax: 1(234) 567 8901</li>
						</ul>
					</div>
				</div>



				

				<div class="col-lg-6 col-md-6 col-sm-6 footer-grid">
					<div class="footer-title">
						<h3>Suggestion Form</h3>
					</div>
					<p>Reach us in case of any query or suggestion</p>
<table>					 
<form action="suggestion" method="post">
<tr>
  <th> <label class="hd"><i class="fa fa-user" aria-hidden="true"></i> <font color="white">Name:</font></label></th>
  <td> <input type="text" id="name" name="name" placeholder="Enter Full Name" required><br></td>
</tr>

 <tr>
    <th><label><i class="fa fa-phone" aria-hidden="true"></i><font color="white"> Mobile No:  </font></label></th>
    <td><input type="text" pattern="[6-9]{1}[0-9]{9}" title="Please enter a valid mobile number"maxlength="10" id="mobile" name="mobile" placeholder="Enter Mobile No:" required></td>
  </tr>
<tr>
<th><label><i class="fa fa-envelope" aria-hidden="true"></i> <font color="white">Email ID: </font></label></th>
   <td> <input type="text" id="email" name="email" placeholder="Enter Email ID" pattern="[a-zA-Z]{1}[a-zA-Z0-9._%+-]+@[a-z.-]+\.[a-z]{2,3}$" required><br></td>
</tr>
<br>
<br>
<hr>
<tr>
   <th> <label for="suggestion"><i class="fa fa-envelope" aria-hidden="true"></i> <font color="white">Message: </font></label></th>
   <td> <textarea id="suggestion" name="suggestion" placeholder="Write something.." style="height:50px; width:350px; padding: 10px 20px;"></textarea></td>
</tr>
</table>
<div align="center">
<input type=submit class="save" value="Submit">   
</div>
</div>
  </form>
					<div class="clearfix"></div>
				</div>



			</div>
		</div>
	</footer>
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