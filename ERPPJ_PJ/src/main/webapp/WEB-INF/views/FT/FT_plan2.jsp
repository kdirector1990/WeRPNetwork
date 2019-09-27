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
<style type="text/css">
	#etherSelect2{
		display : none;
	}
</style>
<script type="text/javascript">
//결과
	 function etherSelectDept(){
		 var param = $("#etherSelect").serializeArray();
 		$.ajax({
 			url: '/erp/FT_Ether_SelectDept',
 			type: 'POST',
 			data : param,
 			dataTpye: 'json',
 			success: function(vo){
 				$('#bodyappend').empty();
 				$('#resulttable').empty();
 				document.getElementById("etherSelect2").style.display="block";
 				
 				$('#resulttable').append(
						'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap center">'+
							'<thead>'+
								'<tr>'+
									'<th>계약기록</th>'+
									'<th>부서 이름</th>'+
									'<th>사용목적</th>'+
									'<th>해쉬코드</th>'+
								'</tr>'+
							'</thead>'+
							'<tbody id="result">'+
							'</tbody>'+
						'</table>');
 				
 				for(var i = 0; i < vo.length; i++){
 					var dept_name = vo[i].department_name;
 					var subject = vo[i].e_subject;
 					var hashcode = vo[i].e_hashcode;
 					
 					var date = vo[i].ether_rec_code;
 					
 					
 					var code = new Date(date);
 					
 					var Year = code.getFullYear();
 					var Month = (1 + code.getMonth());
 					if(Month < 10){
 						Month = "0"+Month;
 					}
 					var Day = code.getDate();
 					if(Day < 10){
 						Day = "0" + Day;
 					}
 					var Hour = code.getHours();
 					if(Hour < 10){
 						Hour = "0" + Hour;
 					}
 					var Mm = code.getMinutes();
 					if(Mm < 10){
 						Mm = "0" + Mm;
 					}
 					
 					var date_2 = Year + "-" + Month + "-" + Day;
 					var time = Hour+":"+Mm;
 					
 					var ether_rec_code = date_2 + " " + time;
 					
 					
 					
 					$('#result').append('<tr>'+
                         	'<td>'+ ether_rec_code +'</td>'+
							'<td>'+ dept_name +'</td>'+
							'<td>'+ subject +'</td>'+
							'<td><a href="https://ropsten.etherscan.io/search?f=0&q='+hashcode+'">'+ hashcode +'</a></td>'+
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
 					
 			},
 			error : function(){
 				alert("전산 오류로 인하여 AS완료에 실패하였습니다.");
 			}
 		});
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
									<li class="breadcrumb-item active">가상화폐 편성 내역</li>
								</ol>
							</div>
							<h4 class="page-title">가상화폐 편성 내역</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<form id="etherSelect">
										<input type="hidden" name="${_csrf.parameterName }"
														value="${_csrf.token }">
										<table class="col-12">
											<tr class="form-group row">
												<th class="col-md-1 col-form-label">부서명</th>
												<td class="col-md-2 input-group"><input type="text"
													class="form-control" name="d_name" id="d_name"
													placeholder="부서명"></td>
												<td><button type="button"
														class="btn btn-primary waves-effect waves-light"
														id="search" onclick="etherSelectDept();">검색</button></td>
											</tr>
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			<div id="etherSelect2">		
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