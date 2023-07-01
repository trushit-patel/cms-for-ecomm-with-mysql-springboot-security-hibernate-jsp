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
}
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">About Page Management</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
						<li class="breadcrumb-item active">About Page</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->
	<div class="form w-75 mx-auto" id="popupbox">
		<div class="card card-warning">
			<div class="card-header">
				<h3 class="card-title">Edit About Page</h3>
				<!-- 
				<button type="button" class="close d-flex justify-row-reverse"
					aria-label="Close">
					<span aria-hidden="true"><a href="javascript:login('hide');">&times;</a></span>
				</button> -->
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form:form action="/admin/about" method="post"
					modelAttribute="aboutEdit">
					<div class="row">
						<div class="col-sm-12">
							<!-- text input -->

							<spring:bind path="title">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Title</label>
									<form:input path="title" class="form-control"
										placeholder="Name" autofocus="true" />
									<form:hidden path="id" class="form-control" autofocus="true" />
									<form:errors path="title"></form:errors>
								</div>
							</spring:bind>
						</div>
					</div>

					<!-- input states -->

					<div class="row">
						<div class="col-sm-12">
							<!-- text input -->
							<spring:bind path="text">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Text</label>
									<form:textarea id="editor" path="text" class="form-control"
										placeholder="Text" autofocus="true" />
									<form:errors path="text"></form:errors>
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
					<h3 class="card-title">About Data</h3>

					<div class="card-tools">
						<div class="form-group d-inline-flex m-auto">
							<button type="button" class="btn btn-sm btn-primary"
								onclick="javascript:login('show');">Edit About Page</button>
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
				<%-- <div class="card-body table-responsive p-0">
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
								<th>Description</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${products }" var="i">
								<tr>
									<td>${i.id }</td>
									<td>${i.name }</td>
									<td>${i.price }</td>
									<td>${i.salePrice }</td>
									<td>${i.discount }</td>
									<td>${i.inStock }</td>
									<td>${i.images }</td>
									<td>${i.category.name }</td>
									<td>${i.type.name }</td>
									<td>${i.shortdes }</td>
									<td>${i.des }</td>
									<td><a class="btn btn-sm btn-danger"
										href="product/delete?id=${i.id }"><i class="fa fa-trash"></i></a>&nbsp;
										<a class="btn btn-sm btn-warning"
										href="product/edit?id=${i.id }"><i class="fa fa-edit"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div> --%>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
	</div>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="//cdn.ckeditor.com/4.20.2/full/ckeditor.js"></script>
<script>
	$('document').ready(function() {

		/* 		CKEDITOR.editorConfig = function(config) {

		 //   config.enterMode = 2; //disabled <p> completely
		 config.enterMode = CKEDITOR.ENTER_BR; // pressing the ENTER KEY input <br/>
		 config.shiftEnterMode = CKEDITOR.ENTER_P; //pressing the SHIFT + ENTER KEYS input <p>
		 config.autoParagraph = false; // stops automatic insertion of <p> on focus
		 }; */

		CKEDITOR.replace('editor', {
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_BR,
			autoParagraph : false
		});
		CKEDITOR.replace('editor2', {
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_BR,
			autoParagraph : false
		});
	});
</script>

<jsp:include page="afterContent.jsp"></jsp:include>
