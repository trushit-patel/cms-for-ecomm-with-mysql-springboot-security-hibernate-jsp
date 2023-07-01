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
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">Banner Management</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
						<li class="breadcrumb-item active">Banners</li>
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
				<h3 class="card-title">Add Banner</h3>

				<button type="button" class="close d-flex justify-row-reverse"
					aria-label="Close">
					<span aria-hidden="true"><a href="javascript:login('hide');">&times;</a></span>
				</button>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form:form action="/admin/banner/add" method="post"
					enctype="multipart/form-data" modelAttribute="bannerForm">
					
					<div class="row">
						<div class="col-sm">
							<!-- text input -->
							<spring:bind path="link">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Link</label>
									<form:input type="url" path="link" class="form-control"
										placeholder="URL" autofocus="true" />
									<form:errors path="link"></form:errors>

									<form:hidden path="id" class="form-control" placeholder="Name"
										autofocus="true" />
								</div>
							</spring:bind>
						</div>
						<div class="col-sm">
							<spring:bind path="title">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Title</label>
									<form:input path="title" class="form-control"
										placeholder="Title" autofocus="true" />
									<form:errors path="title"></form:errors>
								</div>
							</spring:bind>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm">
							<label>Image</label> <input type="file" name="images"
								accept="image/png, image/jpg, image/jpeg" class="my-1"
								placeholder="Enter ..."><br>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm">
							<spring:bind path="des">
								<br>
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Description</label>
									<form:textarea id="editor" path="des" class="form-control"
										placeholder="Description" autofocus="true" />
									<form:errors path="des"></form:errors>
								</div>
							</spring:bind>
						</div>
					</div>

					<!-- input states -->

					<div class="row">
						<div class="col-sm">
							<!-- textarea -->
							<div class="form-group">
								<br>
								<button type="submit" class="btn btn-sm btn-primary">Submit</button>
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
					<h3 class="card-title">Banner Data</h3>

					<div class="card-tools">
						<div class="form-group d-inline-flex m-auto">
							<button type="button" class="btn btn-sm btn-primary"
								onclick="javascript:login('show');">Add Banner</button>
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
								<th>Link</th>
								<th>Title</th>
								<th>Description</th>
								<th>Image</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${banners }" var="i">
								<tr>
									<td>${i.id }</td>
									<td><a href="${i.link }">${i.link }</a></td>
									<td>${i.title }</td>
									<td>${i.des }</td>
									<td><img src="/banner/${i.id }/${i.image }" width="140px"
										height="50px"></td>
									<td><a class="btn btn-sm btn-danger"
										href="banner/delete?id=${i.id }"
										onclick="return confirm('Are you sure you want to visit this site?');"><i
											class="fa fa-trash"></i></a> <a class="btn btn-sm btn-warning"
										href="banner/edit?id=${i.id }"><i class="fa fa-edit"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
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
		
		CKEDITOR.replace('editor', {
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_BR,
			autoParagraph : false
		});
	});
</script>
<script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.display = "block";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.display = "none";
		}
	}
</script>

<jsp:include page="afterContent.jsp"></jsp:include>
