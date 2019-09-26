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
<script type="text/javascript">
	 $(function(){
		$('#search').click(function(){
			var param = new Object();
			var jsonData;
			
			param.d_name = $("#d_name").val();
			param.e_name = $("#e_name").val();
					
			jsonData = JSON.stringify(param);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/HR_EmployeeSalary_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
						$('#bodyappend').empty();
						$('#resulttable').empty();
						$('#totals').empty();
					
					
					var totals = 0;
					
					$('#resulttable').append(
							'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">'+
							'<col style="width: 10%;">'+
							'<col style="width: 10%;">'+
							'<col style="width: 15%;">'+
							'<col style="width: 10%;">'+
							'<col style="width: 10%;">'+
							'<col style="width: 15%;">'+
							'<col style="width: 10%;">'+
							'<col style="width: 10%;">'+
							'<col style="width: 10%;">'+
								'<thead>'+
									'<tr>'+
									'<th>사원번호</th>'+
									'<th>사원명</th>'+
									'<th>부서</th>'+
									'<th>직급</th>'+
									'<th>입사일</th>'+
									'<th>기본급</th>'+
									'<th>급호수당</th>'+
									'<th>연장수당</th>'+
									'<th>합계</th>'+
									'</tr>'+
								'</thead>'+
								'<tbody id="result">'+
								'</tbody>'+
							'</table>');
					
					
					
					for(var i = 0 ; i < list.length; i++){
					
						var usernames = list[i].username;
						var e_names = list[i].e_name;
						var department_names = list[i].department_name;
						var rank_names = list[i].rank_name;
						var start_dates = list[i].start_date;
						var pa = new Date(start_dates);
						var year = pa.getFullYear();
						var month = (1+pa.getMonth());
						var day = pa.getDate(); 
						var start_datess = year + "/" + month +"/"+day;
						var base_payments = list[i].base_payment;
						var add_payments = list[i].add_payment;
						var extension_payments = list[i].extension_payment;
						var total = base_payments+ add_payments+ extension_payments;
						totals += total;
						
					$('#result').append('<tr>'+
                         	'<td>'+ usernames +'</td>'+
							'<td>'+ e_names +'</td>'+
							'<td>'+ department_names +'</td>'+
							'<td>'+ rank_names +'</td>'+
							'<td>'+ start_datess +'</td>'+
							'<td>'+ base_payments +'</td>'+
							'<td>'+ add_payments +'</td>'+
							'<td>'+ extension_payments +'</td>'+
							'<td>'+ total +'</td>'+
                 		'</tr>');
					}
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
					        '<script src="/erp/resources/assets/libs/jszip/jszip.min.js"/>' +
					        '<script src="/erp/resources/assets/js/pages/datatables.init.js"/>'  	
					);
					
					
					
					$('#totals').append(totals);
					
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
											href="javascript: void(0);">인사정보</a></li>
										<li class="breadcrumb-item active">책정임금현황</li>
									</ol>
								</div>
								<h4 class="page-title">책정임금현황</h4>
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
												class="form-control" name="d_name" id="d_name"
												placeholder="부서명"></td>
											<td class="col-md-1 col-form-label">&nbsp;</td>
											<th class="col-md-1 col-form-label">사원검색</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="e_name" id="e_name"
												placeholder="한글이름"></td>
											<td><button type="button"
													class="btn btn-primary waves-effect waves-light"
													id="search">검색</button></td>
											<td class="col-md-1 col-form-label">&nbsp;</td>
											<th class="col-md-1 col-form-label">임금 총 합계 :</th>
											<th class="col-md-2 col-form-label" id="totals"></th>
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
									<div id = "resulttable">
									</div>
									<!-- <table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap">
										<col style="width: 10%;">
										<col style="width: 10%;">
										<col style="width: 15%;">
										<col style="width: 10%;">
										<col style="width: 10%;">
										<col style="width: 15%;">
										<col style="width: 10%;">
										<col style="width: 10%;">
										<col style="width: 10%;">
										<thead>
											<tr>
												<th>사원번호</th>
												<th>사원명</th>
												<th>부서</th>
												<th>직급</th>
												<th>입사일</th>
												<th>기본급</th>
												<th>급호수당</th>
												<th>연장수당</th>
												<th>합계</th>
											</tr>
										</thead>
										<tbody id="result">

										</tbody>

									</table> -->

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
	<div id="bodyappend"></div>
</body>
</html>