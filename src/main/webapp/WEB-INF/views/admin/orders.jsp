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
					<h1 class="m-0">Order Management</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
						<li class="breadcrumb-item active">Orders</li>
					</ol>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->
	
	<!-- Main content -->
	<div class="row m-3">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">Order Data</h3>

					<div class="card-tools">
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
					<table class="table table-hover text-wrap text-center">
						<thead>
							<tr>
								<th>Order ID</th>
								<th>Date</th>
								<th >Products</th>
								<th>Payment Status</th>
								<th>Payment Mode</th>
								<th>Order Total</th>
								<th>User</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${orders }" var="i">
								<tr>
									<td>${i.id }</td>
									<td>${i.createdAt }</td>
									<td><c:forEach items="${i.orderItems }" var="j">${j.product.name } &times; ${j.qty }<br></c:forEach></td>
									<td><c:if test="${i.paymentStatus == 'Pending'}"><i class="ion-close-circled text-danger" ></i></c:if></td>
									<td>${i.paymentMethod }</td>
									<td>${i.orderTotal }</td>
									<td>${i.user.username }</td>
									<td><a class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to visit this site?');" href="/admin/order/delete/${i.id }"><i class="fa fa-trash" ></i></a>&nbsp;
									<a class="btn btn-sm btn-warning" href="/admin/order/edit?id=${i.id }"><i class="fa fa-edit" ></i></a></td>
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

<jsp:include page="afterContent.jsp"></jsp:include>
