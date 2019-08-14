<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
</head>

<body>

	<!-- Begin page -->
	<div id="wrapper">


		<%@ include file="../sidebar.jsp"%>

		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Codefox</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">인사정보등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"	id="employee-tab" data-toggle="tab" href="#employee" role="tab" aria-controls="employee" aria-selected="false">
												<span class="d-block d-sm-none"><i class="fa fa-employee"></i></span> 
												<span class="d-none d-sm-block">인적정보</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 잔액 -->
										<div class="tab-pane show active" id="employee" role="tabpanel"	aria-labelledby="employee-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
													<form class = "form-horizontal" action = "joinPro">
													<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
														<div class="form-group row">
															<label class="col-md-2 col-form-label" for="simpleinput">성명</label>
															<div class="col-md-10">
																<input type="text" id="e_name" name = "e_name" class="form-control">
															</div>
														</div>
														<div class="form-group mb-0" style = "align:center;">
															<input type="submit" class="btn btn-success" value="등록" style = "align:center;">
														</div>
													</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				<!-- end container-fluid -->

				</div>
				<%@ include file="../footer.jsp" %>
            </div>
         </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

   </div>
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>

				<!-- Vendor js -->
				<script src="/erp/resources/assets/js/vendor.min.js"></script>

				<!-- Bootstrap select plugin -->
				<script
					src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

				<!-- plugins -->
				<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
				<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>

				<!-- dashboard init -->
				<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>

				<!-- App js -->
				<script src="/erp/resources/assets/js/app.min.js"></script>
</body>
</html>