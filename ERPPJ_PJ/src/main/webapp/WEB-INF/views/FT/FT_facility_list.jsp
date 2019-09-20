<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->
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
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
    var searchCount = 1;
	 $(function(){
		$('#search').click(function(){
			var param = new Object();
			var jsonData;
			
			
			param.department_code = $("#department_code").val();
			param.eq_name = $('#eq_name').val();
					
			jsonData = JSON.stringify(param);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/FT_facility_list_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
					
					$('#result').empty();
					
					for(var i = 0 ; i < list.length; i++){
					
						var eq_codes = list[i].eq_code;
						var department_codes = list[i].department_code;
						var eq_names = list[i].eq_name;
						var eq_types = list[i].eq_type;
						//구입일
						var debt_l_dates = list[i].eq_acquire_date;
						var pa = new Date(debt_l_dates);
						var year = pa.getFullYear();
						var month = (1+pa.getMonth());
						var day = pa.getDate(); 
						var eq_acquire_dates = year + "/" + month +"/"+day;
						
						var eq_locations = list[i].eq_location;
						var eq_prime_costs = list[i].eq_prime_cost;
						var eq_durables = list[i].eq_durable;
						var eq_depreciations = list[i].eq_depreciation;
						var eq_depreciation_types = list[i].eq_depreciation_type;
						var dp_account_codes = list[i].dp_account_code;
						var dp_codes = list[i].dp_code;
						
					$('#result').append('<tr>'+
                         	'<td>'+ eq_codes +'</td>'+
							'<td>'+ department_codes +'</td>'+
							'<td>'+ eq_names +'</td>'+
							'<td>'+ eq_types +'</td>'+
							'<td>'+ eq_acquire_dates +'</td>'+
							'<td>'+ eq_locations +'</td>'+
							'<td>'+ eq_prime_costs +'</td>'+
							'<td>'+ eq_durables +'</td>'+
							'<td>'+ eq_depreciations +'</td>'+
							'<td>'+ eq_depreciation_types +'</td>'+
							'<td>'+ dp_account_codes +'</td>'+
							'<td>'+ dp_codes +'</td>'+
                 		'</tr>');
					}
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
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<!-- 페이지 내용 입력 공간 -->
			<div class="containerfluid">
				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">재무</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">유형자산(고정자산)</a></li>
									<li class="breadcrumb-item active">설비 목록</li>
								</ol>
							</div>
							<h4 class="page-title">설비 목록</h4>
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
										<th class="col-md-1 col-form-label">사용부서</th>
										<td class="col-md-1 input-group"><input type="text"
											class="form-control" name="department_code"
											id="department_code "></td>
										<th class="col-md-1 col-form-label">설비명</th>
										<td class="col-md-1 input-group"><input type="text"
											class="form-control" name="eq_name" id="eq_name "></td>
										<td><button type="button"
												class="btn btn-primary waves-effect waves-light" id="search">검색</button></td>
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
									class="table table-striped table-bordered dt-responsive nowrap">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 5%;">
									<col style="width: 5%;">
									<col style="width: 5%;">
									<col style="width: 5%;">
									<thead>
										<tr>
											<th>설비계정코드</th>
											<th>사용부서</th>
											<th>설비명</th>
											<th>보유구분</th>
											<th>구입일</th>
											<th>위치</th>
											<th>매입가</th>
											<th>예상내용연수</th>
											<th>감가상각여부</th>
											<th>감가상각법</th>
											<th>감가계정코드</th>
											<th>감가상각코드</th>
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

			<!-- 페이지 내용 입력 공간 종료 -->

			<%@ include file="../footer.jsp"%>

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