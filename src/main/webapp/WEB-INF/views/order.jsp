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
									<li class="breadcrumb-item"><a href="shop.html">shop</a></li>
									<li class="breadcrumb-item active" aria-current="page"><a href="/account#orders" >order</a></li>
									<li class="breadcrumb-item active" aria-current="page">${order.id }</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area end -->

		<!-- checkout main wrapper start -->
		<div class="checkout-page-wrapper section-padding">
			<div class="container">
				<div class="row">
					<!-- Checkout Billing Details -->
					<div class="col-lg-6">
						<div class="checkout-billing-details-wrap">
							<h5 class="checkout-title">Billing Details</h5>
							<div class="billing-form-wrap">
									<div class="row">
										<div class="col-md-6">
											<div class="single-input-item">
													<div class="form-group ${status.error ? 'has-error' : ''}">
														<label class="required">First Name</label>
														<input type="text" value="${checkoutForm.firstName }" placeholder="First Name"  />
														<input type="hidden" value="${checkoutForm.id }" />
													</div>
											</div>
										</div>

										<div class="col-md-6">
											<div class="single-input-item">
													<div class="form-group ${status.error ? 'has-error' : ''}">
														<label class="required">Last Name</label>
														<input type="text" value="${checkoutForm.lastName }" placeholder="Last Name"  />
													</div>
											</div>
										</div>
									</div>

									<div class="single-input-item">
										
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">Email</label>
												<input type="text" value="${checkoutForm.email }" placeholder="Email"/>
												
											</div>
										
									</div>

									<div class="single-input-item">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">Country</label>
												<select >
													<option value="${checkoutForm.country }">${checkoutForm.country }</option>
												</select>
											</div>
									</div>

									<div class="single-input-item">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">Address</label>
												<input type="text" value="${checkoutForm.address }" placeholder="Address" />
											</div>
									</div>

									<div class="single-input-item">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">Town/City</label>
												<input type="text" value="${checkoutForm.townCity }" placeholder="Town / City" />
											</div>
									</div>

									<div class="single-input-item">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">State</label>
												<input type="text" value="${checkoutForm.state }" placeholder="State"/>
											</div>
									</div>

									<div class="single-input-item">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">Post / Zip Code</label>
												<input type="text" value="${checkoutForm.zipCode }"placeholder="Zip / Post Code" />
											</div>
									</div>

									<div class="single-input-item">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">Phone</label>
												<input type="text" value="${checkoutForm.phn }" placeholder="Phone" />
											</div>
									</div>

									<!--<div class="checkout-box-wrap">
                                        <div class="single-input-item">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="create_pwd">
                                                <label class="custom-control-label" for="create_pwd">Create an
                                                    account?</label>
                                            </div>
                                        </div>
                                        <div class="account-create single-form-row">
                                            <p>Create an account by entering the information below. If you are a
                                                returning customer please login at the top of the page.</p>
                                            <div class="single-input-item">
                                                <label for="pwd" class="required">Account Password</label>
                                                <input type="password" id="pwd" placeholder="Account Password" required />
                                            </div>
                                        </div>
                                    </div>

                                     <div class="checkout-box-wrap">
                                        <div class="single-input-item">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="ship_to_different">
                                                <label class="custom-control-label" for="ship_to_different">Ship to a
                                                    different address?</label>
                                            </div>
                                        </div>
                                        <div class="ship-to-different single-form-row">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="single-input-item">
                                                        <label for="f_name_2" class="required">First Name</label>
                                                        <input type="text" id="f_name_2" placeholder="First Name" required />
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="single-input-item">
                                                        <label for="l_name_2" class="required">Last Name</label>
                                                        <input type="text" id="l_name_2" placeholder="Last Name" required />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="single-input-item">
                                                <label for="email_2" class="required">Email Address</label>
                                                <input type="email" id="email_2" placeholder="Email Address" required />
                                            </div>

                                            <div class="single-input-item">
                                                <label for="com-name_2">Company Name</label>
                                                <input type="text" id="com-name_2" placeholder="Company Name" />
                                            </div>

                                            <div class="single-input-item">
                                                <label for="country_2" class="required">Country</label>
                                                <select name="country" id="country_2">
                                                    <option value="Bangladesh">Bangladesh</option>
                                                    <option value="India">India</option>
                                                    <option value="Pakistan">Pakistan</option>
                                                    <option value="England">England</option>
                                                    <option value="London">London</option>
                                                    <option value="London">London</option>
                                                    <option value="Chaina">Chaina</option>
                                                </select>
                                            </div>

                                            <div class="single-input-item">
                                                <label for="street-address_2" class="required mt-20">Street address</label>
                                                <input type="text" id="street-address_2" placeholder="Street address Line 1" required />
                                            </div>

                                            <div class="single-input-item">
                                                <input type="text" placeholder="Street address Line 2 (Optional)" />
                                            </div>

                                            <div class="single-input-item">
                                                <label for="town_2" class="required">Town / City</label>
                                                <input type="text" id="town_2" placeholder="Town / City" required />
                                            </div>

                                            <div class="single-input-item">
                                                <label for="state_2">State / Divition</label>
                                                <input type="text" id="state_2" placeholder="State / Divition" />
                                            </div>

                                            <div class="single-input-item">
                                                <label for="postcode_2" class="required">Postcode / ZIP</label>
                                                <input type="text" id="postcode_2" placeholder="Postcode / ZIP" required />
                                            </div>
                                        </div>
                                    </div> -->

									<div class="single-input-item">
										
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<label class="required">Order Note</label>
												<textarea value="${checkoutForm.orderNote }" placeholder="Order Note" ></textarea>
											</div>
									</div>
							</div>
						</div>
					</div>

					<!-- Order Summary Details -->
					<div class="col-lg-6">
						<div class="order-summary-details">
							<h5 class="checkout-title">Your Order Summary</h5>
							<div class="order-summary-content">
								<!-- Order Summary Table -->
								<div class="order-summary-table table-responsive text-center">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Products</th>
												<th>Total</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${order.orderItems }" var="i">
												<tr>
													<td><a href="/product/${i.product.id }">${i.product.name }
															<strong> &times; ${i.qty }</strong>
													</a></td>
													<td>$${i.itemTotal }</td>
												</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<td>Sub Total</td>
												<td><strong>$${order.orderTotal }</strong></td>
											</tr>
											<tr>
												<td>Shipping</td>
												<td class="d-flex justify-content-center">
													<ul class="shipping-type">
														<li>
															<label class="m-0" for="freeshipping">Free Shipping</label>
														</li>
													</ul>
												</td>
											</tr>
											<tr>
												<td>Total Amount</td>
												<td><strong>$${order.orderTotal }</strong></td>
											</tr>
										</tfoot>
									</table>
								</div>
								<!-- Order Payment Method -->
								<div class="order-payment-method">
									<div class="single-payment-method show">
										<div class="payment-method-name">
											<label>Cash On Delivery</label><br>
											<label class="m-0" >Payment Status:&nbsp;</label><span style="color: red" >${order.paymentStatus }</span>
										</div>
										<div class="payment-method-details" data-method="cash">
											<p>Pay with cash upon delivery.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- checkout main wrapper end -->
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