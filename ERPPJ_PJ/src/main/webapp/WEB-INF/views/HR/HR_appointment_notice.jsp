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
<script type="text/javascript">
    var searchCount = 1;
	 $(function(){
		$('#search').click(function(){
			var param = new Object();
			var jsonData;
			
						
			param.username = $("#ap_code").val();
			param.e_name = $("#ap_reg_date").val();
			param.department_code = $("#ap_name").val();			
					
			jsonData = JSON.stringify(param);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/HR_position_record_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
					
					$('#result').empty();
					$('#result2').empty();
					$('#bodyappend').empty();
					
					
					
					for(var i = 0 ; i < list.length; i++){
					
						var usernames = list[i].username;
						var e_names = list[i].e_name;						
						var department_codes = list[i].department_code;
						var position_codes = list[i].position_code;											
						
						
					$('#result').append('<tr onclick="recordList('+usernames+');">'+                         	
							'<td>'+ usernames +'</td>'+
							'<td>'+ e_names +'</td>'+							
							'<td>'+ department_codes +'</td>'+
							'<td>'+ position_codes +'</td>'+								
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
								<h4 class="page-title">인사발령공고</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->



					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div align="right">
										<br>
									</div>
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">공고코드</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="ap_code" id="ap_code">
											</td>

											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">공고일</th>
											<td class="col-md-2 input-group">
												<div class="input-group">
													<input type="date" class="form-control" name="ap_reg_date"
														placeholder="yyyy/mm/dd">
													<div class="input-group-append">
														<span class="input-group-text bg-primary text-white b-0"><i
															class="mdi mdi-calendar"></i></span>
													</div>
												</div>
											</td>

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
					</div>	

						<div class="row">
							<div class="col-xl-6">
								<div class="card">
									<div class="card-body">
										<table id="datatable"
											class="table table-striped table-bordered dt-responsive nowrap table-hover"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<thead>
												<tr>													
													<th colspan="4">발령대상자</th>
												</tr>
												<tr>
													<th>사번</th>
													<th>성명</th>
													<th>부서</th>
													<th>직책</th>
												</tr>
											</thead>
											
											<tbody id="result">
											
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- end col -->

							<div class="col-xl-6">
								<div class="card">
									<div class="card-body">
										<table id="datatable"
											class="table table-striped table-bordered dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<thead>
												<tr>													
													<th colspan="4">발령내역</th>
												</tr>
												<tr>
													<th>발령내역</th>
													<th>현재 직책</th>
													<th>변경 후 직책</th>
													<th>비고</th>
												</tr>
											</thead>
											
											<tbody id="result2">
											
											</tbody>
										</table>

									</div>
								</div>
							</div>
							<!-- end col -->
						</div>
					

					<div class="row">
						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr>
											<th>비고</th>
											<td><textarea class="form-control" rows="10" cols="40"
													name="content" style="width: 500px"
													placeholder="글내용을 입력하세요 !" word-break:break-all>
									</textarea></td>
										</tr>

									</table>
								</div>
							</div>
						</div>
						<!-- end col -->

						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">


									</table>
								</div>
							</div>

						</div>
						<!-- end col -->
					</div>


					<%@ include file="../footer.jsp"%>
				</div>
			</div>
		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<!-- Right Sidebar -->
	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

</body>
</html>