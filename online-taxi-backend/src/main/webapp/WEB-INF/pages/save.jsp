
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Taxi Cab Transportation</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<!--// Meta tag Keywords -->

<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css/owl.theme.css" type="text/css"
	media="all">
<!-- css files -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!-- Style-CSS -->
<link rel="stylesheet" href="css/fontawesome-all.css">
<!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- web-fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext"
	rel="stylesheet">

<!-- //web-fonts -->

<script type="text/javascript">
	function successMessage(message) {

		swal(message, " ", "success")
	}
</script>
<script type="text/javascript">
	function errorMessage(message) {

		swal(message, " ", "error")
	}
</script>
<style>
<!--
@media only screen and (min-width:321px) and (max-width:480px) {
	#btnnm {
		font-size: 0.875em;
		display: block;
		left: -100px;
		margin-top: 35px;
	}
}
-->
</style>
</head>

<body>

	<div class="banner" id="home">

		<!-- header -->
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-light top-header">
				<button class="navbar-toggler mx-auto" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>


			</nav>
		</header>
		<!-- //header -->
		<!-- banner-text -->
		<div id="wrapper">




			<!-- Slideshow 1 -->
			<div class="rslides_container">

				<ul class="rslides" id="slider1">

					<li>
						<div class="banner-img">
							<div class="bs-slider-overlay">
								<form action="login" method="get">
									<center>
										<button type="submit" class=" btn-primary submit"
											style="font-size: 110%; margin-top: 50px; margin-left: 60%;">
											<i class="fas fa-user" aria-hidden="true"></i>&nbsp&nbsp&nbspInstant
											Booking
										</button>
									</center>
								</form>
								<div class="banner-info text-center">
									<span class="fas fa-taxi"></span>
									<h1>SECURED</h1>
									<form action="booktaxi" method="get">
										<center>
											<button type="submit" class="btn1 btn-primary submit"
												style="font-size: 200%; margin-bottom: 105px">
												<i class="fas fa-paper-plane" aria-hidden="true"></i>Book
												Now
											</button>
										</center>
									</form>
									<c:choose>
										<c:when test="${not empty book1}">
											<script>
												errorMessage("${book1}")
											</script>
										</c:when>
									</c:choose>

									<c:choose>
										<c:when test="${not empty book}">
											<script>
												successMessage("${book}")
											</script>
										</c:when>
									</c:choose>
									<br> <br>


								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="banner-img one">
							<div class="bs-slider-overlay">
								<form action="login" method="get">
									<center>
										<button type="submit" class=" btn-primary submit"
											style="font-size: 110%; margin-top: 50px; margin-left: 60%;">
											<i class="fas fa-user" aria-hidden="true"></i>&nbsp&nbsp&nbspInstant
											Booking
										</button>
									</center>
								</form>
								<div class="banner-info text-center">

									<span class="fas fa-taxi"></span>



									<h4>FIXED PRICE & No Extra Charges</h4>
									<form action="booktaxi">
										<center>
											<button type="submit" class="btn1 btn-primary submit"
												style="font-size: 200%">
												<i class="fas fa-paper-plane" aria-hidden="true"></i>Book
												Now
											</button>
										</center>
									</form>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="banner-img two">
							<div class="bs-slider-overlay">
								<form action="login" method="get">
									<center>
										<button type="submit" class=" btn-primary submit"
											style="font-size: 110%; margin-top: 50px; margin-left: 60%;">
											<i class="fas fa-user" aria-hidden="true"></i>&nbsp&nbsp&nbspInstant
											Booking
										</button>
									</center>
								</form>
								<div class="banner-info text-center">
									<span class="fas fa-taxi"></span>
									<h4>No Waiting Charges</h4>
									<form action="booktaxi">
										<center>
											<button type="submit" class="btn1 btn-primary submit"
												style="font-size: 200%">
												<i class="fas fa-paper-plane" aria-hidden="true"></i>Book
												Now
											</button>
										</center>
									</form>
								</div>
							</div>
						</div>
					</li>
					<li>

						<div class="banner-img three">
							<div class="bs-slider-overlay">
								<form action="login" method="get">
									<center>
										<button type="submit" class=" btn-primary submit"
											style="font-size: 110%; margin-top: 50px; margin-left: 60%;">
											<i class="fas fa-user" aria-hidden="true"></i>&nbsp&nbsp&nbspInstant
											Booking
										</button>
									</center>
								</form>
								<div class="banner-info text-center">
									<span class="fas fa-taxi"></span>
									<h4>No Waiting Time</h4>
									<form action="booktaxi">
										<center>
											<button type="submit" class="btn1 btn-primary submit"
												style="font-size: 200%">
												<i class="fas fa-paper-plane" aria-hidden="true"></i>Book
												Now
											</button>
										</center>
									</form>
								</div>
							</div>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>
	</div>
	<br>
	<br>
	<!-- //banner -->




	<!-- about -->
	<section class="about py-5">
		<div class="container py-lg-5 py-3">
			<h3 class="heading text-capitalize text-center">Welcome</h3>
			<h5 class="heading mb-5 text-center">Taxi Cab</h5>
			<p>Discover. Experince A convenient and flexible way to travel to
				and from Biju Pattanaik International Airport, Bhubaneswar. We
				understand the needs of businesses and have tailored our services to
				ensure that our clients receive a hassle-free rental experience. We
				are pioneer in the car rental industry with the expertise to deliver
				the best in class car hire and car leasing services to corporate</p>
			<br />
			<div class="about-head text-center ">
				<div class="row about-grids-top mb-5">
					<div class="col-lg-2 col-sm-4 col-6 about-grid p-0">
						<i class="fas fa-money-bill-alt" aria-hidden="true"></i>
						<h4>Low Charges</h4>
					</div>
					<div class="col-lg-2 col-sm-4 col-6 about-grid p-0">
						<i class="fa fa-users" aria-hidden="true"></i>
						<h4>Safe & Secure</h4>
					</div>
					<div class="col-lg-2 col-sm-4 col-6 mt-sm-0 mt-5 about-grid p-0">
						<i class="fa fa-road" aria-hidden="true"></i>
						<h4>Traffic Roads</h4>
					</div>
					<div class="col-lg-2 col-sm-4 col-6 mt-lg-0 mt-5 about-grid p-0">
						<i class="fa fa-taxi" aria-hidden="true"></i>
						<h4>Taxi Cabs</h4>
					</div>
					<div class="col-lg-2 col-sm-4 col-6 mt-lg-0 mt-5 about-grid p-0">
						<i class="fa fa-cogs" aria-hidden="true"></i>
						<h4>24/7 Service</h4>
					</div>
					<div class="col-lg-2 col-sm-4 col-6 mt-lg-0 mt-5 about-grid p-0">
						<i class="fa fa-smile" aria-hidden="true"></i>
						<h4>Customers</h4>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- //about -->

	<!---728x90--->

	<!-- Why taxi cab -->
	<section class="why">
		<div class="container-fluid p-md-5 p-3">
			<h3 class="heading text-capitalize text-center">Why taxi cab</h3>
			<h5 class="heading mb-5 text-center">Taxi Cab</h5>
			<div class="row why-grids">
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 mb-4 grid1 text-center">
						<h4 class="mx-auto">
							<span>1</span>
						</h4>
						<p class="mt-5">Top Rated Drivers</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 mb-4 grid2 text-center">
						<h4 class="mx-auto">
							<span>2</span>
						</h4>
						<p class="mt-5">Safety Journey</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 mb-4 grid3 text-center">
						<h4 class="mx-auto">
							<span>3</span>
						</h4>
						<p class="mt-5">Without Peak Pricing</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 mb-4 grid4 text-center">
						<h4 class="mx-auto">
							<span>4</span>
						</h4>
						<p class="mt-5">Fast And Secure</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 mb-md-0 mb-4 grid5 text-center">
						<h4 class="mx-auto">
							<span>5</span>
						</h4>
						<p class="mt-5">Lowest Rates</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 mb-md-0 mb-4 grid6 text-center">
						<h4 class="mx-auto">
							<span>6</span>
						</h4>
						<p class="mt-5">Best Quality Cabs</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 mb-sm-0 mb-4 grid7 text-center">
						<h4 class="mx-auto">
							<span>7</span>
						</h4>
						<p class="mt-5">Online Booking</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6">
					<div class="py-5 px-2 grid8 text-center">
						<h4 class="mx-auto">
							<span>8</span>
						</h4>
						<p class="mt-5">24/7 Cab Service</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //Why taxi cab -->

	<!---728x90--->


	<!-- Our prices -->
	<section class="prices py-5">
		<div class="container py-lg-5 py-3">
			<h3 class="heading text-capitalize text-center">Our Pricing</h3>
			<h5 class="heading mb-5 text-center">Taxi Cab</h5>
			<div class="row pricing-grids">
				<div class="col-lg-3 col-md-6 price-grid">
					<h3 class="mb-4">
						Micro Taxi -- <span class="">Rs 200</span>
					</h3>

				</div>
				<div class="col-lg-3 col-md-6 mt-md-0 mt-5 price-grid">
					<h3 class="mb-4">
						Mini Taxi -- <span class="">Rs 400</span>
					</h3>

				</div>
				<div class="col-lg-3 col-md-6 mt-lg-0 mt-5 price-grid">
					<h3 class="mb-4">
						Prime Taxi -- <span class="">Rs 600</span>
					</h3>

				</div>
				<div class="col-lg-3 col-md-6 mt-lg-0 mt-5 price-grid">
					<h3 class="mb-4">
						Sedan Taxi -- <span class="">Rs 800</span>
					</h3>

				</div>
			</div>
		</div>
	</section>
	<!-- //Our prices -->

	<!--footer-->
	<footer class="py-sm-5 py-4 px-md-5 px-3">
		<div class="container-fluid pt-lg-5">

			<!-- copyright -->
			<div class="footer-cpy text-center pt-sm-5 mt-sm-5 mt-4 pt-3">
				<div class="w3layouts-agile-copyrightbottom">
					<p>
						© 2018 Taxi Cab. All Rights Reserved | Design by <a href="#">BerryBook
							Techno Solutions Pvt. Ltd</a>
					</p>

				</div>
			</div>
			<!-- //copyright -->
		</div>
	</footer>
	<!-- //footer -->

	<!-- login and register modal -->


	<!-- //login and register modal -->

	<!-- js-scripts -->

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js -->

	<!-- carousel -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$('.owl-carousel').owlCarousel({
				loop : true,
				margin : 10,
				responsiveClass : true,
				responsive : {
					0 : {
						items : 1,
						nav : true
					},
					600 : {
						items : 1,
						nav : false
					},
					900 : {
						items : 2,
						nav : false
					},
					1000 : {
						items : 3,
						nav : true,
						loop : false,
						margin : 20
					}
				}
			})
		})
	</script>
	<!-- //carousel -->

	<!--slider-->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			// Slideshow 1
			$("#slider1").responsiveSlides({
				auto : true,
				pager : true,
				nav : true,
				speed : 500,
				namespace : "centered-btns"
			});
		});
	</script>
	<!--//slider-->

	<!-- start-smoth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->

	<!-- //js-scripts -->

</body>

</html>