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
					<h1 class="m-0">Blog Management</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
						<li class="breadcrumb-item active">Blogs</li>
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
				<h3 class="card-title">Add Blog</h3>

				<button type="button" class="close d-flex justify-row-reverse"
					aria-label="Close">
					<span aria-hidden="true"><a href="javascript:login('hide');">&times;</a></span>
				</button>
			</div>
			<!-- /.card-header -->
			<div class="card-body">
				<form:form enctype="multipart/form-data"
					action="/admin/blog/add" method="post"
					modelAttribute="blogForm">

					<!-- text input -->

					<div class="row">
						<div class="col-sm-6">
							<spring:bind path="title">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Title</label>
									<form:input type="text" path="title" class="form-control"
										placeholder="Title" />
									<form:errors path="title"></form:errors>
								</div>
							</spring:bind>
						</div>

						<div class="col-sm-6">
							<div class="form-group">
								<label>Image</label> <input type="file" name="images"
									accept="image/png, image/jpg, image/jpeg" class="my-1"
									placeholder="Enter ...">
							</div>
						</div>
					</div>

					<!-- text input -->
					<div class="row">
						<div class="col-sm-6">
							<spring:bind path="postedBy">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<label>Author</label>
									<form:input path="postedBy" class="form-control"
										placeholder="Author" autofocus="true" />
									<form:errors path="postedBy"></form:errors>
								</div>
							</spring:bind>

						</div>
					</div>

					<!-- text input -->
					<div class="row">
						<spring:bind path="text">
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label>Text</label>
								<form:textarea type="text" path="text" class="form-control"
									placeholder="Text" autofocus="true" id="editor" />
								<form:errors path="text"></form:errors>
								<form:hidden path="id" class="form-control" autofocus="true" />
							</div>
						</spring:bind>
					</div>

					<div class="col-sm">
						<!-- textarea -->
						<div class="form-group">
							<button type="submit" class="btn btn-sm btn-primary">Submit</button>
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
					<h3 class="card-title">Blog Data</h3>

					<div class="card-tools">
						<div class="form-group d-inline-flex m-auto">
							<button type="button" class="btn btn-sm btn-primary"
								onclick="javascript:login('show');">Add Blog</button>
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
								<th>Author</th>
								<th>Blog Photo</th>
								<th>Title</th>
								<th>Date</th>
								<!-- <th class="w-50">Text</th> -->
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${blogs }" var="i">
								<tr>
									<td>${i.id }</td>
									<td>${i.postedBy }</td>
									<td><img src="/blog-photos/${i.id }/${i.image }"
										width="50px" height="50px"></td>
									<td>${i.title }</td>
									<td>${i.postedOn }</td>
									<%-- <td>${i.text }</td> --%>
									<td><a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to visit this site?');"
										href="/admin/blog/delete/${i.id }"><i
											class="fa fa-trash"></i></a>&nbsp; <a
										class="btn btn-sm btn-warning"
										href="/admin/blog/edit/${i.id }"><i
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
	</div>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->



<script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="//cdn.ckeditor.com/4.20.2/full/ckeditor.js"></script>
<script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.display = "block";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.display = "none";
		}
	}

	$('document').ready(function() {

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