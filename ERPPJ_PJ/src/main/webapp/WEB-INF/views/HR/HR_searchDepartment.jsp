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
<style type="text/css">
#searchDep {
	display: none;
}
</style>
<script type="text/javascript">
	
function enterkey() {
    if (window.event.keyCode == 13) {
         // 엔터키가 눌렸을 때 실행할 내용
        $('#search').click();
    }
}

	$(function() {
		$('#search').click(
						
		function() {
			 var param = $(".search").serializeArray();
			/*  alert(JSON.stringify(param));  */

			$.ajax({
				url : '${pageContext.request.contextPath}/HR_searchDepartment_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'GET',
				data : param,
				success : function(list) {
					
					document.getElementById("searchDep").style.display="block";
					
					$('#result').empty();
					$('#resulttable').empty();
					$('#bodyappend').empty();
					
					$('#resulttable').append(
						'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">'+
							'<col style="width: 50%;">'+
							'<col style="width: 50%;">'+
								'<thead class="bg-primary text-white">'+
									'<tr>'+
									'<th>부서코드</th>'+
									'<th>부서명</th>'+
									'</tr>'+
								'</thead>'+
								'<tbody id="result">'+
								'</tbody>'+
						'</table>');
					
					for(var i = 0 ; i < list.length; i++){
					
						var department_code = list[i].department_code;
						var department_name = list[i].department_name;
						
					$('#result').append('<tr>'+                         	
							'<td>'+ department_code +'</td>'+
							'<td>'+ department_name +'</td>'+
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
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"/>'+
					        '<script src="/erp/resources/assets/libs/jszip/jszip.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"/>' +
					        '<script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"/>' +
					        '<script src="/erp/resources/assets/js/pages/datatables.init.js"/>'  	
					);
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
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->
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
											href="javascript: void(0);">부서</a></li>
										<li class="breadcrumb-item active">부서조회</li>
									</ol>
								</div>
								<h4 class="page-title">부서조회</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<form class="search">
										<table class="col-12">
											<tr class="form-group row">
												
												<th class="col-md-1 col-form-label">부서명 검색</th>

												<td><input type="text" class="form-control"
													name="department_name" id="department_name"></td>
											</tr>
										</table>
										<div align="right">
											<button type="button" class="btn btn-primary waves-effect waves-light"
														id="search">조회</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div id="searchDep">
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body">
										<div id="resulttable">
											<!-- 부서 조회 목록 출력  -->
										</div>
									</div>
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
	<div id="bodyappend"></div>
</body>
</html>