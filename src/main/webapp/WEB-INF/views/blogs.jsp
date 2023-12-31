<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Corano - Jewellery Shop eCommerce Bootstrap 5 Template</title>
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
	<%@ include file="header.jsp"%>
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
									<li class="breadcrumb-item"><a href="index.html"><i
											class="fa fa-home"></i></a></li>
									<li class="breadcrumb-item active" aria-current="page">blogs</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area end -->

		<!-- blog main wrapper start -->
		<div class="blog-main-wrapper section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 order-2 order-lg-1">
						<aside class="blog-sidebar-wrapper">
							<div class="blog-sidebar">
								<h5 class="title">search</h5>
								<div class="sidebar-serch-form">
									<form action="#">
										<input type="text" class="search-field"
											placeholder="search here">
										<button type="submit" class="search-btn">
											<i class="fa fa-search"></i>
										</button>
									</form>
								</div>
							</div>
							<!-- single sidebar end -->
							<div class="blog-sidebar">
								<h5 class="title">categories</h5>
								<ul class="blog-archive blog-category">
									<li><a href="#">Barber (10)</a></li>
									<li><a href="#">fashion (08)</a></li>
									<li><a href="#">handbag (07)</a></li>
									<li><a href="#">Jewelry (14)</a></li>
									<li><a href="#">food (10)</a></li>
								</ul>
							</div>
							<!-- single sidebar end -->
							<div class="blog-sidebar">
								<h5 class="title">Blog Archives</h5>
								<ul class="blog-archive">
									<li><a href="#">January (10)</a></li>
									<li><a href="#">February (08)</a></li>
									<li><a href="#">March (07)</a></li>
									<li><a href="#">April (14)</a></li>
									<li><a href="#">May (10)</a></li>
								</ul>
							</div>
							<!-- single sidebar end -->
							<div class="blog-sidebar">
								<h5 class="title">recent post</h5>
								<div class="recent-post">
									<div class="recent-post-item">
										<figure class="product-thumb">
											<a href="blog-details.html"> <img
												src="assets/img/blog/blog-img1.jpg" alt="blog image">
											</a>
										</figure>
										<div class="recent-post-description">
											<div class="product-name">
												<h6>
													<a href="blog-details.html">Auctor gravida enim</a>
												</h6>
												<p>march 10 2021</p>
											</div>
										</div>
									</div>
									<div class="recent-post-item">
										<figure class="product-thumb">
											<a href="blog-details.html"> <img
												src="assets/img/blog/blog-img2.jpg" alt="blog image">
											</a>
										</figure>
										<div class="recent-post-description">
											<div class="product-name">
												<h6>
													<a href="blog-details.html">gravida auctor dnim</a>
												</h6>
												<p>march 18 2021</p>
											</div>
										</div>
									</div>
									<div class="recent-post-item">
										<figure class="product-thumb">
											<a href="blog-details.html"> <img
												src="assets/img/blog/blog-img3.jpg" alt="blog image">
											</a>
										</figure>
										<div class="recent-post-description">
											<div class="product-name">
												<h6>
													<a href="blog-details.html">enim auctor gravida</a>
												</h6>
												<p>march 14 2021</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single sidebar end -->
							<div class="blog-sidebar">
								<h5 class="title">Tags</h5>
								<ul class="blog-tags">
									<li><a href="#">camera</a></li>
									<li><a href="#">computer</a></li>
									<li><a href="#">bag</a></li>
									<li><a href="#">watch</a></li>
									<li><a href="#">smartphone</a></li>
									<li><a href="#">shoes</a></li>
								</ul>
							</div>
							<!-- single sidebar end -->
						</aside>
					</div>
					<div class="col-lg-9 order-1 order-lg-2">
						<div class="blog-item-wrapper">
							<!-- blog item wrapper end -->
							<div class="row mbn-30">
								<c:forEach items="${blogs }" var="i">
									<div class="col-md-6">
										<!-- blog post item start -->
										<div class="blog-post-item mb-30">
											<figure class="blog-thumb">
												<a href="blog?id=${i.id }"> <img
													src="/blog-photos/${i.id }/${i.image}" alt="blog image">
												</a>
											</figure>
											<div class="blog-content">
												<div class="blog-meta">
													<p>${i.postedOn}
														| <a href="#">${i.postedBy}</a>
													</p>
												</div>
												<h4 class="blog-title">
													<a href="blog?id=${i.id }">${i.title}</a>
												</h4>
											</div>
										</div>
										<!-- blog post item end -->
									</div>
								</c:forEach>
							</div>
							<!-- blog item wrapper end -->

							<!-- start pagination area -->
							<!-- <div class="paginatoin-area text-center">
								<ul class="pagination-box">
									<li><a class="previous" href="#"><i
											class="pe-7s-angle-left"></i></a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a class="next" href="#"><i
											class="pe-7s-angle-right"></i></a></li>
								</ul>
							</div> -->
							<!-- end pagination area -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- blog main wrapper end -->
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
									<a href="index.html"> <img
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
										<a href="product-details.html">HasTech</a>
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
	<div class="offcanvas-minicart-wrapper">
		<div class="minicart-inner">
			<div class="offcanvas-overlay"></div>
			<div class="minicart-inner-content">
				<div class="minicart-close">
					<i class="pe-7s-close"></i>
				</div>
				<div class="minicart-content-box">
					<div class="minicart-item-wrapper">
						<ul>
							<li class="minicart-item">
								<div class="minicart-thumb">
									<a href="product-details.html"> <img
										src="assets/img/cart/cart-1.jpg" alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.html">Dozen White Botanical Linen
											Dinner Napkins</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$100.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="pe-7s-close"></i>
								</button>
							</li>
							<li class="minicart-item">
								<div class="minicart-thumb">
									<a href="product-details.html"> <img
										src="assets/img/cart/cart-2.jpg" alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.html">Dozen White Botanical Linen
											Dinner Napkins</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$80.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="pe-7s-close"></i>
								</button>
							</li>
						</ul>
					</div>

					<div class="minicart-pricing-box">
						<ul>
							<li><span>sub-total</span> <span><strong>$300.00</strong></span>
							</li>
							<li><span>Eco Tax (-2.00)</span> <span><strong>$10.00</strong></span>
							</li>
							<li><span>VAT (20%)</span> <span><strong>$60.00</strong></span>
							</li>
							<li class="total"><span>total</span> <span><strong>$370.00</strong></span>
							</li>
						</ul>
					</div>

					<div class="minicart-button">
						<a href="cart.html"><i class="fa fa-shopping-cart"></i> View
							Cart</a> <a href="cart.html"><i class="fa fa-share"></i> Checkout</a>
					</div>
				</div>
			</div>
		</div>
	</div>
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