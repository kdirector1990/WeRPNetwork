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
<script type="text/javascript">
    var searchCount = 1;
	 $(function(){
		$('#search').click(function(){
			var param = new Object();
			var jsonData;
			
						
			param.username = $("#username").val();
			param.ap_code = $("#ap_code").val();
			param.ap_name = $("#ap_name").val();			
					
			jsonData = JSON.stringify(param);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/HR_appointment_report_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
					
					$('#result').empty();
					$('#bodyappend').empty();
					
					
					
					for(var i = 0 ; i < list.length; i++){
					
						var usernames = list[i].username;
						var e_names = list[i].e_name
						var position_record_codes = list[i].position_record_code;
						var ap_codes = list[i].ap_code;
						var ap_names = list[i].ap_name;
						
						var record_dates = list[i].record_date;						
						var pa = new Date(record_dates);
						var year = pa.getFullYear();
						var month = (1+pa.getMonth());
						var day = pa.getDate();
						var record_date = year + "/" + month +"/"+day;
						
						var record_date_afters = list[i].record_date_after;
						var pa = new Date(record_date_afters);
						var year = pa.getFullYear();
						var month = (1+pa.getMonth());
						var day = pa.getDate();
						var record_date_after = year + "/" + month +"/"+day;
						
						var position_codes = list[i].position_code;
						var position_code_afters = list[i].position_code_afters;						
						
						var department_codes = list[i].department_code;
						var department_code_afters = list[i].department_code_after;
						
						var ap_status = list[i].ap_status;
						if(ap_status == 1) {
							ap_status = "예정";
						}
						if(ap_status == 2) {
							ap_status = "공고중";
						}
						if(ap_status == 3) {
							ap_status = "시행";
						}
						if(ap_status == 4) {
							ap_status = "취소";
						}
						if(ap_status == 5) {
							ap_status = "삭제";
						}
						
						alert(position_record_codes);
						
					$('#result').append('<tr>'+                         	
							'<td>'+ usernames +'</td>'+
							'<td>'+ e_names +'</td>'+
							'<td>'+ position_record_codes +'</td>'+
							'<td>'+ ap_codes +'</td>'+
							'<td>'+ record_date +'</td>'+
							'<td>'+ record_date_after +'</td>'+
							'<td>'+ ap_names +'</td>'+
							'<td>'+ position_codes +'</td>'+
							'<td>'+ position_code_afters +'</td>'+
							'<td>'+ department_codes +'</td>'+
							'<td>'+ department_code_afters +'</td>'+
							'<td>'+ ap_status +'</td>'+
                 		'</tr>');
					
					if(searchCount == 1){
					$('#bodyappend').append(
					        '<script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"/>' +
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"/>'+
					        '<script src="/erp/resources/assets/libs/jszip/jszip.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"/>' +
					        '<script src="/erp/resources/assets/js/pages/datatables.init.js"/>'  	
					);
					searchCount = searchCount + 1;
					}
					
					
					}
					
				},
				error : function(){
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
								<h4 class="page-title">인사발령리포트</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->



					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="individual-tab" data-toggle="tab" href="#individual"
											role="tab" aria-controls="individual" aria-selected="false">
												<span class="d-block d-sm-none"><i
													class="fa fa-individual"></i></span> <span
												class="d-none d-sm-block">개인별</span>
										</a></li>										
									</ul>

									<div class="card-body">
										<div align="right">
											<br>
										</div>
										<table class="col-12">
										<tr class="form-group row">
											<td class="col-md-1 col-form-label">사원번호</td>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="username" id="username">
											</td>

											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">공고코드</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="ap_code" id="ap_code"></td>

											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">공고명</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="ap_name"
												id="ap_name"></td>

										</tr>

										<tr class="form-group row">

											<th class="col-md-1 col-form-label"></th>
											<td class="col-md-2 input-group">
											</td>

											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label"></th>
											<td class="col-md-2 input-group">
											</td>

											<th class="col-md-1 col-form-label"></th>
											<td><button type="button"
													class="btn btn-primary waves-effect waves-light"
													id="search">검색</button></td>
										</tr>
									</table>
									</div>
								</div>
							</div>
						
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
							<div class="tab-content">
								<!-- 개인별 -->
								<div class="tab-pane show active" id="individual"
									role="tabpanel" aria-labelledby="individual-tab">
									<input type="hidden" name="${_csrf.parameterName }"
										value="${_csrf.token }">
									<div class="col-sm-12">
										<div class="card-body table-responsive">
											<div class="table-responsive" style="margin: 15px 0px 50px">
												<table id="datatable"
															class="table table-striped table-bordered dt-responsive nowrap">
													<thead>
														<tr>
															<th>사원번호</th>
															<th>사원명</th>
															<th>발령기록코드</th>
															<th>공고코드</th>
															<th>발령일자</th>
															<th>적용일자</th>
															<th>공고명</th>														
															<th>직책</th>
															<th>변경 후 직책</th>
															<th>부서</th>
															<th>변경 후 부서</th>
															<th>상태</th>
														</tr>
													</thead>
													
													<tbody id="result">
													
													</tbody>
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

							<!--  -->

						</div>
					</div>
					<!-- end container-fluid -->

				</div>
				<!-- end row -->


			</div>

			<%@ include file="../footer.jsp"%>

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

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