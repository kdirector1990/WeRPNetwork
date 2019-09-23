<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.result {
	display: none;
}
</style>

<script type="text/javascript">
        function updatePlan(){
    		var param = $("#datatable2").serializeArray();
    		alert(JSON.stringify(param));
    		$.ajax({
    			url: '/erp/MS_updatePlanPro',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(param){
    				alert("수정되었습니다.");
    				location.reload();
    			},
    			error : function(){
    				alert("수정에 실패하였습니다.");
    			}
    		});
    	}
        
        function deletePlan(){
    		var param = $("#datatable2").serializeArray();
    		alert(JSON.stringify(param));
    		$.ajax({
    			url: '/erp/MS_deletePlanPro',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(param){
    				alert("삭제되었습니다.");
    				location.reload();
    			},
    			error : function(){
    				alert("삭제 실패하였습니다.");
    			}
    		});
    	}
        
        function ST_searchUsername() {
        	window.open("ST_searchUsername", "ST_searchUsername", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
        }

        function enterkey() {
            if (window.event.keyCode == 13) {
                 // 엔터키가 눌렸을 때 실행할 내용
                 searchCus();
            }
        }

        var searchCount = 1;
        function searchCus() {
        	 var param = $("#search").serializeArray();
        	 /* alert(JSON.stringify(param));  */
        		$.ajax({
        			url: '/erp/MS_planInquiry_result?${_csrf.parameterName}=${_csrf.token }',
        			type: 'POST',
        			data : param,
        			dataTpye: 'json',
        			success: function(vo){
        				
        				$('#result').empty();
        				$('#bodyappend').empty();

        				for(var i = 0; i < vo.length; i++){
        					
        					var plan_code = vo[i].plan_code;
        					var plan_name = vo[i].plan_name;
        					var username = vo[i].username;
        					var position_code = vo[i].position_code;
        					var plan_regdate = vo[i].plan_regdate;
        					var plan_startdate = vo[i].plan_startdate;
        					var plan_enddate = vo[i].plan_enddate;
        					var plan_state = vo[i].plan_state;
        					var plan_objective = vo[i].plan_objective;
        					var plan_proposal = vo[i].plan_proposal;
        					var babokwon = vo[i];
        					
        					$("#result").append('<tr onclick="searchData();" >' +
        							'<td>'+ plan_code+ '</td>' +
        							'<td>'+ plan_name+ '</td>' +
        							'<td>'+ username + '</td>' +
        							'<td>'+ position_code + '</td>' +
        							'<td>'+ plan_regdate + '</td>' +
        							'<td>'+ plan_startdate + '</td>' +
        							'<td>'+ plan_enddate + '</td>' +
        							'<td>'+ plan_state + '</td>' +
        							'<td>'+ plan_objective + '</td>' +
        							'<td>' + plan_proposal + '</td></tr>');
        					
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
        				alert("실패.");
        			}
        		});
        }
        
    </script>

<%@ include file="../setting.jsp"%>
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<h4 class="page-title">경영지원</h4>
								<p class="sub-header">기획서관리</p>
						</div>
					</div>
				</div>
				<!-- end page title -->
				
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body"> 
								<form id="search" onsubmit="return false">
									<table class="col-12">
										<tr class="form-group row">
											<tr class="form-group row">		
												<th class="col-md-1 col-form-label">사원</th>
												<td class="col-md-2 input-group">
												<input type="text" name="username" id="username"
												class="form-control" onclick="ST_searchUsername();"  onkeyup="enterkey();">
												<input type="text" name="e_name" id="e_name"
												class="form-control" readonly>
												</td>
												
											</tr>
										</table>
									</form>
									<div align="right">
										<button type="button"
										class="btn btn-dark waves-effect waves-light"
										onclick="searchCus();">조회</button>
									</div>
								</div>
							</div>
						</div>
					</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<table id="datatable"
									class="table m-0 table-bordered table-hover"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead class="bg-primary text-white">
										<tr>
											<th>기획서 코드</th>
											<th>기획명</th>
											<th>기획제안자</th>
											<th>책임자</th>
											<th>기획등록일</th>
											<th>시작예정일</th>
											<th>종료예정일</th>
											<th>기획상태</th>
											<th>기획목표</th>
											<th>상세 기획안 파일</th>
										</tr>
									</thead>

									<tbody id="result">

									</tbody>
								</table>

								<div id="result2">
									<br>
									<form id="updatePlan">
										<input type='hidden' name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<table id="datatable2"
											class="table table-striped dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0;">
											<thead>
											</thead>

											<tbody>
											</tbody>
										</table>
									</form>
								</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->

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