
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<header class="header-area header-wide">
	<!-- main header start -->
	<div class="main-header d-none d-lg-block">
		<!-- header top start -->
		<div class="header-top bdr-bottom">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="welcome-message">
							<p>Welcome to Corano Jewellery online store</p>
						</div>
					</div>
					<div class="col-lg-6 text-right">
						<div class="header-top-settings">
							<ul class="nav align-items-center justify-content-end">
								<li class="curreny-wrap">$ Currency <i
									class="fa fa-angle-down"></i>
									<ul class="dropdown-list curreny-list">
										<li><a href="#">$ USD</a></li>
										<li><a href="#">€ EURO</a></li>
									</ul>
								</li>
								<li class="language"><img src="assets/img/icon/en.png"
									alt="flag"> English <i class="fa fa-angle-down"></i>
									<ul class="dropdown-list">
										<li><a href="#"><img src="assets/img/icon/en.png"
												alt="flag"> english</a></li>
										<li><a href="#"><img src="assets/img/icon/fr.png"
												alt="flag"> french</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- header top end -->

		<!-- header middle area start -->
		<div class="header-main-area sticky">
			<div class="container">
				<div class="row align-items-center position-relative">

					<!-- start logo area -->
					<div class="col-lg-2">
						<div class="logo">
							<a href="/"> <img
								src="assets/img/logo/logo-light.png" alt="Brand Logo">
							</a>
						</div>
					</div>
					<!-- start logo area -->

					<!-- main menu area start -->
					<div class="col-lg-6 position-static">
						<div class="main-menu-area">
							<div class="main-menu">
								<!-- main menu navbar start -->
								<nav class="desktop-menu">
									<ul>
										<li class="active"><a href="/">Home </a></li>
										<li class="position-static"><a href="about">About Us</a></li>
										<li><a href="shop">shop </a></li>
										<li><a href="blogs">Blog </a></li>
										<li><a href="contact">Contact us</a></li>
										<li><a href="/cart">cart </a></li>
										<li><a href="blog-left-sidebar.html">Policies <i class="fa fa-angle-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="privacy-policy">Privacy Policy</a></li>
                                                    <li><a href="refund-policy">Refund Policy</a></li>
                                                    <li><a href="shipping-policy">Shipping Policy</a></li>
                                                    <li><a href="terms-of-service">Terms Of Service</a></li>
                                                </ul>
                                            </li>
									</ul>
								</nav>
								<!-- main menu navbar end -->
							</div>
						</div>
					</div>
					<!-- main menu area end -->

					<!-- mini cart area start -->
					<div class="col-lg-4">
						<div
							class="header-right d-flex align-items-center justify-content-xl-between justify-content-lg-end">
							<div class="header-search-container">
								<button class="search-trigger d-xl-none d-lg-block">
									<i class="pe-7s-search"></i>
								</button>
								<form
									class="header-search-box d-lg-none d-xl-block animated jackInTheBox">
									<input type="text" placeholder="Search entire store hire"
										class="header-search-field">
									<button class="header-search-btn">
										<i class="pe-7s-search"></i>
									</button>
								</form>
							</div>
							<div class="header-configure-area">
								<ul class="nav justify-content-end">
									<li class="user-hover"><a href="#"> <i
											class="pe-7s-user"></i>
									</a>
										<ul class="dropdown-list">
											
											<security:authorize access="!isAuthenticated()">
													<li><a href="/login">login</a></li>
													<li><a href="/registration">register</a></li>
											</security:authorize>
											
											<security:authorize access="isAuthenticated()">
												<li><security:authentication property="principal.username" /></li>
												<li><a href="/logout">logout</a></li>
												<li><a href="/account">my account</a></li>
											</security:authorize>

											
											
										</ul></li>
									<li><a href="wishlist"> <i class="pe-7s-like"></i>
											<div class="notification">0</div>
									</a></li>
									<li><a href="javascript:void(0)" class="minicart-btn">
											<i class="pe-7s-shopbag"></i>
											<security:authorize access="isAuthenticated()"><div class="notification">new</div></security:authorize>
											
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- mini cart area end -->

				</div>
			</div>
		</div>
		<!-- header middle area end -->
	</div>
	<!-- main header start -->

	<!-- mobile header start -->
	<div class="mobile-header d-lg-none d-md-block sticky">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-12">
					<div class="mobile-main-header">
						<div class="mobile-logo">
							<a href="/"> <img
								src="assets/img/logo/logo-light.png" alt="Brand Logo">
							</a>
						</div>
						<div class="mobile-menu-toggler">
							<div class="mini-cart-wrap">
								<a href="/cart"> <i class="pe-7s-shopbag"></i>
									<div class="notification">0</div>
								</a>
							</div>
							<button class="mobile-menu-btn">
								<span></span> <span></span> <span></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- mobile header end -->

	<!-- offcanvas mobile menu start -->
	<!-- off-canvas menu start -->
	<aside class="off-canvas-wrapper">
		<div class="off-canvas-overlay"></div>
		<div class="off-canvas-inner-content">
			<div class="btn-close-off-canvas">
				<i class="pe-7s-close"></i>
			</div>

			<div class="off-canvas-inner">
				<!-- search box start -->
				<div class="search-box-offcanvas">
					<form>
						<input type="text" placeholder="Search Here...">
						<button class="search-btn">
							<i class="pe-7s-search"></i>
						</button>
					</form>
				</div>
				<!-- search box end -->

				<!-- mobile menu start -->
				<div class="mobile-navigation">

					<!-- mobile menu navigation start -->
					<nav>
						<ul class="mobile-menu">
							<li class="menu-item-has-children"><a href="/">Home</a></li>
							<li class="menu-item-has-children"><a href="#">pages</a></li>
							<li class="menu-item-has-children "><a href="/shop">shop</a></li>
							<li class="menu-item-has-children "><a href="blogs">Blog</a></li>
							<li><a href="contact">Contact us</a></li>
							<li class="menu-item-has-children "><a href="/cart">cart</a></li>
						</ul>
					</nav>
					<!-- mobile menu navigation end -->
				</div>
				<!-- mobile menu end -->

				<div class="mobile-settings">
					<ul class="nav">
						<li>
							<div class="dropdown mobile-top-dropdown">
								<a href="#" class="dropdown-toggle" id="currency"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Currency <i class="fa fa-angle-down"></i>
								</a>
								<div class="dropdown-menu" aria-labelledby="currency">
									<a class="dropdown-item" href="#">$ USD</a> <a
										class="dropdown-item" href="#">$ EURO</a>
								</div>
							</div>
						</li>
						<li>
							<div class="dropdown mobile-top-dropdown">
								<a href="#" class="dropdown-toggle" id="myaccount"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> My Account <i
									class="fa fa-angle-down"></i>
								</a>
								<div class="dropdown-menu" aria-labelledby="myaccount">
									<a class="dropdown-item" href="/account">my account</a>
									<a class="dropdown-item" href="/login"> login</a> <a
										class="dropdown-item" href="/logout"> logout</a> <a
										class="dropdown-item" href="/registration">register</a>
								</div>
							</div>
						</li>
					</ul>
				</div>

				<!-- offcanvas widget area start -->
				<div class="offcanvas-widget-area">
					<div class="off-canvas-contact-widget">
						<ul>
							<li><i class="fa fa-mobile"></i> <a href="#">0123456789</a>
							</li>
							<li><i class="fa fa-envelope-o"></i> <a href="#">info@yourdomain.com</a>
							</li>
						</ul>
					</div>
					<div class="off-canvas-social-widget">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-pinterest-p"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-youtube-play"></i></a>
					</div>
				</div>
				<!-- offcanvas widget area end -->
			</div>
		</div>
	</aside>
	<!-- off-canvas menu end -->
	<!-- offcanvas mobile menu end -->
</header>