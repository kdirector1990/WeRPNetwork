<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<link
	href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet">
<link
	href="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<link
	href="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript">
	var searchCount = 1;
	$(function() {
		$('#search')
				.click(
						function() {
							var param = new Object();
							var jsonData;

							param.department_name = $("#department_name").val();
							param.e_state_code = $("#e_state_code").val();
							param.username = $("#e_name").val();
							param.day = $("#day").val();

							jsonData = JSON.stringify(param);

							$
									.ajax({
										url : '${pageContext.request.contextPath}/HR_Yearsofservice_result?${_csrf.parameterName}=${_csrf.token }',
										type : 'POST',
										data : jsonData,
										dataType : "json",
										contentType : "application/json;charset=UTF-8",
										success : function(list) {

											$('#result').empty();

											for (var i = 0; i < list.length; i++) {

												var usernames = list[i].username;
												var e_names = list[i].e_name;
												var department_names = list[i].department_name;
												var position_names = list[i].position_name;
												var pa_dates = list[i].start_date;
												var pa = new Date(pa_dates);
												var year = pa.getFullYear();
												var month = (1 + pa.getMonth());
												var day = pa.getDate();
												var start_dates = year + "/"
														+ month + "/" + day;
												var service_years = list[i].service_year;
												var service_months = list[i].service_month;
												var e_codes = list[i].e_code;

												$('#result')
														.append(
																'<tr>' + '<td>'
																		+ usernames
																		+ '</td>'
																		+ '<td>'
																		+ e_names
																		+ '</td>'
																		+ '<td>'
																		+ department_names
																		+ '</td>'
																		+ '<td>'
																		+ position_names
																		+ '</td>'
																		+ '<td>'
																		+ start_dates
																		+ '</td>'
																		+ '<td>'
																		+ service_years
																		+ '년'
																		+ service_months
																		+ '개월'
																		+ '</td>'
																		+ '<td>'
																		+ e_codes
																		+ '</td>'
																		+ '</tr>');

												if (searchCount == 1) {
													$('#bodyappend')
															.append(
																	'<script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"/>'
																			+ '<script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/jszip/jszip.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"/>'
																			+ '<script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"/>'
																			+ '<script src="/erp/resources/assets/js/pages/datatables.init.js"/>');
													searchCount = searchCount + 1;
												}

											}

										},
										error : function() {
											alert("에러");
										}
									});
						});
	});
</script>
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
										<li class="breadcrumb-item active">Dashboard</li>
									</ol>
								</div>
								<h4 class="page-title">근속년수현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<table class="col-12"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label"
												style="text-align: right;">부서</th>
											<td class="col-md-1 input-group"><input type="text"
												class="form-control" name="department_name"
												id="department_name" placeholder="부서명"></td>
											<th class="col-md-1 col-form-label"
												style="text-align: right;">사원검색</th>
											<td class="col-md-1 input-group"><input type="text"
												class="form-control" name="e_name" id="e_name"
												placeholder="한글이름"></td>
											<th class="col-md-1 col-form-label"
												style="text-align: right;">퇴사자</th>
											<td class="col-md-1 input-group"><select
												class="form-control select2" name="e_state_code"
												id="e_state_code">
													<option value="1">제외</option>
													<option value="0">포함</option>
											</select></td>
											<th class="col-md-1 col-form-label"
												style="text-align: right;">기준일</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="day" id="day"
												data-provide="datepicker" data-date-autoclose="true"></td>
											<td><button type="button"
													class="btn btn-primary waves-effect waves-light"
													id="search">검색</button></td>
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
									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead class="bg-primary text-white">
											<tr>
												<th>사원코드</th>
												<th>사원명</th>
												<th>부서</th>
												<th>직책</th>
												<th>입사일</th>
												<th>년수</th>
												<th>주민번호</th>
											</tr>
										</thead>
										<tbody id="result">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<%@ include file="../footer.jsp"%>
				</div>
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
	<!-- App js -->
	<script src="/erp/resources/assets/js/app.min.js"></script>
	<div id="bodyappend"></div>

</body>
</html>