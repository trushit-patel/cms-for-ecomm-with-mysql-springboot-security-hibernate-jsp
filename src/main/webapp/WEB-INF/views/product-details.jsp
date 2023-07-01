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
<style type="text/css">
.pro-qty {
	width: 90px;
	height: 40px;
	border: 1px solid #555;
	padding: 0 15px;
	float: left;
}

.pro-qty .qtybtn {
	width: 15px;
	display: block;
	float: left;
	line-height: 38px;
	cursor: pointer;
	text-align: center;
	font-size: 22px;
	font-weight: 400;
	color: #ddd;
}
#qty::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}
.pro-qty input {
	color: #ddd;
	width: 28px;
	float: left;
	border: none;
	height: 40px;
	line-height: 34px;
	padding: 0;
	text-align: center;
	background-color: transparent;
}
</style>
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
									<li class="breadcrumb-item active" aria-current="page">product
										details</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area end -->

		<!-- page main wrapper start -->
		<div class="shop-main-wrapper section-padding pb-0">
			<div class="container">
				<div class="row">
					<!-- product details wrapper start -->
					<div class="col-lg-12 order-1 order-lg-2">
						<!-- product details inner end -->
						<div class="product-details-inner">
							<div class="row">
								<div class="col-lg-5">
									<div class="product-large-slider">
										<div class="pro-large-img img-zoom">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-large-img img-zoom">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-large-img img-zoom">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-large-img img-zoom">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-large-img img-zoom">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
									</div>
									<div class="pro-nav slick-row-10 slick-arrow-style">
										<div class="pro-nav-thumb">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-nav-thumb">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-nav-thumb">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-nav-thumb">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
										<div class="pro-nav-thumb">
											<img src="/product-photos/${product.id }/${product.images}"
												alt="product-details" />
										</div>
									</div>
								</div>
								<div class="col-lg-7">
									<div class="product-details-des">
										<div class="manufacturer-name">
											<a href="#">${product.category.name }&nbsp;${product.type.name }</a>
										</div>
										<h3 class="product-name">${product.name }</h3>
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
											<span class="price-regular">$${product.salePrice }</span> <span
												class="price-old"><del>$${product.price }</del></span>
										</div>
										<h5 class="offer-text">
											<strong>Hurry up</strong>! offer ends in:
										</h5>
										<div class="product-countdown" data-countdown="2022/12/20"></div>
										<div class="availability">
											<i class="fa fa-check-circle"></i> <span>${product.inStock }</span>
										</div>
										<p class="pro-desc">${product.shortdes }</p>
										<div class="quantity-cart-box d-flex align-items-center">
											<div class="pro-qty">
														<form action="cart/add" id="qtyForm">
															<input type="hidden" name="productID"
																value="${product.id }">
																<input type="hidden" name="func"
																value="add">
															<input class="dec qtybtn" value="-" >
															<input type="number" id="qty" name="qty"
																value="1">
															<input class="inc qtybtn" value="+" >
														</form>
											</div>&nbsp;&nbsp;&nbsp;
											<div class="action_link">
												<a class="btn btn-cart2" onmouseup="javascript:$('#qtyForm').submit();">Add</a>
											</div>
										</div>
										<!-- <div class="pro-size">
                                            <h6 class="option-title">size :</h6>
                                            <select class="nice-select">
                                                <option>S</option>
                                                <option>M</option>
                                                <option>L</option>
                                                <option>XL</option>
                                            </select>
                                        </div>
                                        <div class="color-option">
                                            <h6 class="option-title">color :</h6>
                                            <ul class="color-categories">
                                                <li>
                                                    <a class="c-lightblue" href="#" title="LightSteelblue"></a>
                                                </li>
                                                <li>
                                                    <a class="c-darktan" href="#" title="Darktan"></a>
                                                </li>
                                                <li>
                                                    <a class="c-grey" href="#" title="Grey"></a>
                                                </li>
                                                <li>
                                                    <a class="c-brown" href="#" title="Brown"></a>
                                                </li>
                                            </ul>
                                        </div> 
                                        <div class="useful-links">
                                            <a href="#" data-toggle="tooltip" title="Compare"><i
                                                    class="pe-7s-refresh-2"></i>compare</a>
                                            <a href="#" data-toggle="tooltip" title="Wishlist"><i
                                                    class="pe-7s-like"></i>wishlist</a>
                                        </div>-->
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

						<!-- product details reviews start -->
						<div class="product-details-reviews section-padding pb-0">
							<div class="row">
								<div class="col-lg-12">
									<div class="product-review-info">
										<ul class="nav review-tab">
											<li><a class="active" data-toggle="tab" href="#tab_one">description</a>
											</li>
											<li><a data-toggle="tab" href="#tab_two">information</a>
											</li>
											<li><a data-toggle="tab" href="#tab_three">reviews
													(1)</a></li>
										</ul>
										<div class="tab-content reviews-tab">
											<div class="tab-pane fade show active" id="tab_one">
												<div class="tab-one">
													<p>${product.des }</p>
												</div>
											</div>
											<div class="tab-pane fade" id="tab_two">
												<table class="table table-bordered">
													<tbody>
														<tr>
															<td>color</td>
															<td>black, blue, red</td>
														</tr>
														<tr>
															<td>size</td>
															<td>L, M, S</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="tab-pane fade" id="tab_three">
												<form action="#" class="review-form">
													<h5>
														1 review for <span>Chaz Kangeroo</span>
													</h5>
													<div class="total-reviews">
														<div class="rev-avatar">
															<img src="assets/img/about/avatar.jpg" alt="">
														</div>
														<div class="review-box">
															<div class="ratings">
																<span class="good"><i class="fa fa-star"></i></span> <span
																	class="good"><i class="fa fa-star"></i></span> <span
																	class="good"><i class="fa fa-star"></i></span> <span
																	class="good"><i class="fa fa-star"></i></span> <span><i
																	class="fa fa-star"></i></span>
															</div>
															<div class="post-author">
																<p>
																	<span>admin -</span> 30 Mar, 2021
																</p>
															</div>
															<p>Aliquam fringilla euismod risus ac bibendum. Sed
																sit amet sem varius ante feugiat lacinia. Nunc ipsum
																nulla, vulputate ut venenatis vitae, malesuada ut mi.
																Quisque iaculis, dui congue placerat pretium, augue erat
																accumsan lacus</p>
														</div>
													</div>
													<div class="form-group row">
														<div class="col">
															<label class="col-form-label"><span
																class="text-danger">*</span> Your Name</label> <input
																type="text" class="form-control" required>
														</div>
													</div>
													<div class="form-group row">
														<div class="col">
															<label class="col-form-label"><span
																class="text-danger">*</span> Your Email</label> <input
																type="email" class="form-control" required>
														</div>
													</div>
													<div class="form-group row">
														<div class="col">
															<label class="col-form-label"><span
																class="text-danger">*</span> Your Review</label>
															<textarea class="form-control" required></textarea>
															<div class="help-block pt-10">
																<span class="text-danger">Note:</span> HTML is not
																translated!
															</div>
														</div>
													</div>
													<div class="form-group row">
														<div class="col">
															<label class="col-form-label"><span
																class="text-danger">*</span> Rating</label> &nbsp;&nbsp;&nbsp;
															Bad&nbsp; <input type="radio" value="1" name="rating">
															&nbsp; <input type="radio" value="2" name="rating">
															&nbsp; <input type="radio" value="3" name="rating">
															&nbsp; <input type="radio" value="4" name="rating">
															&nbsp; <input type="radio" value="5" name="rating"
																checked> &nbsp;Good
														</div>
													</div>
													<div class="buttons">
														<button class="btn btn-sqr" type="submit">Continue</button>
													</div>
												</form>
												<!-- end of review-form -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- product details reviews end -->
					</div>
					<!-- product details wrapper end -->
				</div>
			</div>
		</div>
		<!-- page main wrapper end -->

		<!-- related products area start -->
		<section class="related-products section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- section title start -->
						<div class="section-title text-center">
							<h2 class="title">Related Products</h2>
							<p class="sub-title">Add related products to weekly lineup</p>
						</div>
						<!-- section title start -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="product-carousel-4 slick-row-10 slick-arrow-style">
							<!-- product item start -->
							<div class="product-item">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-11.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-8.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>new</span>
										</div>
										<div class="product-label discount">
											<span>10%</span>
										</div>
									</div>
									<div class="button-group">
										<a href="wishlist.html" data-toggle="tooltip"
											data-placement="left" title="Add to wishlist"><i
											class="pe-7s-like"></i></a> <a href="compare.html"
											data-toggle="tooltip" data-placement="left"
											title="Add to Compare"><i class="pe-7s-refresh-2"></i></a> <a
											href="#" data-toggle="modal" data-target="#quick_view"><span
											data-toggle="tooltip" data-placement="left"
											title="Quick View"><i class="pe-7s-search"></i></span></a>
									</div>
									<div class="cart-hover">
										<button class="btn btn-cart">add to cart</button>
									</div>
								</figure>
								<div class="product-caption text-center">
									<div class="product-identity">
										<p class="manufacturer-name">
											<a href="product-details.html">Gold</a>
										</p>
									</div>
									<ul class="color-categories">
										<li><a class="c-lightblue" href="#"
											title="LightSteelblue"></a></li>
										<li><a class="c-darktan" href="#" title="Darktan"></a></li>
										<li><a class="c-grey" href="#" title="Grey"></a></li>
										<li><a class="c-brown" href="#" title="Brown"></a></li>
									</ul>
									<h6 class="product-name">
										<a href="product-details.html">Perfect Diamond Jewelry</a>
									</h6>
									<div class="price-box">
										<span class="price-regular">$60.00</span> <span
											class="price-old"><del>$70.00</del></span>
									</div>
								</div>
							</div>
							<!-- product item end -->

							<!-- product item start -->
							<div class="product-item">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-12.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-7.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>sale</span>
										</div>
										<div class="product-label discount">
											<span>new</span>
										</div>
									</div>
									<div class="button-group">
										<a href="wishlist.html" data-toggle="tooltip"
											data-placement="left" title="Add to wishlist"><i
											class="pe-7s-like"></i></a> <a href="compare.html"
											data-toggle="tooltip" data-placement="left"
											title="Add to Compare"><i class="pe-7s-refresh-2"></i></a> <a
											href="#" data-toggle="modal" data-target="#quick_view"><span
											data-toggle="tooltip" data-placement="left"
											title="Quick View"><i class="pe-7s-search"></i></span></a>
									</div>
									<div class="cart-hover">
										<button class="btn btn-cart">add to cart</button>
									</div>
								</figure>
								<div class="product-caption text-center">
									<div class="product-identity">
										<p class="manufacturer-name">
											<a href="product-details.html">mony</a>
										</p>
									</div>
									<ul class="color-categories">
										<li><a class="c-lightblue" href="#"
											title="LightSteelblue"></a></li>
										<li><a class="c-darktan" href="#" title="Darktan"></a></li>
										<li><a class="c-grey" href="#" title="Grey"></a></li>
										<li><a class="c-brown" href="#" title="Brown"></a></li>
									</ul>
									<h6 class="product-name">
										<a href="product-details.html">Handmade Golden Necklace</a>
									</h6>
									<div class="price-box">
										<span class="price-regular">$50.00</span> <span
											class="price-old"><del>$80.00</del></span>
									</div>
								</div>
							</div>
							<!-- product item end -->

							<!-- product item start -->
							<div class="product-item">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-13.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-6.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>new</span>
										</div>
									</div>
									<div class="button-group">
										<a href="wishlist.html" data-toggle="tooltip"
											data-placement="left" title="Add to wishlist"><i
											class="pe-7s-like"></i></a> <a href="compare.html"
											data-toggle="tooltip" data-placement="left"
											title="Add to Compare"><i class="pe-7s-refresh-2"></i></a> <a
											href="#" data-toggle="modal" data-target="#quick_view"><span
											data-toggle="tooltip" data-placement="left"
											title="Quick View"><i class="pe-7s-search"></i></span></a>
									</div>
									<div class="cart-hover">
										<button class="btn btn-cart">add to cart</button>
									</div>
								</figure>
								<div class="product-caption text-center">
									<div class="product-identity">
										<p class="manufacturer-name">
											<a href="product-details.html">Diamond</a>
										</p>
									</div>
									<ul class="color-categories">
										<li><a class="c-lightblue" href="#"
											title="LightSteelblue"></a></li>
										<li><a class="c-darktan" href="#" title="Darktan"></a></li>
										<li><a class="c-grey" href="#" title="Grey"></a></li>
										<li><a class="c-brown" href="#" title="Brown"></a></li>
									</ul>
									<h6 class="product-name">
										<a href="product-details.html">Perfect Diamond Jewelry</a>
									</h6>
									<div class="price-box">
										<span class="price-regular">$99.00</span> <span
											class="price-old"><del></del></span>
									</div>
								</div>
							</div>
							<!-- product item end -->

							<!-- product item start -->
							<div class="product-item">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-14.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-5.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>sale</span>
										</div>
										<div class="product-label discount">
											<span>15%</span>
										</div>
									</div>
									<div class="button-group">
										<a href="wishlist.html" data-toggle="tooltip"
											data-placement="left" title="Add to wishlist"><i
											class="pe-7s-like"></i></a> <a href="compare.html"
											data-toggle="tooltip" data-placement="left"
											title="Add to Compare"><i class="pe-7s-refresh-2"></i></a> <a
											href="#" data-toggle="modal" data-target="#quick_view"><span
											data-toggle="tooltip" data-placement="left"
											title="Quick View"><i class="pe-7s-search"></i></span></a>
									</div>
									<div class="cart-hover">
										<button class="btn btn-cart">add to cart</button>
									</div>
								</figure>
								<div class="product-caption text-center">
									<div class="product-identity">
										<p class="manufacturer-name">
											<a href="product-details.html">silver</a>
										</p>
									</div>
									<ul class="color-categories">
										<li><a class="c-lightblue" href="#"
											title="LightSteelblue"></a></li>
										<li><a class="c-darktan" href="#" title="Darktan"></a></li>
										<li><a class="c-grey" href="#" title="Grey"></a></li>
										<li><a class="c-brown" href="#" title="Brown"></a></li>
									</ul>
									<h6 class="product-name">
										<a href="product-details.html">Diamond Exclusive Ornament</a>
									</h6>
									<div class="price-box">
										<span class="price-regular">$55.00</span> <span
											class="price-old"><del>$75.00</del></span>
									</div>
								</div>
							</div>
							<!-- product item end -->

							<!-- product item start -->
							<div class="product-item">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-15.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-4.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>new</span>
										</div>
										<div class="product-label discount">
											<span>20%</span>
										</div>
									</div>
									<div class="button-group">
										<a href="wishlist.html" data-toggle="tooltip"
											data-placement="left" title="Add to wishlist"><i
											class="pe-7s-like"></i></a> <a href="compare.html"
											data-toggle="tooltip" data-placement="left"
											title="Add to Compare"><i class="pe-7s-refresh-2"></i></a> <a
											href="#" data-toggle="modal" data-target="#quick_view"><span
											data-toggle="tooltip" data-placement="left"
											title="Quick View"><i class="pe-7s-search"></i></span></a>
									</div>
									<div class="cart-hover">
										<button class="btn btn-cart">add to cart</button>
									</div>
								</figure>
								<div class="product-caption text-center">
									<div class="product-identity">
										<p class="manufacturer-name">
											<a href="product-details.html">mony</a>
										</p>
									</div>
									<ul class="color-categories">
										<li><a class="c-lightblue" href="#"
											title="LightSteelblue"></a></li>
										<li><a class="c-darktan" href="#" title="Darktan"></a></li>
										<li><a class="c-grey" href="#" title="Grey"></a></li>
										<li><a class="c-brown" href="#" title="Brown"></a></li>
									</ul>
									<h6 class="product-name">
										<a href="product-details.html">Citygold Exclusive Ring</a>
									</h6>
									<div class="price-box">
										<span class="price-regular">$60.00</span> <span
											class="price-old"><del>$70.00</del></span>
									</div>
								</div>
							</div>
							<!-- product item end -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- related products area end -->
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