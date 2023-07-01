<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="en">

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
	.fade , .product-thumb img {
		height: 20em;
	}
</style>

</head>

<body class="dark">
	<!-- Start Header Area -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- end Header Area -->


	<main>
		<!-- hero slider area start -->
		<section class="slider-area">
			<div
				class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">

				<c:forEach items="${banners }" var="i">
					<!-- single slider item start -->
					<div class="hero-single-slide hero-overlay">
						<div class="hero-slider-item bg-img"
							data-bg="banner/${i.id }/${i.image }">
							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<div class="hero-slider-content slide-1">
											<h2 class="slide-title">${i.title }</h2>
											<h4 class="slide-desc">${i.des }</h4>
											<a href="shop" class="btn btn-hero">Read More</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- single slider item end -->
			</div>
		</section>
		<!-- hero slider area end -->

		<!-- twitter feed area start -->

		<!-- twitter feed area end -->

		<!-- service policy area start -->
		<div class="service-policy section-padding">
			<div class="container">
				<div class="row mtn-30">
					<div class="col-sm-6 col-lg-3">
						<div class="policy-item">
							<div class="policy-icon">
								<i class="pe-7s-plane"></i>
							</div>
							<div class="policy-content">
								<h6>Free Shipping</h6>
								<p>Free shipping all order</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-lg-3">
						<div class="policy-item">
							<div class="policy-icon">
								<i class="pe-7s-help2"></i>
							</div>
							<div class="policy-content">
								<h6>Support 24/7</h6>
								<p>Support 24 hours a day</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-lg-3">
						<div class="policy-item">
							<div class="policy-icon">
								<i class="pe-7s-back"></i>
							</div>
							<div class="policy-content">
								<h6>Money Return</h6>
								<p>30 days for free return</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-lg-3">
						<div class="policy-item">
							<div class="policy-icon">
								<i class="pe-7s-credit"></i>
							</div>
							<div class="policy-content">
								<h6>100% Payment Secure</h6>
								<p>We ensure secure payment</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- service policy area end -->

		<!-- banner statistics area start -->
		<div class="banner-statistics-area">
			<div class="container">
				<div class="row row-20 mtn-20">
					<div class="col-sm-6">
						<figure class="banner-statistics mt-20">
							<a href="/shop?categoryId=2"> <img
								src="https://cdn.shopify.com/s/files/1/0250/5169/3134/files/img3-top_545x.jpg"
								alt="product banner">
							</a>
							<div class="banner-content text-right">
								<h5 class="banner-text1">BEAUTIFUL</h5>
								<h2 class="banner-text2">
									Wedding<span>Rings</span>
								</h2>
								<a href="/shop?categoryId=2" class="btn btn-text">Shop Now</a>
							</div>
						</figure>
					</div>
					<div class="col-sm-6">
						<figure class="banner-statistics mt-20">
							<a href="/shop?categoryId=4"> <img
								src="https://cdn.shopify.com/s/files/1/0250/5169/3134/files/img2-top_545x.jpg?v=1613779842"
								alt="product banner">
							</a>
							<div class="banner-content text-center">
								<h5 class="banner-text1">EARRINGS</h5>
								<h2 class="banner-text2">
									Tangerine Floral <span>Earring</span>
								</h2>
								<a href="/shop?categoryId=4" class="btn btn-text">Shop Now</a>
							</div>
						</figure>
					</div>
					<div class="col-sm-6">
						<figure class="banner-statistics mt-20">
							<a href="/shop?categoryId=5"> <img
								src="https://cdn.shopify.com/s/files/1/0250/5169/3134/files/img1-top_545x.jpg?v=1613779841"
								alt="product banner">
							</a>
							<div class="banner-content text-center">
								<h5 class="banner-text1">NEW ARRIVALLS</h5>
								<h2 class="banner-text2">
									Pearl<span>Necklaces</span>
								</h2>
								<a href="/shop?categoryId=5" class="btn btn-text">Shop Now</a>
							</div>
						</figure>
					</div>
					<div class="col-sm-6">
						<figure class="banner-statistics mt-20">
							<a href="/shop?categoryId=7"> <img
								src="https://cdn.shopify.com/s/files/1/0250/5169/3134/files/img4-top_545x.jpg?v=1613779842"
								alt="product banner">
							</a>
							<div class="banner-content text-right">
								<h5 class="banner-text1">NEW DESIGN</h5>
								<h2 class="banner-text2">
									Diamond<span>Jewelry</span>
								</h2>
								<a href="/shop?categoryId=7" class="btn btn-text">Shop Now</a>
							</div>
						</figure>
					</div>
				</div>
			</div>
		</div>
		<!-- banner statistics area end -->

		<!-- product area start -->
		<section class="product-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- section title start -->
						<div class="section-title text-center">
							<h2 class="title">our products</h2>
							<p class="sub-title">Add our products to weekly lineup</p>
						</div>
						<!-- section title start -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="product-container">
							<!-- product tab menu start -->
							<div class="product-tab-menu">
								<ul class="nav justify-content-center">
									<li><a href="#tab1" class="active" data-toggle="tab">Entertainment</a></li>
									<li><a href="#tab2" data-toggle="tab">Storage</a></li>
									<li><a href="#tab3" data-toggle="tab">Lying</a></li>
									<li><a href="#tab4" data-toggle="tab">Tables</a></li>
								</ul>
							</div>
							<!-- product tab menu end -->

							<!-- product tab content start -->
							<div class="tab-content">
								<c:forEach varStatus="loop" items="${latestProducts }" var="i">
									<div
										class="tab-pane fade ${loop.index eq 1 ? 'show active' : ''} "
										id="tab${loop.index }">
										<div class="product-carousel-4 slick-row-10 slick-arrow-style">
											<!-- product item start -->
											<c:forEach items="${i }" var="j" varStatus="loop2">
												<div class="product-item">
													<figure class="product-thumb">
														<a href="/product?id=${j.id }"> <img class="pri-img"
															src="/product-photos/${j.id }/${j.images}" alt="product">
															<img class="sec-img"
															src="/product-photos/${j.id }/${j.images}" alt="product">
														</a>
														<div class="product-badge">
															<div class="product-label new">
																<span>new</span>
															</div>
															<div class="product-label discount">
																<span>${j.discount }%</span>
															</div>
														</div>
														<div class="button-group">
															<a href="wishilst" data-toggle="tooltip"
																data-placement="left" title="Add to wishlist"><i
																class="pe-7s-like"></i></a> <a href="compare"
																data-toggle="tooltip" data-placement="left"
																title="Add to Compare"><i class="pe-7s-refresh-2"></i></a>
															<a href="#" data-toggle="modal" data-target="#quick_view"><span
																data-toggle="tooltip" data-placement="left"
																title="Quick View"><i class="pe-7s-search"></i></span></a>
														</div>
														<div class="cart-hover">
															<a href="/cart/add?productID=${j.id }&&qty=1&&func=add"
																class="btn btn-cart">add to cart</a>
														</div>
													</figure>
													<div class="product-caption text-center">
														<div class="product-identity">
															<p class="manufacturer-name">
																<a href="shop">${j.type.name } ${j.category.name }</a>
															</p>
														</div>
														<ul class="color-categories">
															<li><a class="c-lightblue" href="#"
																title="LightSteelblue"></a></li>
															<li><a class="c-darktan" href="#" title="Darktan"></a>
															</li>
															<li><a class="c-grey" href="#" title="Grey"></a></li>
															<li><a class="c-brown" href="#" title="Brown"></a></li>
														</ul>
														<h6 class="product-name">
															<a href="/product">${j.name }</a>
														</h6>
														<div class="price-box">
															<span class="price-regular">$${j.salePrice }</span> <span
																class="price-old"><del>$${j.price }</del></span>
														</div>
													</div>
												</div>
											</c:forEach>
											<!-- product item end -->
										</div>
									</div>
								</c:forEach>
							</div>
							<!-- product tab content end -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- product area end -->

		<!-- product banner statistics area start -->
		<section class="product-banner-statistics">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="product-banner-carousel slick-row-10">
							<!-- banner single slide start -->
							<c:forEach items="${categories }" var="i">
								<div class="banner-slide-item">
									<figure class="banner-statistics">
										<a href="/shop?categoryId=${i.id }"> <img
											src="/category-photos/${i.id }/${i.images }"
											alt="product banner">
										</a>
										<div class="banner-content banner-content_style2">
											<h5 class="banner-text3">
												<a href="/shop?categoryId=${i.id }">${fn:toUpperCase(i.name) }</a>
											</h5>
										</div>
									</figure>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- product banner statistics area end -->

		<!-- featured product area start -->
		<section class="feature-product section-padding">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- section title start -->
						<div class="section-title text-center">
							<h2 class="title">featured products</h2>
							<p class="sub-title">Add featured products to weekly lineup</p>
						</div>
						<!-- section title start -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="product-carousel-4_2 slick-row-10 slick-arrow-style">
							<!-- product item start -->
							<c:forEach items="${featuredProducts }" var="i">
								<div class="product-item">
									<figure class="product-thumb">
										<a href="/product?id=${i.id }"> <img class="pri-img"
											src="/product-photos/${i.id }/${i.images}" alt="product">
											<img class="sec-img"
											src="/product-photos/${i.id }/${i.images}" alt="product">
										</a>
										<div class="product-badge">
											<div class="product-label new">
												<span>new</span>
											</div>
											<div class="product-label discount">
												<span>${i.discount}%</span>
											</div>
										</div>
										<div class="button-group">
											<a href="wishlist" data-toggle="tooltip"
												data-placement="left" title="Add to wishlist"><i
												class="pe-7s-like"></i></a> <a href="compare"
												data-toggle="tooltip" data-placement="left"
												title="Add to Compare"><i class="pe-7s-refresh-2"></i></a> <a
												href="#" data-toggle="modal" data-target="#quick_view"><span
												data-toggle="tooltip" data-placement="left"
												title="Quick View"><i class="pe-7s-search"></i></span></a>
										</div>
										<div class="cart-hover">
											<a class="btn btn-cart"
												href="/cart/add?productID=${i.id }&&qty=1&&func=add">add
												to cart</a>
										</div>
									</figure>
									<div class="product-caption text-center">
										<div class="product-identity">
											<p class="manufacturer-name">
												<a href="shop">${i.type.name} ${i.category.name}</a>
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
											<a href="/product?id=${i.id }">${i.name}</a>
										</h6>
										<div class="price-box">
											<span class="price-regular">$${i.salePrice}</span> <span
												class="price-old"><del>$${i.price}</del></span>
										</div>
									</div>
								</div>
							</c:forEach>
							<!-- product item end -->

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- featured product area end -->

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

		<!-- group product start -->
		<section class="group-product-area section-padding">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="group-product-banner">
							<figure class="banner-statistics">
								<a href="/shop?categoryId=2"> <img
									src="https://cdn.shopify.com/s/files/1/0250/5169/3134/files/img-bottom-banner_540x.jpg?v=1613781528"
									alt="product banner">
								</a>
								<div class="banner-content banner-content_style3 text-center">
									<h6 class="banner-text1">BEAUTIFUL</h6>
									<h2 class="banner-text2">Wedding Rings</h2>
									<a href="/shop?categoryId=2" class="btn btn-text">Shop Now</a>
								</div>
							</figure>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories-group-wrapper">
							<!-- section title start -->
							<div class="section-title-append">
								<h4>best seller product</h4>
								<div class="slick-append"></div>
							</div>
							<!-- section title start -->

							<!-- group list carousel start -->
							<div class="group-list-item-wrapper">
								<div class="group-list-carousel">
									<!-- group list item start -->
									<c:forEach items="${featuredProducts.subList(0,8) }" var="i">
										<div class="group-slide-item">
											<div class="group-item">
												<div class="group-item-thumb">
													<a href="/product?id=${i.id }"> <img
														src="/product-photos/${i.id }/${i.images}" alt="">
													</a>
												</div>
												<div class="group-item-desc">
													<h5 class="group-product-name">
														<a href="/product?id=${i.id }"> ${i.name}</a>
													</h5>
													<div class="price-box">
														<span class="price-regular">$${i.salePrice}</span> <span
															class="price-old"><del>$${i.price}</del></span>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>									
									<!-- group list item end -->
								</div>
							</div>
							<!-- group list carousel start -->
						</div>
					</div>
					<div class="col-lg-3">
						<div class="categories-group-wrapper">
							<!-- section title start -->
							<div class="section-title-append">
								<h4>on-sale product</h4>
								<div class="slick-append"></div>
							</div>
							<!-- section title start -->

							<!-- group list carousel start -->
							<div class="group-list-item-wrapper">
								<div class="group-list-carousel">
									<!-- group list item start -->
									<c:forEach items="${featuredProducts.subList(0,8) }" var="i">
										<div class="group-slide-item">
											<div class="group-item">
												<div class="group-item-thumb">
													<a href="/product?id=${i.id }"> <img
														src="/product-photos/${i.id }/${i.images}" alt="">
													</a>
												</div>
												<div class="group-item-desc">
													<h5 class="group-product-name">
														<a href="/product?id=${i.id }"> ${i.name}</a>
													</h5>
													<div class="price-box">
														<span class="price-regular">$${i.salePrice}</span> <span
															class="price-old"><del>$${i.price}</del></span>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
									<!-- group list item end -->
								</div>
							</div>
							<!-- group list carousel start -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- group product end -->

		<!-- latest blog area start -->
		<section class="latest-blog-area section-padding pt-0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- section title start -->
						<div class="section-title text-center">
							<h2 class="title">latest blogs</h2>
							<p class="sub-title">There are latest blog posts</p>
						</div>
						<!-- section title start -->
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="blog-carousel-active slick-row-10 slick-arrow-style">
							<!-- blog post item start -->
							<c:forEach items="${latestBlogs }" var="i" >
								<div class="blog-post-item">
									<figure class="blog-thumb">
										<a href="/blog?id=${i.id }"> <img
											src="/blog-photos/${i.id }/${i.image }"
											alt="blog image">
										</a>
									</figure>
									<div class="blog-content">
										<div class="blog-meta">
											<p>
												${i.postedOn } | <a href="#">${i.postedBy }</a>
											</p>
										</div>
										<h5 class="blog-title">
											<a href="/blog?id=${i.id }">${i.title }</a>
										</h5>
									</div>
								</div>
							</c:forEach>
							<!-- blog post item end -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- latest blog area end -->

		<!-- brand logo area start -->
		<div class="brand-logo section-padding pt-0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="brand-logo-carousel slick-row-10 slick-arrow-style">
							<!-- single brand start -->
							<div class="brand-item">
								<a href="#"> <img src="assets/img/brand/1.png" alt="">
								</a>
							</div>
							<!-- single brand end -->

							<!-- single brand start -->
							<div class="brand-item">
								<a href="#"> <img src="assets/img/brand/2.png" alt="">
								</a>
							</div>
							<!-- single brand end -->

							<!-- single brand start -->
							<div class="brand-item">
								<a href="#"> <img src="assets/img/brand/3.png" alt="">
								</a>
							</div>
							<!-- single brand end -->

							<!-- single brand start -->
							<div class="brand-item">
								<a href="#"> <img src="assets/img/brand/4.png" alt="">
								</a>
							</div>
							<!-- single brand end -->

							<!-- single brand start -->
							<div class="brand-item">
								<a href="#"> <img src="assets/img/brand/5.png" alt="">
								</a>
							</div>
							<!-- single brand end -->

							<!-- single brand start -->
							<div class="brand-item">
								<a href="#"> <img src="assets/img/brand/6.png" alt="">
								</a>
							</div>
							<!-- single brand end -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- brand logo area end -->
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
									<a href="index"> <img src="assets/img/logo/logo-light.png"
										alt="brand logo">
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
										<a href="shop">HasTech</a>
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
	<%@ include file="offcanvas-mini-cart.jsp"%>
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