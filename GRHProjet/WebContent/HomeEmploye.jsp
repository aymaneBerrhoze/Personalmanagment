<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Gestion des Ressources Humaines</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->

<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="CSSs/css5/bootstrap.min.css">
<link rel="stylesheet" href="CSSs/css5/owl.carousel.min.css">
<link rel="stylesheet" href="CSSs/css5/magnific-popup.css">
<link rel="stylesheet" href="CSSs/css5/font-awesome.min.css">
<link rel="stylesheet" href="CSSs/css5/themify-icons.css">
<link rel="stylesheet" href="CSSs/css5/nice-select.css">
<link rel="stylesheet" href="CSSs/css5/flaticon.css">
<link rel="stylesheet" href="CSSs/css5/gijgo.css">
<link rel="stylesheet" href="CSSs/css5/animate.css">
<link rel="stylesheet" href="CSSs/css5/slick.css">
<link rel="stylesheet" href="CSSs/css5/slicknav.css">
<link rel="stylesheet" href="CSSs/css5/style.css">
<!-- <link rel="stylesheet" href="CSSs/css5/responsive.css"> -->
<link rel="icon" type="image/png"
	href="images/images4/icons/GRH.png" />
</head>

<body>
	<% if(session.getAttribute("Employe")==null){ 
        response.sendRedirect("Login.jsp");} 
   	 %>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<!-- header-start -->
	<header>
		<div class="header-area ">
			<div class="header-top_area d-none d-lg-block">
				<div class="container">
					<div class="row">
						<div class="col-xl-5 col-md-5 ">
							<div class="header_left">
								<p>Welcome to GRH</p>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div id="sticky-header" class="main-header-area">
				<div class="container">
					<div class="header_bottom_border">
						<div class="row align-items-center">
							<div class="col-xl-3 col-lg-2">
								<div class="logo">
									<a href="HomeEmploye.jsp"> <img src="images/images7/Logo (2).png"
										alt="">
									</a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-7">
								<div class="main-menu  d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a class="active" href="HomeEmploye.jsp">home</a></li>
											<li><a href="about.jsp">about us </a></li>
											<li><a href="services.jsp">Services</a></li>
											<li><a href="ContactUS.jsp">Contact us</a></li>
										</ul>
									</nav>
								</div>
							</div>
							
							<div class="col-xl-3 col-lg-3 d-none d-lg-block">
								<div class="Appointment">
									<h3 style="color:#FDFDFE">Bonjour, <br> 
									 Mr. ${Employe}</h3>
									<div class="book_btn d-none d-lg-block">
										<a href="logout">Logout</a>
									</div>
								</div>
							</div>

							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->

	<!-- slider_area_start -->
	<div class="slider_area">
		<div class="slider_active owl-carousel">
			<div
				class="single_slider  d-flex align-items-center slider_bg_1 overlay2"
				style="background-image: url(images/img5/banner/banner.png);">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="slider_text ">
								<h3>
									Big Opportunity <br> for your Business
								</h3>
								<div class="video_service_btn">
									<a href="services.jsp" class="boxed-btn3">Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single_slider  d-flex align-items-center slider_bg_2 overlay2"
				style="background-image: url(images/img5/banner/banner_2.png);">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="slider_text ">
								<h3>
									Big Opportunity <br> for your Business
								</h3>
								<div class="video_service_btn">
									<a href="services.jsp" class="boxed-btn3">Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single_slider  d-flex align-items-center slider_bg_1 overlay2"
				style="background-image: url(images/img5/banner/banner.png);">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="slider_text ">
								<h3>
									Big Opportunity <br> for your Business
								</h3>
								<div class="video_service_btn">
									<a href="services.jsp" class="boxed-btn3">Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single_slider  d-flex align-items-center slider_bg_2 overlay2"
				style="background-image: url(images/img5/banner/banner_2.png);">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="slider_text ">
								<h3>
									Big Opportunity <br> for your Business
								</h3>
								<div class="video_service_btn">
									<a href="services.jsp" class="boxed-btn3">Our Services</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider_area_end -->

	<!-- service_area_start -->
	<div class="service_area">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="section_title text-center mb-50">
						<h3>What we Do?</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-4 col-md-6 col-lg-4">
					<div class="single_service text-center">
						<div class="service_icon">
							<img src="images/img5/svg_icon/1.svg" alt="">
						</div>
						<br> <a href="consemp">Consultation </a>
					</div>
				</div>
				<div class="col-xl-4 col-md-6 col-lg-4">
					<div class="single_service text-center">
						<div class="service_icon">
							<img src="images/img5/svg_icon/2.svg" alt="">
						</div>
						<br> <a href="listeEmployeE">ListEmployes </a>
					</div>
				</div>




			</div>
		</div>
	</div>
	<!-- service_area_end -->

	<!-- about_info_area start  -->
	<div class="about_info_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-6 col-lg-6">
					<div class="about_text">
						<h3>Why GRH?</h3>
						<p>L activite de l agence necessite un planning de rotation des conseiller en emploi sur des postes sensibles,
						 qui necessitent une presence permanente.
                         La preparation du planning s avere une tache vitale pour la delivrance des prestations et services de l agence.
						</p>
						<a href="about.jsp" class="boxed-btn3">About Us</a>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6">
					<div class="about_thumb">
						<img src="images/img5/service/about.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /about_info_area end  -->

	<!-- counter_area  -->
	<div class="counter_area counter_bg_1 overlay_03"
		style="background-image: url(images/img5/about/counter.png);">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-3">
					<div class="single_counter text-center">
						<div class="counter_icon">
							<img src="images/img5/svg_icon/group.svg" alt="">
						</div>
						<h3>
							<span class="counter">20</span> <span> +</span>
						</h3>
						<p>Team Members</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-3">
					<div class="single_counter text-center">
						<div class="counter_icon">
							<img src="images/img5/svg_icon/cart.svg" alt="">
						</div>
						<h3>
							<span class="counter">97</span> <span>%</span>
						</h3>
						<p>Business Success</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-3">
					<div class="single_counter text-center">
						<div class="counter_icon">
							<img src="images/img5/svg_icon/heart.svg" alt="">
						</div>
						<h3>
							<span class="counter">5628</span>
						</h3>
						<p>Happy Client</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-3">
					<div class="single_counter text-center">
						<div class="counter_icon">
							<img src="images/img5/svg_icon/respect.svg" alt="">
						</div>
						<h3>
							<span class="counter">5637</span>
						</h3>
						<p>Business Done</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /counter_area  -->









	<!-- link that opens popup -->


	<!-- JS here -->
	<script src="JSs/js5/vendor/modernizr-3.5.0.min.js"></script>
	<script src="JSs/js5/vendor/jquery-1.12.4.min.js"></script>
	<script src="JSs/js5/popper.min.js"></script>
	<script src="JSs/js5/bootstrap.min.js"></script>
	<script src="JSs/js5/owl.carousel.min.js"></script>
	<script src="JSs/js5/isotope.pkgd.min.js"></script>
	<script src="JSs/js5/ajax-form.js"></script>
	<script src="JSs/js5/waypoints.min.js"></script>
	<script src="JSs/js5/jquery.counterup.min.js"></script>
	<script src="JSs/js5/imagesloaded.pkgd.min.js"></script>
	<script src="JSs/js5/scrollIt.js"></script>
	<script src="JSs/js5/jquery.scrollUp.min.js"></script>
	<script src="JSs/js5/wow.min.js"></script>
	<script src="JSs/js5/nice-select.min.js"></script>
	<script src="JSs/js5/jquery.slicknav.min.js"></script>
	<script src="JSs/js5/jquery.magnific-popup.min.js"></script>
	<script src="JSs/js5/plugins.js"></script>
	<script src="JSs/js5/gijgo.min.js"></script>
	<script src="JSs/js5/slick.min.js"></script>
	<!--contact js-->
	<script src="JSs/js5/contact.js"></script>
	<script src="JSs/js5/jquery.ajaxchimp.min.js"></script>
	<script src="JSs/js5/jquery.form.js"></script>
	<script src="JSs/js5/jquery.validate.min.js"></script>
	<script src="JSs/js5/mail-script.js"></script>

	<script src="JSs/js5/main.js"></script>
</body>

</html>