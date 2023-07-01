<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
									<li class="breadcrumb-item"><a href="index.html"><i
											class="fa fa-home"></i></a></li>
									<li class="breadcrumb-item active" aria-current="page">my-account</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area end -->

		<!-- my account wrapper start -->
		<div class="my-account-wrapper section-padding">
			<div class="container">
				<div class="section-bg-color">
					<div class="row">
						<div class="col-lg-12">
							<!-- My Account Page Start -->
							<div class="myaccount-page-wrapper">
								<!-- My Account Tab Menu Start -->
								<div class="row">
									<div class="col-lg-3 col-md-4">
										<div class="myaccount-tab-menu nav" role="tablist">
											<a href="#dashboad" class="active" data-toggle="tab"><i
												class="fa fa-dashboard"></i> Dashboard</a> <a href="#orders"
												data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
												Orders</a> <a href="#download" data-toggle="tab"><i
												class="fa fa-cloud-download"></i> Download</a> <a
												href="#payment-method" data-toggle="tab"><i
												class="fa fa-credit-card"></i> Payment Method</a> <a
												href="#address-edit" data-toggle="tab"><i
												class="fa fa-map-marker"></i> address</a> <a
												href="#account-info" data-toggle="tab"><i
												class="fa fa-user"></i> Account Details</a> <a href="/logout"><i
												class="fa fa-sign-out"></i> Logout</a>
										</div>
									</div>
									<!-- My Account Tab Menu End -->

									<!-- My Account Tab Content Start -->
									<div class="col-lg-9 col-md-8">
										<div class="tab-content" id="myaccountContent">
											<!-- Single Tab Content Start -->
											<div class="tab-pane fade show active" id="dashboad"
												role="tabpanel">
												<div class="myaccount-content">
													<h5>Dashboard</h5>
													<div class="welcome">
														<p>
															Hello, <strong>${userForm.name }</strong> (If Not <strong>${userForm.username }
																!</strong><a href="/logout" class="logout"> Logout</a>)
														</p>
													</div>
													<p class="mb-0">
														From your account dashboard. you can easily check & view
														your recent orders, manage your shipping and billing
														addresses and edit your password and account details. <strong>If
															you wish to delete your account click</strong> &nbsp;<strong><a
															style="color: red; text-decoration: none;"
															onclick="return confirm('Are you sure you want to delete your account?')"
															href="account/delete">here.</a></strong>
													</p>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="orders" role="tabpanel">
												<div class="myaccount-content px-4">
													<h5>Orders</h5>
													<div class="myaccount-table table-responsive text-center">
														<table class="table table-bordered">
															<thead class="thead-light">
																<tr>
																	<th>Order ID</th>
																	<th>Date</th>
																	<th>Products</th>
																	<th>Payment</th>
																	<th>Status</th>
																	<th>Total</th>
																	<th>Action</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${orders }" var="i">
																	<tr>
																		<td>${i.id }</td>
																		<td>${i.createdAt }</td>
																		<td>${i.orderItems.size() }</td>
																		<td>${i.paymentMethod }</td>
																		<td>${i.paymentStatus }</td>
																		<td>$${i.orderTotal }</td>
																		<td><a href="/order?id=${i.id }" class="btn btn-sqr">View</a></td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="download" role="tabpanel">
												<div class="myaccount-content">
													<h5>Downloads</h5>
													<div class="myaccount-table table-responsive text-center">
														<table class="table table-bordered">
															<thead class="thead-light">
																<tr>
																	<th>Product</th>
																	<th>Date</th>
																	<th>Expire</th>
																	<th>Download</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>Haven - Free Real Estate PSD Template</td>
																	<td>Aug 22, 2018</td>
																	<td>Yes</td>
																	<td><a href="#" class="btn btn-sqr"><i
																			class="fa fa-cloud-download"></i> Download File</a></td>
																</tr>
																<tr>
																	<td>HasTech - Profolio Business Template</td>
																	<td>Sep 12, 2018</td>
																	<td>Never</td>
																	<td><a href="#" class="btn btn-sqr"><i
																			class="fa fa-cloud-download"></i> Download File</a></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="payment-method"
												role="tabpanel">
												<div class="myaccount-content">
													<h5>Payment Method</h5>
													<p class="saved-message">You Can't Saved Your Payment
														Method yet.</p>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="address-edit" role="tabpanel">
												<div class="myaccount-content">
													<h5>Billing Address</h5>
													<address>
														<p>
															<strong>Erik Jhonson</strong>
														</p>
														<p>Your address goes here</p>
														<p>Mobile: 0123456789</p>
													</address>
													<a href="#" class="btn btn-sqr"><i class="fa fa-edit"></i>
														Edit Address</a>
												</div>
											</div>
											<!-- Single Tab Content End -->

											<!-- Single Tab Content Start -->
											<div class="tab-pane fade" id="account-info" role="tabpanel">
												<div class="myaccount-content">
													<h5>Account Details</h5>
													<div class="account-details-form">


														<%-- <form:form method="POST" modelAttribute="userForm">
															<div class="single-input-item">
																<spring:bind path="name">
																	<div
																		class="form-group ${status.error ? 'has-error' : ''}">
																		<form:input type="text" path="name"
																			class="form-control" placeholder="Name"
																			autofocus="true"></form:input>
																		<form:errors path="name"></form:errors>
																	</div>
																</spring:bind>
															</div>
															<div class="single-input-item">
																<spring:bind path="gender">
																	<div
																		class="form-group ${status.error ? 'has-error' : ''}">

																		<label class="w-100">Gender: <form:radiobutton
																				path="gender" placeholder="Gender" label="Male"
																				value="Male" style="width:50px" />
																			<form:radiobutton path="gender" placeholder="Gender"
																				label="Female" value="Female" style="width:50px" /></label>

																		<form:errors path="gender"></form:errors>
																	</div>
																</spring:bind>
															</div>

															<div class="single-input-item">
																<spring:bind path="number">
																	<div
																		class="form-group ${status.error ? 'has-error' : ''}">
																		<form:input type="text" path="number"
																			class="form-control" placeholder="Number"
																			autofocus="true"></form:input>
																		<form:errors path="number"></form:errors>
																	</div>
																</spring:bind>
															</div>

															<div class="single-input-item">
																<spring:bind path="address">
																	<div
																		class="form-group ${status.error ? 'has-error' : ''}">
																		<form:input type="text" path="address"
																			class="form-control" placeholder="address"
																			autofocus="true"></form:input>
																		<form:errors path="address"></form:errors>
																	</div>
																</spring:bind>
															</div>

															<div class="single-input-item">
																<spring:bind path="username">
																	<div
																		class="form-group ${status.error ? 'has-error' : ''}">
																		<form:input type="text" path="username"
																			class="form-control" placeholder="Username"
																			autofocus="true"></form:input>
																		<form:errors path="username"></form:errors>
																	</div>
																</spring:bind>
															</div>

															<div class="row">
																<div class="col-lg-6">
																	<div class="single-input-item">
																		<spring:bind path="password">
																			<div
																				class="form-group ${status.error ? 'has-error' : ''}">
																				<form:input type="password" path="password"
																					class="form-control" placeholder="Password"></form:input>
																				<form:errors path="password"></form:errors>
																			</div>
																		</spring:bind>
																	</div>
																</div>
																<div class="col-lg-6">
																	<div class="single-input-item">
																		<spring:bind path="passwordConfirm">
																			<div
																				class="form-group ${status.error ? 'has-error' : ''}">
																				<form:input type="password" path="passwordConfirm"
																					class="form-control"
																					placeholder="Confirm your password"></form:input>
																				<form:errors path="passwordConfirm"></form:errors>
																			</div>
																		</spring:bind>
																	</div>
																</div>
															</div>
															<div class="single-input-item">
																<div class="login-reg-form-meta">
																	<div class="remember-meta">
																		<div class="custom-control custom-checkbox">
																			<input type="checkbox" class="custom-control-input"
																				id="subnewsletter"> <label
																				class="custom-control-label" for="subnewsletter">Subscribe
																				Our Newsletter</label>
																		</div>
																	</div>
																</div>
															</div>
															<div class="single-input-item">
																<button type="submit" class="btn btn-sqr">Register</button>
															</div>
														</form:form> --%>
													</div>
												</div>
											</div>
											<!-- Single Tab Content End -->
										</div>
									</div>
									<!-- My Account Tab Content End -->
								</div>
							</div>
							<!-- My Account Page End -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- my account wrapper end -->
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