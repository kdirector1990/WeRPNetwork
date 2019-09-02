<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<button type="button"
										class="btn btn-outline-primary waves-effect waves-light">사원검색</button>
								</div>
								<h4 class="page-title">매 출 현 황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">부서</th>
											<td class="col-md-2 input-group">
												<input type="text" class="form-control" name="" placeholder = "부서">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											<th class="col-md-1 col-form-label">사원</th>
											<td class="col-md-2 input-group"><input type="text" class="form-control" name="" placeholder = "사원">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											<th class="col-md-1 col-form-label">마감기간</th>
											<td><input
												class="form-control input-daterange-datepicker" type="text"
												name="daterange" /></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
										</tr>

										<tr class="form-group row">											
											<th class="col-md-1 col-form-label">고객</th>
											<td class="col-md-2 input-group"><input type="text" class="form-control" name="" placeholder = "고객">
												</td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											<th class="col-md-1 col-form-label">거래구분</th>
											<td class="col-md-2 input-group"><select
												class="form-control select2" name="" onchange="">
													<option>-- --</option>
											</select>
											</td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											<th class="col-md-1 col-form-label">부서기준</th>
											<td class="col-md-2 input-group"><select
												class="form-control select2" name="" onchange="">
													<option>0. 입력부서</option>
													<option>1. 품목담당부서</option>
													<option>2. 고객담당부서</option>
											</select></td>
										</tr>

										<tr class="form-group row">											
											<th class="col-md-1 col-form-label"><select
												class="form-control select2" name="" onchange="">
													<option>2. 실적담당</option>
													<option>1. 고객담당</option>
													<option>0. 품목담당</option>
											</select></th>
											<td class="col-md-2 input-group"><select
												class="form-control select2" name="" onchange="">
													<option>-- --</option>
											</select>
											</td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											
											<th class="col-md-1 col-form-label"><select
												class="form-control select2" name="" onchange="">
													<option>3. 품번범위</option>
													<option>2. 규격</option>
													<option>1. 품명</option>
													<option>0. 품번</option>
											</select></th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="사원">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td><th class="col-md-1 col-form-label">~</th><td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="사원">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead>
											<tr>
												<th></th>
												<th>부서</th>
												<th>마감일자</th>
												<th>고객</th>
												<th>거래구분</th>
												<th>마감번호</th>
												<th>No.</th>
												<th>품번</th>
												<th>품명</th>
												<th>규격</th>
												<th>단위</th>
												<th>수량</th>
												<th>단가</th>
												<th>공급가</th>
												<th>부가세</th>
												<th>합계액</th>
												<th>관리구분</th>												
												<th>비고(내역)</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

				<%@ include file="../footer.jsp"%>
			</div>
		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

	<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
	<script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
</body>
</html>