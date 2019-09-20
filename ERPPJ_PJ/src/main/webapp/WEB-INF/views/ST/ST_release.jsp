<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Responsive Table css -->
<link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css"
	rel="stylesheet" type="text/css" />
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
										<li class="breadcrumb-item active">출고 관리</li>
									</ol>
								</div>
								<h4 class="page-title">출고 관리</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title">출고 등록</h4>
									<p class="sub-header">
										<br>
									</p>

									<form class="form-horizontal" action="ST_release_writePro"
										method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div class="row">
											<div class="col-xl-6">
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">출고처</label>
													<div class="col-md-10">
														<input type="text" name="release_name"
															class="form-control" value="">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="example-email">입고처</label>
													<div class="col-md-10">
														<input type="text" name="stored_name" class="form-control">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label"
														for="example-password">단가</label>
													<div class="col-md-10">
														<input type="text" name="unit_cost" class="form-control">
													</div>
												</div>

											</div>

											<div class="col-xl-6">

												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="example-static">출고
														수량</label>
													<div class="col-md-10">
														<input type="text" name="release_count"
															class="form-control" value="">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label"
														for="example-helping">입고 수량</label>
													<div class="col-md-10">
														<input type="text" class="form-control"
															name="stored_count">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">구분</label>
													<div class="col-md-10">
														<select class="form-control" name="sar_type">
															<option value="판매">2. 판매</option>
															<option value="재입고">3. 재입고</option>
														</select>
													</div>
												</div>
											</div>
											<!-- end col -->


											<div class="form-group mb-0">
												<div>
													<button type="submit"
														class="btn btn-primary waves-effect waves-light mr-1">
														Submit</button>
													<button type="reset"
														class="btn btn-secondary waves-effect waves-light">
														Cancel</button>
												</div>
											</div>
											<!-- end row -->
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->







					<!-- end row -->

				</div>
				<!-- end container-fluid -->
			</div>
			<!-- end content -->



			<%@ include file="../footer.jsp"%>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
	<!-- Vendor js -->
	<script src="/erp/resources/assets/js/vendor.min.js"></script>

	<!-- Bootstrap select plugin -->
	<script
		src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

	<!-- Responsive Table js -->
	<script src="/erp/resources/assets/libs/rwd-table/rwd-table.min.js"></script>

	<!-- Init js -->
	<script src="/erp/resources/assets/js/pages/responsive-table.init.js"></script>

	<!-- App js -->
	<script src="/erp/resources/assets/js/app.min.js"></script>

</body>
</html>