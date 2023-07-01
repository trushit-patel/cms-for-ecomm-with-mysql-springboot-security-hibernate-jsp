<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>${about.title }</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS
	============================================ -->
<!-- google fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
<!-- Pe-icon-7-stroke CSS -->
<link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css">
<!-- Font-awesome CSS -->
<link rel="stylesheet" href="assets/css/vendor/font-awesome.min.css">
<!-- Slick slider css -->
<link rel="stylesheet" href="assets/css/plugins/slick.min.css">
<!-- animate css -->
<link rel="stylesheet" href="assets/css/plugins/animate.css">
<!-- Nice Select css -->
<link rel="stylesheet" href="assets/css/plugins/nice-select.css">
<!-- jquery UI css -->
<link rel="stylesheet" href="assets/css/plugins/jqueryui.min.css">
<!-- main style css -->
<link rel="stylesheet" href="assets/css/style.css">

</head>

<body class="dark">
	<!-- Start Header Area -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- end Header Area -->

	<main>
		<!-- breadcrumb area start -->
		<div class="breadcrumb-area">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="breadcrumb-wrap">
							<nav aria-label="breadcrumb">
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href=""><i
											class="fa fa-home"></i></a></li>
									<li class="breadcrumb-item active" aria-current="page">${about.title }</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area end -->

		<!-- about us area start -->
		<section class="about-us section-padding">
			<div class="container">
				<div class="row align-items-center">
					${about.text }
				</div>
			</div>
		</section>
		<!-- about us area end -->

		<!-- choosing area start -->
		<div class="choosing-area section-padding pt-0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2 class="title">Why Choose Us</h2>
							<p>Accumsan vitae pede lacus ut ullamcorper sollicitudin
								quisque libero</p>
						</div>
					</div>
				</div>
				<div class="row mbn-30">
					<div class="col-lg-4 col-md-4">
						<div class="single-choose-item text-center mb-30">
							<i class="fa fa-globe"></i>
							<h4>free shipping</h4>
							<p>Amadea Shop is a very slick and clean e-commerce template
								with endless possibilities.</p>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="single-choose-item text-center mb-30">
							<i class="fa fa-plane"></i>
							<h4>fast delivery</h4>
							<p>Amadea Shop is a very slick and clean e-commerce template
								with endless possibilities.</p>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="single-choose-item text-center mb-30">
							<i class="fa fa-comments"></i>
							<h4>customers support</h4>
							<p>Amadea Shop is a very slick and clean e-commerce template
								with endless possibilities.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- choosing area end -->

		<!-- testimonial area start -->
				<section class="testimonial-area section-padding bg-img"
			style="background-color: #333333">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- section title start -->
						<div class="section-title text-center">
							<h2 class="title">testimonials</h2>
							<p class="sub-title">What they say</p>
						</div>
						<!-- section title start -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="testimonial-thumb-wrapper">
							<div class="testimonial-thumb-carousel">
								<c:forEach items="${testimonials }" var="i">
									<div class="testimonial-thumb">
										<img src="/testimonial-photos/${i.id }/${i.images }"
											alt="testimonial-thumb">
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="testimonial-content-wrapper">
							<div class="testimonial-content-carousel">
								<c:forEach items="${testimonials }" var="i">
									<div class="testimonial-content">
										<p>${i.review }</p>
										<div class="ratings">
											<c:forEach begin="1" end="${i.ratings }">
												<span><i class="fa fa-star-o"></i></span>
											</c:forEach>
										</div>
										<h5 class="testimonial-author">${i.username }</h5>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- testimonial area end -->

		<!-- team area start -->
		<div class="team-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2 class="title">Our Team</h2>
							<p>Accumsan vitae pede lacus ut ullamcorper sollicitudin
								quisque libero</p>
						</div>
					</div>
				</div>
				<div class="row mbn-30">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-30">
							<div class="team-thumb">
								<img src="assets/img/team/team_member_1.jpg" alt="">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin"></i></a> <a href="#"><i
										class="fa fa-google-plus"></i></a>
								</div>
							</div>
							<div class="team-content text-center">
								<h6 class="team-member-name">Jonathan Scott</h6>
								<p>CEO</p>
							</div>
						</div>
					</div>
					<!-- end single team member -->
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-30">
							<div class="team-thumb">
								<img src="assets/img/team/team_member_2.jpg" alt="">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin"></i></a> <a href="#"><i
										class="fa fa-google-plus"></i></a>
								</div>
							</div>
							<div class="team-content text-center">
								<h6 class="team-member-name">oliver bastin</h6>
								<p>designer</p>
							</div>
						</div>
					</div>
					<!-- end single team member -->
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-30">
							<div class="team-thumb">
								<img src="assets/img/team/team_member_3.jpg" alt="">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin"></i></a> <a href="#"><i
										class="fa fa-google-plus"></i></a>
								</div>
							</div>
							<div class="team-content text-center">
								<h6 class="team-member-name">erik jonson</h6>
								<p>developer</p>
							</div>
						</div>
					</div>
					<!-- end single team member -->
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="team-member mb-30">
							<div class="team-thumb img-full">
								<img src="assets/img/team/team_member_4.jpg" alt="">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-linkedin"></i></a> <a href="#"><i
										class="fa fa-google-plus"></i></a>
								</div>
							</div>
							<div class="team-content text-center">
								<h6 class="team-member-name">jon doe</h6>
								<p>marketing officer</p>
							</div>
						</div>
					</div>
					<!-- end single team member -->
				</div>
			</div>
		</div>
		<!-- team area end -->
	</main>

	<!-- Scroll to top start -->
	<div class="scroll-top not-visible">
		<i class="fa fa-angle-up"></i>
	</div>
	<!-- Scroll to Top End -->

	<!-- footer area start -->
	<footer class="footer-widget-area">
		<div class="footer-top section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="widget-item">
							<div class="widget-title">
								<div class="widget-logo">
									<a href=""> <img
										src="assets/img/logo/logo-light.png" alt="brand logo">
									</a>
								</div>
							</div>
							<div class="widget-body">
								<p>We are a team of designers and developers that create
									high quality wordpress, shopify, Opencart</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="widget-item">
							<h6 class="widget-title">Contact Us</h6>
							<div class="widget-body">
								<address class="contact-block">
									<ul>
										<li><i class="pe-7s-home"></i> Your address goes here</li>
										<li><i class="pe-7s-mail"></i> <a
											href="mailto:demo@example.com">demo@example.com </a></li>
										<li><i class="pe-7s-call"></i> <a href="tel:0123456789">0123456789</a></li>
									</ul>
								</address>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="widget-item">
							<h6 class="widget-title">Information</h6>
							<div class="widget-body">
								<ul class="info-list">
									<li><a href="#">about us</a></li>
									<li><a href="#">Delivery Information</a></li>
									<li><a href="#">privet policy</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="#">contact us</a></li>
									<li><a href="#">site map</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<div class="widget-item">
							<h6 class="widget-title">Follow Us</h6>
							<div class="widget-body social-link">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="row align-items-center mt-20">
					<div class="col-md-6">
						<div class="newsletter-wrapper">
							<h6 class="widget-title-text">Signup for newsletter</h6>
							<form class="newsletter-inner" id="mc-form">
								<input type="email" class="news-field" id="mc-email"
									autocomplete="off" placeholder="Enter your email address">
								<button class="news-btn" id="mc-submit">Subscribe</button>
							</form>
							<!-- mail-chimp-alerts Start -->
							<div class="mailchimp-alerts">
								<div class="mailchimp-submitting"></div>
								<!-- mail-chimp-submitting end -->
								<div class="mailchimp-success"></div>
								<!-- mail-chimp-success end -->
								<div class="mailchimp-error"></div>
								<!-- mail-chimp-error end -->
							</div>
							<!-- mail-chimp-alerts end -->
						</div>
					</div>
					<div class="col-md-6">
						<div class="footer-payment">
							<img src="assets/img/payment.png" alt="payment method">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="copyright-text text-center">
							<p>
								&copy; 2022 <b class="text-white">Corano</b> Made with <i
									class="fa fa-heart text-danger"></i> by <a
									href="https://hasthemes.com/"><b>HasThemes</b></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer area end -->

	<!-- Quick view modal start -->
	<div class="modal" id="quick_view">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<!-- product details inner end -->
					<div class="product-details-inner">
						<div class="row">
							<div class="col-lg-5">
								<div class="product-large-slider">
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img1.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img2.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img3.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img4.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img img-zoom">
										<img src="assets/img/product/product-details-img5.jpg"
											alt="product-details" />
									</div>
								</div>
								<div class="pro-nav slick-row-10 slick-arrow-style">
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img1.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img2.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img3.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img4.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img5.jpg"
											alt="product-details" />
									</div>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="product-details-des">
									<div class="manufacturer-name">
										<a href="product">HasTech</a>
									</div>
									<h3 class="product-name">Handmade Golden Necklace</h3>
									<div class="ratings d-flex">
										<span><i class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span> <span><i
											class="fa fa-star-o"></i></span>
										<div class="pro-review">
											<span>1 Reviews</span>
										</div>
									</div>
									<div class="price-box">
										<span class="price-regular">$70.00</span> <span
											class="price-old"><del>$90.00</del></span>
									</div>
									<h5 class="offer-text">
										<strong>Hurry up</strong>! offer ends in:
									</h5>
									<div class="product-countdown" data-countdown="2022/12/20"></div>
									<div class="availability">
										<i class="fa fa-check-circle"></i> <span>200 in stock</span>
									</div>
									<p class="pro-desc">Lorem ipsum dolor sit amet, consetetur
										sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut
										labore et dolore magna.</p>
									<div class="quantity-cart-box d-flex align-items-center">
										<h6 class="option-title">qty:</h6>
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1">
											</div>
										</div>
										<div class="action_link">
											<a class="btn btn-cart2" href="#">Add to cart</a>
										</div>
									</div>
									<div class="useful-links">
										<a href="#" data-toggle="tooltip" title="Compare"><i
											class="pe-7s-refresh-2"></i>compare</a> <a href="#"
											data-toggle="tooltip" title="Wishlist"><i
											class="pe-7s-like"></i>wishlist</a>
									</div>
									<div class="like-icon">
										<a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
										<a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
										<a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
										<a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- product details inner end -->
				</div>
			</div>
		</div>
	</div>
	<!-- Quick view modal end -->

	<!-- offcanvas mini cart start -->
		<%@ include file="offcanvas-mini-cart.jsp" %>
	<!-- offcanvas mini cart end -->

	<!-- JS
============================================ -->

	<!-- Modernizer JS -->
	<script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
	<!-- jQuery JS -->
	<script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
	<!-- Popper JS -->
	<script src="assets/js/vendor/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="assets/js/vendor/bootstrap.min.js"></script>
	<!-- slick Slider JS -->
	<script src="assets/js/plugins/slick.min.js"></script>
	<!-- Countdown JS -->
	<script src="assets/js/plugins/countdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="assets/js/plugins/nice-select.min.js"></script>
	<!-- jquery UI JS -->
	<script src="assets/js/plugins/jqueryui.min.js"></script>
	<!-- Image zoom JS -->
	<script src="assets/js/plugins/image-zoom.min.js"></script>
	<!-- Imagesloaded JS -->
	<script src="assets/js/plugins/imagesloaded.pkgd.min.js"></script>
	<!-- Instagram feed JS -->
	<script src="assets/js/plugins/instagramfeed.min.js"></script>
	<!-- mailchimp active js -->
	<script src="assets/js/plugins/ajaxchimp.js"></script>
	<!-- contact form dynamic js -->
	<script src="assets/js/plugins/ajax-mail.js"></script>
	<!-- google map api -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
	<!-- google map active js -->
	<script src="assets/js/plugins/google-map.js"></script>
	<!-- Main JS -->
	<script src="assets/js/main.js"></script>
</body>

</html>