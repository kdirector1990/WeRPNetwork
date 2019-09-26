<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
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
				
		jsonData = JSON.stringify(param);
		
		$.ajax({
			url : '${pageContext.request.contextPath}/FT_plan_result?${_csrf.parameterName}=${_csrf.token }',
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
						'<col style="width: 20%;">'+
						'<col style="width: 20%;">'+
						'<col style="width: 20%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 20%;">'+
							'<thead>'+
								'<tr>'+
								'<th>예산계정코드</th>'+
								'<th>부서명</th>'+
								'<th>금액</th>'+
								'<th>전결라인</th>'+
								'<th>전결현황</th>'+
								'<th>예산과목명</th>'+
								'</tr>'+
							'</thead>'+
							'<tbody id="result">'+
							'</tbody>'+
						'</table>');
				
				
				
				for(var i = 0 ; i < list.length; i++){
				
					var budget_codes = list[i].budget_code;
					var department_codes = list[i].department_code;
					var department_names = list[i].department_name;
					var budget_amounts = list[i].budget_amount;
					var eas_codes = list[i].eas_code;
					var e_approval_codes = list[i].e_approval_code;
					var budget_subjects = list[i].budget_subject;
					totals += budget_amounts;
					
				$('#result').append('<tr>'+
                     	'<td onclick="FT_planUpdateDelete(\''+budget_codes+'\');">'+ budget_codes +'</td>'+
						'<td>'+ department_names +'</td>'+
						'<td>'+ budget_amounts +'</td>'+
						'<td>'+ eas_codes +'</td>'+
						'<td>'+ e_approval_codes +'</td>'+
						'<td>'+ budget_subjects +'</td>'+
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
 
 
	function searchdept2() {
		window.open("ST_searchDepartmentname", "ST_searchDepartmentname", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
	}
	
	function updatePlan(){
		var param = new Object();
		var jsonData;
		var cnt = 1;
		
		
		param.budget_code = $("#budget_code").val();
		param.budget_subject = $("#budget_subject").val();
		param.department_code = $("#department_code").val();
		param.department_name = $("#department_name").val();
		param.budget_amount = $("#budget_amount").val();
		param.eas_code = $("#eas_code").val();
		param.e_approval_code = $("#e_approval_code").val();
		
		jsonData = JSON.stringify(param);
		
		$.ajax({
			url: '/erp/FT_updatePlanPro?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : jsonData,
			dataTpye: 'json',
			contentType:"application/json;charset=UTF-8",
			success: function(cnt){
				alert("수정되었습니다.");
				$('#result1').empty();
				searchCus();
			},
			error : function(){
				alert("수정에 실패하였습니다.");
			}
		});
	}
	
	function deletePlan(){
		var param = new Object();
		var jsonData;
		var cnt = 1;
		
		param.budget_code = $("#budget_code").val();
		jsonData = JSON.stringify(param);
		$.ajax({
			url: '/erp/FT_deletePlanPro?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : jsonData,
			dataTpye: 'json',
			contentType:"application/json;charset=UTF-8",
			success: function(cnt){
				alert("삭제되었습니다.");
				$('#result1').empty();
				searchCus();
			},
			error : function(){
				alert("삭제 실패하였습니다.");
			}
		});
	}
//결과
	function FT_planUpdateDelete(url) {
		sendRequest(callback, "FT_planUpdateDelete", "post", "${_csrf.parameterName }=${_csrf.token }&budget_codes="+url);
	}
	
	function callback() {
		var result1 = document.getElementById("result1");
		
		if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
		
			if(httpRequest.status == 200){	// 200 : 정상 종료
				result1.innerHTML = "정상종료";
				// 응답 결과가 html이면 responseText로 받고, XML이면 responseXML로 받는다.
				
				var datas = httpRequest.responseText;
				document.getElementById("updatePlan").style.display="block";
				result1.innerHTML = datas;
			} else {
				result1.innerHTML = "에러발생";
			}
		} else {
			result1.innerHTML = "상태 : " + httpRequest.readyState;
		}
	} 

	 
	 
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
									<li class="breadcrumb-item"><a href="javascript: void(0);">예산</a></li>
									<li class="breadcrumb-item active">예산계획현황</li>
								</ol>
							</div>
							<h4 class="page-title">예산계획현황</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<table class="col-12">
									<tr class="form-group row">
										<th class="col-md-1 col-form-label">부서명</th>
										<td class="col-md-2 input-group"><input type="text"
											class="form-control" name="d_name" id="d_name"
											placeholder="부서명"></td>
										<td><button type="button"
												class="btn btn-primary waves-effect waves-light"
												id="search">검색</button></td>
										<td class="col-md-1 col-form-label">&nbsp;</td>
										<th class="col-md-1 col-form-label">예산 총 합계 :</th>
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
								
							</div>
						</div>
					</div>
				</div>
				
				<div id="updatePlan">
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div id="result1">
										
									</div>
								</div>
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