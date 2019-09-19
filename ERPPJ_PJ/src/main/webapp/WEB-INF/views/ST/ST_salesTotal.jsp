<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type = "text/javascript">

var searchCount = 1;
$(function(){
	$('#search').click(function(){
		var param = new Object();
		var jsonData;
		
					
		param.department_code = $("#department_code").val();
		param.username = $("#username").val();
		param.customer_code = $("#customer_code").val();
		param.product_name = $("#product_name").val();
				
		jsonData = JSON.stringify(param);
		
		$.ajax({
			url : '${pageContext.request.contextPath}/ST_salesTotal_result?${_csrf.parameterName}=${_csrf.token }',
			type : 'POST',
			data : jsonData, 
			dataType : "json",
			contentType:"application/json;charset=UTF-8",
			success : function(list){
				
				$('#result').empty();
				
				
				
				for(var i = 0 ; i < list.length; i++){
				
					var customer_code = list[i].customer_code;
					var customer_name = list[i].customer_name;
					var month = list[i].month;						
					var total_amount = list[i].total_amount;
					var total_price = list[i].total_price;
					var count = list[i].count;
					
				$('#result').append('<tr>'+                         	
						'<td>'+ customer_code +'</td>'+
						'<td>'+ customer_name +'</td>'+
						'<td>'+ month +'</td>'+
						'<td>'+ total_amount +'</td>'+
						'<td>'+ total_price +'</td>'+
						'<td>'+ count +'</td>'+
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
									<button type="button"
										class="btn btn-outline-primary waves-effect waves-light">검색상세</button>
								</div>
								<h4 class="page-title">매출집계표(월별)</h4>
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
												name="department_code" id="department_code" class="form-control"></td>

											<th class="col-md-1 col-form-label">사원</th>
											<td class="col-md-2 input-group"><input type="text"
												name="username" id="username" class="form-control">
											</td>
											<th class="col-md-1 col-form-label">거래처</th>
											<td class="col-md-2 input-group"><input type="text"
												name="customer_code" id="customer_code" class="form-control">
												
											<th class="col-md-1 col-form-label">품명</th>
											<td class="col-md-2 input-group"><input type="text"
												name="product_name" id="product_name" class="form-control">
											</td>
										</tr>
									</table>
									<div align="right">
										<button type="button"
											class="btn btn-dark waves-effect waves-light"
											id = "search">조회</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="user-tab" data-toggle="tab" href="#user" role="tab"
											aria-controls="user" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">고객</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="product-tab"
											data-toggle="tab" href="#product" role="tab"
											aria-controls="product" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">품목</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="manager-tab"
											data-toggle="tab" href="#manager" role="tab"
											aria-controls="manager" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">담당자</span>
										</a></li>
										<li class="nav-item"><a class="nav-link"
											id="department-tab" data-toggle="tab" href="#department"
											role="tab" aria-controls="department" aria-selected="false">
												<span class="d-block d-sm-none"><i
													class="fa fa-envelope-o"></i></span> <span
												class="d-none d-sm-block">부서</span>
										</a></li>
									</ul>

									<div class="tab-content">
										<!-- 고객 -->
										<div class="tab-pane show active" id="user" role="tabpanel"
											aria-labelledby="user-tab">
											<input type="hidden" name="${_csrf.parameterName }"
												value="${_csrf.token }">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th>코드</th>
																	<th>고객명</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
															<tbody id = "result">
								
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>

										<!-- 품목 -->
										<div class="tab-pane" id="product" role="tabpanel"
											aria-labelledby="product-tab">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th></th>
																	<th>품번</th>
																	<th>품명</th>
																	<th>규격</th>
																	<th>단위</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
															<tbody id = "">
								
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>

										<!-- 담당자 -->
										<div class="tab-pane" id="manager" role="tabpanel"
											aria-labelledby="manager-tab">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th></th>
																	<th>코드</th>
																	<th>담당자명</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
															<tbody id = "">
								
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>

										<!-- 발령내역별 -->
										<div class="tab-pane" id="department" role="tabpanel"
											aria-labelledby="department-tab">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<thead>
																<tr>
																	<th></th>
																	<th>코드</th>
																	<th>부서명</th>
																	<th>합계</th>
																	<th>1월</th>
																	<th>2월</th>
																	<th>3월</th>
																	<th>4월</th>
																	<th>5월</th>
																	<th>6월</th>
																	<th>7월</th>
																	<th>8월</th>
																	<th>9월</th>
																	<th>10월</th>
																	<th>11월</th>
																	<th>12월</th>
																</tr>
															</thead>
															<tbody id="">
															
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