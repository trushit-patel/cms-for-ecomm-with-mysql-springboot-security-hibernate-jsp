<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<jsp:include page="beforeContent.jsp"></jsp:include>

<jsp:include page="mainSideBar.jsp"></jsp:include>

<!-- Main Sidebar Container -->

<style type="text/css">
#popupbox {
	position: relative;
	z-index: 9;
	display: none;
}

.pagination-box {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

#featuredProduct1 {
	width: auto;
    height: auto;
    margin-right: 4px;
    display: inline;
}

.pagination-box li {
	float: left;
}

.pagination-box li a {
	display: block;
	margin: 10px;
	text-align: center;
	padding: 4px;
	text-decoration: none;
}

.pagination-box li a:hover {
	background-color: #111111;
}
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">Product Management</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
						<li class="breadcrumb-item active">Products</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->
	<div class="form w-50 mx-auto" id="popupbox">
		<div class="card card-warning">
			<div class="card-header">
				<h3 class="card-title">Add Products</h3>

				<button type="button" class="close d-flex justify-row-reverse"
					aria-label="Close">
					<span aria-hidden="true"><a href="javascript:login('hide');">&times;</a></span>
				</button>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form:form enctype="multipart/form-data"
					action="/admin/products/add" method="post"
					modelAttribute="productForm">
					<div class="row">
						<div class="col-sm-6">
							<!-- text input -->

							<spring:bind path="name">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Name</label>
									<form:input type="text" path="name" class="form-control"
										placeholder="Name" autofocus="true" />
									<form:hidden path="id" class="form-control" placeholder="Name"
										autofocus="true" />
									<form:errors path="name"></form:errors>
								</div>
							</spring:bind>

						</div>

						<div class="col-sm-6">
							<!-- text input -->
							<spring:bind path="price">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Price</label>
									<form:input type="text" path="price" class="form-control"
										placeholder="Price" autofocus="true" />
									<form:errors path="price"></form:errors>
								</div>
							</spring:bind>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<!-- text input -->
							<spring:bind path="salePrice">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Sales Price</label>
									<form:input type="text" path="salePrice" class="form-control"
										placeholder="Sales Price" disabled="true" />
									<form:errors path="salePrice"></form:errors>
								</div>
							</spring:bind>
						</div>

						<div class="col-sm-6">
							<!-- text input -->
							<spring:bind path="discount">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Discount</label>
									<form:input type="text" path="discount" class="form-control"
										placeholder="Discount" autofocus="true" />
									<form:errors path="discount"></form:errors>
								</div>
							</spring:bind>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<!-- text input -->
							<spring:bind path="inStock">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>In Stock</label>
									<form:input type="text" path="inStock" class="form-control"
										placeholder="In Stock" autofocus="true" />
									<form:errors path="inStock"></form:errors>
								</div>
							</spring:bind>
						</div>

						<div class="col-sm-6">
							<!-- text input -->
							<div class="form-group">
								<label>Image</label> <input type="file" name="images"
									accept="image/png, image/jpg, image/jpeg" class="my-1"
									placeholder="Enter ...">
							</div>
						</div>
					</div>


					<!-- input states -->

					<div class="row">
						<div class="col-sm-6">
							<!-- select -->
							<spring:bind path="category">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Select Category</label>
									<form:select items="${categories }" itemLabel="name"
										itemValue="id" type="text" path="category"
										class="form-control" placeholder="Category" autofocus="true" />
									<form:errors path="category"></form:errors>
								</div>
							</spring:bind>
						</div>
						<div class="col-sm-6">
							<!-- select -->
							<spring:bind path="type">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Select Type</label>
									<form:select items="${types }" itemLabel="name" itemValue="id"
										type="text" path="type" class="form-control"
										placeholder="Type" autofocus="true" />
									<form:errors path="type"></form:errors>
								</div>
							</spring:bind>
						</div>

					</div>

					<div class="row">
						<div class="col-sm-6">
							<!-- select -->
							<spring:bind path="featuredProduct">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<!-- <label>Featured Product</label> -->
									<form:checkbox label="Featured Product" path="featuredProduct" class="form-control"
										autofocus="true" />
									<form:errors path="featuredProduct"></form:errors>
								</div>
							</spring:bind>
						</div>

					</div>

					<div class="row">
						<div class="col-sm-12">
							<!-- text input -->
							<spring:bind path="shortdes">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Short Description</label>
									<form:input type="text" path="shortdes" class="form-control"
										placeholder="Short Description" autofocus="true" />
									<form:errors path="shortdes"></form:errors>
								</div>
							</spring:bind>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<!-- textarea -->
							<spring:bind path="des">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Description</label>
									<form:textarea id="editor" path="des"
										class="form-control" placeholder="Description"
										autofocus="true" />
									<form:errors path="des"></form:errors>
								</div>
							</spring:bind>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<!-- textarea -->
							<div class="form-group">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
			<!-- /.card-body -->
		</div>
	</div>
	<!-- Main content -->
	<div class="row m-3">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">Product Data</h3>

					<div class="card-tools">
						<div class="form-group d-inline-flex m-auto">
							<button type="button" class="btn btn-sm btn-primary"
								onclick="javascript:login('show');">Add Products</button>
						</div>
						<div class="input-group input-group-sm d-inline-flex"
							style="width: 150px;">
							<input type="text" name="table_search"
								class="form-control float-right" placeholder="Search">

							<div class="input-group-append">
								<button type="submit" class="btn btn-default">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /.card-header -->
				<div class="card-body table-responsive p-0">
					<table class="table table-hover text-wrap">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Price</th>
								<th>Sales Price</th>
								<th>Discount</th>
								<th>In Stock</th>
								<th>Image</th>
								<th>Category</th>
								<th>Type</th>
								<th>Short Description</th>
								<!-- <th>Description</th> -->
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${products.content}" var="i">
								<tr>
									<td>${i.id }</td>
									<td>${i.name }</td>
									<td>${i.price }</td>
									<td>${i.salePrice }</td>
									<td>${i.discount }</td>
									<td>${i.inStock }</td>
									<td><img style="width: 100px; height: 100px;"
										src="/product-photos/${i.id }/${i.images }"></td>
									<td>${i.category.name }</td>
									<td>${i.type.name }</td>
									<td style="width: 50px">${i.shortdes }</td>
									<%-- <td style="width: 50px">${i.des }</td> --%>
									<td><a class="btn btn-sm btn-danger"
										onclick="return confirm('Are you sure you want to visit this site?');"
										href="/admin/product/delete?id=${i.id }"><i
											class="fa fa-trash"></i></a>&nbsp; <a
										class="btn btn-sm btn-warning"
										href="/admin/product/edit?id=${i.id }"><i
											class="fa fa-edit"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<div class="paginatoin-area text-center">
			<ul class="pagination-box">
				<c:if test="${products.totalPages gt 1 }">

					<c:if test="${ products.number gt 0 }">
						<li><a class="previous"
							href="/admin/products?page=${ products.number - 1 }">prev</a></li>
					</c:if>

					<c:forEach begin="0" end="${products.totalPages - 1 }" var="i">
						<c:if test="${ i eq products.number }">
							<li class="active"><a href="/admin/products?page=${i}">${i + 1}</a></li>
						</c:if>
						<c:if test="${ i ne products.number }">
							<li><a href="/admin/products?page=${i}">${i + 1}</a></li>
						</c:if>
					</c:forEach>

					<c:if test="${ products.number < products.totalPages - 1 }">
						<li><a class="next"
							href="/admin/products?page=${ products.number + 1 }">next</a></li>
					</c:if>

				</c:if>
			</ul>
		</div>
	</div>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.display = "block";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.display = "none";
		}
	}
</script>
<script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="//cdn.ckeditor.com/4.20.2/full/ckeditor.js"></script>
<script>
	$('document').ready(function() {

		CKEDITOR.replace('editor', {
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_BR,
			autoParagraph : false
		});
	});
</script>

<jsp:include page="afterContent.jsp"></jsp:include>
