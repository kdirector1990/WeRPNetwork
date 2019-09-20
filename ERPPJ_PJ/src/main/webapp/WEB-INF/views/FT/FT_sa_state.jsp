<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>

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
								<h4 class="page-title">주요예적금현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div align="right">
										<button type="button"
											class="btn btn-outline-primary waves-effect waves-light">계정등록</button>
									</div>

									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="home-tab" data-toggle="tab" href="#home" role="tab"
											aria-controls="home" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-home"></i></span>
												<span class="d-none d-sm-block">잔액</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-toggle="tab" href="#profile" role="tab"
											aria-controls="profile" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">원장</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 잔액 -->
										<div class="tab-pane active" id="home" role="tabpanel"
											aria-labelledby="home-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<form>
															<div class="form-group mb-3">
																<table id="datatable"
																	style="border-collapse: collapse; border-spacing: 0; width: 100%;">
																	<tr class="form-group row">
																		<th class="col-md-1 col-form-label">회계단위</th>
																		<td class="col-md-2 input-group"><select
																			class="form-control" name="" onchange="">
																				<option>전체선택</option>
																				<option>1000(주)한국생상 본점</option>
																		</select>
																			<div class="input-group-append">
																				<button type="button"
																					class="btn btn-icon waves-effect waves-light btn-primary">
																					<i class="fas fa-search"></i>
																				</button>
																			</div></td>
																		<th class="col-md-1 col-form-label">계정과목</th>
																		<td class="col-md-2 input-group"><select
																			class="form-control" name="" onchange="">
																				<option>전체선택</option>
																				<option></option>
																		</select>
																			<div class="input-group-append">
																				<button type="button"
																					class="btn btn-icon waves-effect waves-light btn-primary">
																					<i class="fas fa-search"></i>
																				</button>
																			</div></td>
																		<th class="col-md-1 col-form-label">조회기간</th>
																		<td><input
																			class="form-control input-daterange-datepicker"
																			type="text" name="daterange" /></td>
																		<td><input type="checkbox" name="">&nbsp;잔액
																			'0'값 표시</td>
																	</tr>
																</table>
															</div>
														</form>
														<hr>

														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th>구분</th>
																		<th>개설점</th>
																		<th>계좌번호</th>
																		<th>개설일</th>
																		<th>만기일</th>
																		<th>시재액</th>
																		<th>한도액</th>
																		<th>만기금액</th>
																		<th>불입횟수</th>
																		<th>외화시재</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>1</td>
																		<td>2</td>
																		<td>3</td>
																		<td>4</td>
																		<td>5</td>
																		<td>6</td>
																		<td>7</td>
																		<td>8</td>
																		<td>9</td>
																		<td>10</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 잔액 끝 -->

										<!-- 원장 -->
										<div class="tab-pane" id="profile" role="tabpanel"
											aria-labelledby="profile-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<table id="datatable"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<tr class="form-group row">
																<th class="col-md-1 col-form-label">회계단위</th>
																<td class="col-md-2 input-group"><select
																	class="form-control" name="" onchange="">
																		<option>전체선택</option>
																		<option>1000(주)한국생상 본점</option>
																</select>
																	<div class="input-group-append">
																		<button type="button"
																			class="btn btn-icon waves-effect waves-light btn-primary">
																			<i class="fas fa-search"></i>
																		</button>
																	</div></td>

																<th class="col-md-1 col-form-label">조회기간</th>
																<td><input
																	class="form-control input-daterange-datepicker"
																	type="text" name="daterange" /></td>

																<th class="col-md-1 col-form-label">계정과목</th>
																<td class="col-md-2 input-group"><select
																	class="form-control" name="" onchange="">
																		<option>전체선택</option>
																		<option></option>
																</select></td>
																<th class="col-md-1 col-form-label">거래처</th>
																<td class="col-md-2 input-group"><input type="text"
																	class="form-control" name="e_name" placeholder="거래처">
																	<div class="input-group-append">
																		<button type="button"
																			class="btn btn-icon waves-effect waves-light btn-primary">
																			<i class="fas fa-search"></i>
																		</button>
																	</div> <input type="text" class="form-control" name="e_name"
																	placeholder="거래처" readonly></td>

															</tr>
														</table>
														<hr>
														<div class="card-body table-responsive">
															<div class="table-responsive">
																<table class="table mb-0">
																	<thead class="thead-light">
																		<tr>
																			<th>월</th>
																			<th>일</th>
																			<th>적요</th>
																			<th>차변</th>
																			<th>대변</th>
																			<th>잔액</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td></td>
																			<td></td>
																			<td>전기이월</td>
																			<td>-348,650,000</td>
																			<td></td>
																			<td>-348,650,000</td>
																		</tr>
																		<tr>
																			<td>1</td>
																			<td>10</td>
																			<td>현금입그</td>
																			<td></td>
																			<td>4,000,000</td>
																			<td>-352,650,000</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 원장 끝 -->
									</div>
								</div>
							</div>
						</div>
						<!--  -->
					</div>
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