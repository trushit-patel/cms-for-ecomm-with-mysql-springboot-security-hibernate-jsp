<footer class="main-footer">
	<strong>Copyright &copy; 2014-2021 <a
		href="https://adminlte.io">AdminLTE.io</a>.
	</strong> All rights reserved.
	<div class="float-right d-none d-sm-inline-block">
		<b>Version</b> 3.2.0
	</div>
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/jquery-ui/jquery-ui.min.js"></script>

<script>
  $.widget.bridge('uibutton', $.ui.button)
  
  $('document').ready(function (){
	  var pathname = window.location.pathname;
	  $('#aside-menu li a').each(function() {
		  console.log($(this).attr('href'));
		  console.log(pathname);
		    if (pathname.includes($(this).attr('href'))) {
		        $(this).addClass('active');
		    }
		});
  });
  
</script>

<script
	src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/chart.js/Chart.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/sparklines/sparkline.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/jqvmap/jquery.vmap.min.js"></script>
<script
	src="https://adminlte.io/themes/v3/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/jquery-knob/jquery.knob.min.js"></script>

<script src="https://adminlte.io/themes/v3/plugins/moment/moment.min.js"></script>
<script
	src="https://adminlte.io/themes/v3/plugins/daterangepicker/daterangepicker.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/summernote/summernote-bs4.min.js"></script>

<script
	src="https://adminlte.io/themes/v3/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>

<script src="https://adminlte.io/themes/v3/dist/js/adminlte.js?v=3.2.0"></script>

<script src="https://adminlte.io/themes/v3/dist/js/demo.js"></script>

<script src="https://adminlte.io/themes/v3/dist/js/pages/dashboard.js"></script>
</body>
</html>
