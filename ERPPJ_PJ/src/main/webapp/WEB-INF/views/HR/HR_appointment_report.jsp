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
					
					document.getElementById("searchTable").style.display="block";
					
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
						
						var position_names = list[i].position_name;
						var position_code_afters = list[i].position_code_after;						
						
						var department_names = list[i].department_name;
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
						
						
						
					$('#result').append('<tr>'+                         	
							'<td>'+ usernames +'</td>'+
							'<td>'+ e_names +'</td>'+
							'<td>'+ position_record_codes +'</td>'+
							'<td>'+ ap_codes +'</td>'+
							'<td>'+ record_date +'</td>'+							
							'<td>'+ ap_names +'</td>'+
							'<td>'+ position_names +'</td>'+
							'<td>'+ position_code_afters +'</td>'+
							'<td>'+ department_names +'</td>'+
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
											href="javascript: void(0);">WeRP</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사발령</a></li>
										<li class="breadcrumb-item active">인사발령리포트</li>
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
									</table>
									<div class="form-group text-right mb-0">
										<button type="button"
											class="btn btn-primary waves-effect waves-light" id="search">검색</button>
									</div>
									</div>
								</div>
							</div>

							<div id="searchTable">
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
																<table id="datatable"
																	class="table table-striped table-bordered nowrap table-colored-bordered table-bordered-info">
																	<thead class="bg-primary text-white">
																		<tr>
																			<th>사원번호</th>
																			<th>사원명</th>
																			<th>발령기록코드</th>
																			<th>공고코드</th>
																			<th>발령일자</th>
																			<th>공고명</th>
																			<th>현재직책</th>
																			<th>변경 후 직책</th>
																			<th>현재부서</th>
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

	<div id="bodyappend"></div>
</body>
</html>