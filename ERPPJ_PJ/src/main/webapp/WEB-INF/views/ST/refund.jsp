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
										<li class="breadcrumb-item active">반품 관리</li>
									</ol>
								</div>
								<h4 class="page-title">반품 관리</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">거래처</th>
											<td class="col-md-2 input-group"><input type="text"
												name="" id="" class="form-control"></td>

											<th class="col-md-1 col-form-label">품목</th>
											<td class="col-md-2 input-group"><input type="text"
												name="" id="" class="form-control"></td>

											<th class="col-md-1 col-form-label">사원</th>
											<td class="col-md-2 input-group"><input type="text"
												name="" id="" class="form-control"></td>
										</tr>
									</table>

									<div align="right">
										<button type="button"
											class="btn btn-primary waves-effect waves-light" id="search">검색</button>
									</div>

									<hr>

									<div class="responsive-table-plugin">
										<div class="table-rep-plugin">
											<div class="table-responsive" data-pattern="priority-columns">
												<table id="tech-companies-1" class="table table-striped">
													<thead>
														<tr>
															<th data-priority="1">구분</th>
															<th>구매처명</th>
															<th data-priority="1">반품 일자</th>
															<th data-priority="3">품목 코드</th>
															<th data-priority="6">품목명</th>
															<th data-priority="3">납품 수량</th>
															<th data-priority="3">반품 수량</th>
															<th data-priority="3">반품 금액</th>
														</tr>
													</thead>
													<tbody>

														<tr>
															<th>1</th>
															<!-- 구분 -->
															<th><span class="co-name">반품 회사 ^___^</span></th>
															<!--거래처명 -->
															<td>2019-08-12</td>
															<td>001</td>
															<td>품목명임 여긴 드르렁</td>
															<td>100</td>
															<td>100</td>
															<td>1,300,000</td>
														</tr>

													</tbody>
												</table>
											</div>
											<!-- end .table-responsive -->

										</div>
										<!-- end .table-rep-plugin-->
									</div>
									<!-- end .responsive-table-plugin-->
								</div>
							</div>
							<!-- end card -->
						</div>
						<!-- end col -->
					</div>
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