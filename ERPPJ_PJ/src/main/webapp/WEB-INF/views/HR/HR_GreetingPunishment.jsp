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
	<link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <script type = "text/javascript">
    var searchCount = 1;
	 $(function(){
		$('#search').click(function(){
			var param = new Object();
			var jsonData;
			
			
			param.pa_code = $("#pa_code").val();
			param.username = $("#username").val();
			param.e_name = $("#e_name").val();
			param.pa_date = $("#pa_date").val();
					
			jsonData = JSON.stringify(param);
			/* alert(param.pa_name);
			alert(param.username);
			alert(param.e_name);
			alert(param.pa_date); */
			$.ajax({
				url : '${pageContext.request.contextPath}/HR_GreetingPunishment_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
					
					$('#result').empty();
					
					
					
					for(var i = 0 ; i < list.length; i++){
					
						var pa_codes = list[i].pa_code;
						var usernames = list[i].username;
						var pa_dates = list[i].pa_date;
						var pa = new Date(pa_dates);
						var year = pa.getFullYear();
						var month = (1+pa.getMonth());
						var day = pa.getDate(); 
						var pa_datess = year + "/" + month +"/"+day;
						var pa_types = list[i].pa_type;
						var pa_names = list[i].pa_name;
						var department_codes = list[i].department_code;
						var pa_detailss = list[i].pa_details;
						var account_codes = list[i].detail_ac_code;
						var pa_values = list[i].pa_value;
						var pa_others = list[i].pa_other;
						var jr_states = list[i].jr_state;
						
					$('#result').append('<tr>'+
                         	'<td>'+ pa_codes +'</td>'+
							'<td>'+ usernames +'</td>'+
							'<td>'+ pa_datess +'</td>'+
							'<td>'+ pa_types +'</td>'+
							'<td>'+ pa_names +'</td>'+
							'<td>'+ department_codes +'</td>'+
							'<td>'+ pa_detailss +'</td>'+
							'<td>'+ account_codes +'</td>'+
							'<td>'+ pa_values +'</td>'+
							'<td>'+ pa_others +'</td>'+
							'<td>'+ jr_states +'</td>'+
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사정보</a></li>
                                            <li class="breadcrumb-item active">인사고과/상벌현황</li>
                                        </ol>
								</div>
								<h4 class="page-title">인사고과/상벌현황</h4>
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
										<th class="col-md-1 col-form-label">인사고과코드 검색</th>
										<td class="col-md-1 input-group">
											<input type="text" class="form-control" name="pa_code" id = "pa_code">
											</td>
										<th class="col-md-1 col-form-label">&nbsp;</th>
										<th class="col-md-1 col-form-label">사원번호 검색</th>
										<td class="col-md-1 input-group">
											<input type="text" class="form-control" name="username" id = "username">
											</td>
										<th class="col-md-1 col-form-label">사원이름 검색</th>
										<td class="col-md-1 input-group">
											<input type="text" class="form-control" name="e_name" id = "e_name">
											</td>
										<th class="col-md-1 col-form-label">고과일자</th>
										<td><input class="form-control input-daterange-datepicker" type="text" name="pa_date" id = "pa_date"/></td>
										<td><button type="button" class="btn btn-primary waves-effect waves-light" id = "search">검색</button></td>
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
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                                            <col style = "width:8%;">
                                            <col style = "width:7%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:5%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <thead>
                                                <tr>
	                                             	<th>인사고과코드</th>
													<th>사원번호</th>
													<th>일자</th>
													<th>인사고과 구분</th>
													<th>인사고과명</th>
													<th>시행처</th>
													<th>고과 내역</th>
													<th>계정코드</th>
													<th>금액</th>
													<th>비고</th>
													<th>처리상태</th>
                                         		</tr>
                                      		</thead>
                                    		<tbody id = "result">
                                    		
                                      		</tbody>
                                        </table>
</div></div></div></div></div>
               
               <!-- 페이지 내용 입력 공간 종료 -->



			<%@ include file="../footer.jsp" %>

		</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp" %>
	
    <%@ include file="../setting2.jsp" %>


	<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
	<div id = "bodyappend"></div>

</body>
</html>