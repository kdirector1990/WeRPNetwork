<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="setting.jsp" %>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css" href="/erp/resources/assets/libs/c3/c3.min.css">
<script src="/erp/resources/assets/js/request.js"></script>
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

<style type="text/css">
	#MSGselectID{
		display : none;
	}
</style>

<script type="text/javascript">

function MsgWriteForm(url){
	sendRequest(callback, "CM_MSG_Write_Form", "post", "${_csrf.parameterName }=${_csrf.token }&username="+url);
}

function callback() {
	var result = document.getElementById("result2");
	
	if(httpRequest.readyState == 4){	
		if(httpRequest.status == 200){	
			result.innerHTML = "정상종료";
			
			var datas = httpRequest.responseText; 
			
			result.innerHTML = datas;
		} else {
			result.innerHTML = "에러발생";
		}
	} 
	else {
		result.innerHTML = "상태 : " + httpRequest.readyState;
	}
}

	function SearchMsgUser(){
		var param = $("#selectMsgUSERS").serializeArray();
		$.ajax({
			url: '/erp/CM_MSG_Select_User',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				document.getElementById("MSGselectID").style.display="block";
				$('#bodyappend').empty();
				$('#selectUsercode').empty();
				$('#result').empty();
				
				$('#selectUsercode').append(
						'<div class="table-rep-plugin">'+	
	    				'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">' +
							'<thead class="bg-primary text-white">' +
								'<tr>' +
									'<th>사원 번호</th>' +
									'<th>이름</th>' +
									'<th>부서이름</th>' +
									'<th>직책</th>' +
								'</tr>' +
							'</thead>' +
							'<tbody id="result">' +
							'</tbody>' +
						'</table>');
				
				for(var i = 0; i < vo.length; i++){
					var username = vo[i].username;
					var e_name = vo[i].e_name;
					var department_name = vo[i].department_name;
					var rank = vo[i].rank_code;
					var rank_code = "";
					
					if(rank == '100'){
						rank_code = "대표이사";
					}
					else if(rank == '200'){
						rank_code = "부사장";
					}
					else if(rank == '300'){
						rank_code = "전무이사";
					}
					else if(rank == '400'){
						rank_code = "상무이사";
					}
					else if(rank == '500'){
						rank_code = "이사";
					}
					else if(rank == '600'){
						rank_code = "부장";
					}
					else if(rank == '700'){
						rank_code = "차장";
					}
					else if(rank == '800'){
						rank_code = "과장";
					}
					else if(rank == '900'){
						rank_code = "주임";
					}
					else if(rank == '910'){
						rank_code = "대리";
					}
					else if(rank == '920'){
						rank_code = "사원";
					}
					
					$('#result').append('<tr onclick="MsgWriteForm(\''+username+'\');">'+
							'<td>'+ username +'</td>'+ 
                        	'<td>'+ e_name +'</td>'+ 
                        	'<td>'+ department_name +'</td>'+
                        	'<td>'+ rank_code +'</td>'+ 
                		'</tr>');
					
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
				}
				
			},
			error : function(){
				alert("에러");
			}
		});
	}
	
	
</script>
</head>

<body>

    <!-- Begin page -->
<div id="wrapper">

    
    <%@ include file="sidebar.jsp" %>

<!-- ============================================================== -->
<!-- Start Page Content here -->
<!-- ============================================================== -->

					<div class="content-page">
					    <div class="content">
					        
					        <!-- Start Content-->
					               <div class="container-fluid">
					                   <div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">WeRP</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">공통</a></li>
										<li class="breadcrumb-item active">사내메신저</li>
									</ol>
								</div>
								<h4 class="page-title">사내 메신저</h4>
							</div>
						</div>
					</div>
					                                        
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<form id="selectMsgUSERS">
										<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
											<table class="col-12">
												<tr class="form-group row">
													<th class="col-md-2 col-form-label" style="text-align: right;">이름</th>
													<td class="col-md-3 input-group"><input type="text" name="e_name" class="form-control"></td>
													<th class="col-md-2 col-form-label"style="text-align: right;">부서</th>
													<td class="col-md-3 input-group"><input type="text" name="department_name" class="form-control"></td>
													<td class="col-md-2 input-group"><button type="button" class="btn btn-primary waves-effect waves-light" onclick="SearchMsgUser();">조회</button></td>
												</tr>
											</table>
									</form>
								</div>
							</div>
					<!-- end card -->
						</div>
					<!-- end col -->
					</div>
						
					<div id="MSGselectID">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-body">
										<div id="selectUsercode">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>       
					
					
					<div id="result2">
					
					</div>
					
					
					                                        
					               </div> <!-- end container-fluid -->
					
					</div> <!-- end content -->
					
					
					<!-- Footer Start -->
					<%@ include file="footer.jsp"%>
					<!-- end Footer -->
					
					</div>
					
					<!-- ============================================================== -->
					<!-- End Page content -->
					<!-- ============================================================== -->
					
					</div>
					<!-- END wrapper -->
	<%@ include file="./rightbar.jsp"%>
	<%@ include file="./setting2.jsp"%>
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