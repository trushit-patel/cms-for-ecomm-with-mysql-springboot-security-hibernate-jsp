<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style>
input[type=checkbox], input[type=radio] {
	box-sizing: border-box;
	padding: 0;
	opacity: 1;
	margin-right: 15px;
}
label {
	margin-left: 5px;
}
.custom-checkbox{
	margin-left: 20px;
}
</style>

<div class="col-lg-3 order-2 order-lg-1">
	<aside class="sidebar-wrapper">
		<%-- 	<form action="/shop">
		<!-- single sidebar start -->
		<!-- <div class="sidebar-single">
                                <h5 class="sidebar-title">categories</h5>
                                <div class="sidebar-body">
                                    <ul class="shop-categories">
                                        <li><a href="#">fashionware <span>(10)</span></a></li>
                                        <li><a href="#">kitchenware <span>(5)</span></a></li>
                                        <li><a href="#">electronics <span>(8)</span></a></li>
                                        <li><a href="#">accessories <span>(4)</span></a></li>
                                        <li><a href="#">shoe <span>(5)</span></a></li>
                                        <li><a href="#">toys <span>(2)</span></a></li>
                                    </ul>
                                </div>
                            </div> -->
		<!-- single sidebar end -->

		<!-- single sidebar start -->
		<div class="sidebar-single">
		
			<h5 class="sidebar-title">price</h5>
			<div class="sidebar-body">
				<div class="price-range-wrap">
					<div class="price-range" data-min="1" data-max="200"></div>
					<div class="range-slider">
						<div
							class="d-flex align-items-center justify-content-between">
							<div class="price-input">
								<label for="amount">Price: </label> <input type="text"
									name="pricefilter" id="amount">
							</div>
							<button class="filter-btn">filter</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single sidebar end -->

		<!-- single sidebar start -->
		<div class="sidebar-single">
			<h5 class="sidebar-title">Categories</h5>
			<div class="sidebar-body">
				<ul class="checkbox-container categories-list">
					<c:forEach items="${categories }" var="i">
						<li>
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="customCheck${i.id }" name="categoryID" value="${i.id }"> <label
									class="custom-control-label" for="customCheck${i.id }">${i.name }
									(${i.products.size() })</label>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!-- single sidebar end -->

		<!-- single sidebar start -->
		<div class="sidebar-single">
			<h5 class="sidebar-title">color</h5>
			<div class="sidebar-body">
				<ul class="checkbox-container categories-list">
					<c:forEach items="${types }" var="i">
						<li>
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="customtCheck${i.id }" name="typeID" value="${i.id }"> <label
									class="custom-control-label" for="customtCheck${i.id }">${i.name }
									(${i.products.size() })</label>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		</form> --%>

		<form:form modelAttribute="filterForm" action="/shop" method="get">
			<div class="sidebar-single">

				<h5 class="sidebar-title">price</h5>
				<div class="sidebar-body">
					<div class="price-range-wrap">
						<div class="price-range" data-min="1" data-max="200"></div>
						<div class="range-slider">
							<div class="d-flex align-items-center justify-content-between">
								<div class="price-input">
									<label for="amount">Price: </label>
									<form:input path="price" type="text" id="amount" />
								</div>
								<button class="filter-btn">filter</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- single sidebar end -->

			<!-- single sidebar start -->
			<div class="sidebar-single">
				<h5 class="sidebar-title">Categories</h5>
				<div class="sidebar-body">
					<ul class="checkbox-container ">
						<li>
							<div class="custom-checkbox">
								<form:checkboxes class="custom-control-input"
									items="${categories }" path="categoryIds" itemValue="id"
									itemLabel="name" />
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- single sidebar end -->

			<!-- single sidebar start -->
			<div class="sidebar-single">
				<h5 class="sidebar-title">Type</h5>
				<div class="sidebar-body">
					<ul class="checkbox-container ">

						<li>
							<div class="custom-checkbox">
								<form:checkboxes class="custom-control-input" items="${types }"
									path="typeIds" itemValue="id" itemLabel="name" />
							</div>
						</li>
					</ul>
				</div>
			</div>
		</form:form>
	</aside>
</div>