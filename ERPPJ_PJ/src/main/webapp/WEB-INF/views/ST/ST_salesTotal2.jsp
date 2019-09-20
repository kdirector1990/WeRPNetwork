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
										class="btn btn-outline-primary waves-effect waves-light">검색상세</button>
								</div>
								<h4 class="page-title">매출집계표(관리분류별)</h4>
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
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="부서">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											<th class="col-md-1 col-form-label">사원</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="사원">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">해당년도</th>
											<td><input type="text" class="form-control"
												placeholder="mm/dd/yyyy" data-provide="datepicker"
												data-date-autoclose="true" /></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
										</tr>

										<tr class="form-group row">

											<th class="col-md-1 col-form-label">고객</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="고객"></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											<th class="col-md-1 col-form-label">거래구분</th>
											<td class="col-md-2 input-group"><select
												class="form-control select2" name="" onchange="">
													<option>-- --</option>
											</select></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">조회기준</th>
											<td class="col-md-2 input-group"><select
												class="form-control select2" name="" onchange="">
													<option>-- --</option>
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
											</select></td>
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
												</div></td>
											<th class="col-md-1 col-form-label">~</th>
											<td class="col-md-2 input-group"><input type="text"
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
								<div class="card-body">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="usergroup-tab" data-toggle="tab" href="#usergroup"
											role="tab" aria-controls="user" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-usergroup"></i></span>
												<span class="d-none d-sm-block">고객분류</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="region-tab"
											data-toggle="tab" href="#region" role="tab"
											aria-controls="product" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">지역분류</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="region2-tab"
											data-toggle="tab" href="#region2" role="tab"
											aria-controls="manager" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">지역그룹</span>
										</a></li>
										<li class="nav-item"><a class="nav-link"
											id="managergroup-tab" data-toggle="tab" href="#managergroup"
											role="tab" aria-controls="department" aria-selected="false">
												<span class="d-block d-sm-none"><i
													class="fa fa-envelope-o"></i></span> <span
												class="d-none d-sm-block">담당그룹</span>
										</a></li>
									</ul>

									<div class="tab-content">
										<!-- 고객 -->
										<div class="tab-pane show active" id="usergroup"
											role="tabpanel" aria-labelledby="usergroup-tab">
											<input type="hidden" name="${_csrf.parameterName }"
												value="${_csrf.token }">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th></th>
																	<th>코드</th>
																	<th>고객분류명</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
														</table>
													</div>
												</div>
											</div>
										</div>

										<!-- 품목 -->
										<div class="tab-pane" id="region" role="tabpanel"
											aria-labelledby="region-tab">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th></th>
																	<th>코드</th>
																	<th>지역분류명</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
														</table>
													</div>
												</div>
											</div>
										</div>

										<!-- 담당자 -->
										<div class="tab-pane" id="region2" role="tabpanel"
											aria-labelledby="region2-tab">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th></th>
																	<th>코드</th>
																	<th>지역그룹명</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
														</table>
													</div>
												</div>
											</div>
										</div>

										<!-- 발령내역별 -->
										<div class="tab-pane" id="managergroup" role="tabpanel"
											aria-labelledby="managergroup-tab">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th></th>
																	<th>코드</th>
																	<th>담당그룹명</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
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