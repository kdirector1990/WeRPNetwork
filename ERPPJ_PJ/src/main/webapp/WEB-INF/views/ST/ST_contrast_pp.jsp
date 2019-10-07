<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
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
<script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(function(){
	$('#search').click(function(){
		var param = new Object();
		var jsonData;
					
		param.productName = $("#productName").val();
		param.year = $("#years").val();
		param.mon = $("#month").val(); 
				
		jsonData = JSON.stringify(param); 
		$.ajax({
			url : '${pageContext.request.contextPath}/ST_contrast_result?${_csrf.parameterName}=${_csrf.token }',
			type : 'POST',
			data : jsonData, 
			dataType : "json",
			contentType:"application/json;charset=UTF-8", 
			success : function(list){
				$('#bodyappend').empty();
				$('#resulttable').empty();
				$('#result_2').empty();
				
				document.getElementById("searchInfo").style.display="block";
				
				$('#resulttable').append(
						'<div class="table-rep-plugin">'+
						'<div class="" data-pattern="priority-columns">'+
							'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">'+
								'<thead class="bg-primary text-white">'+
									'<tr>'+
										'<th>월</th>'+
										'<th>품번</th>'+
										'<th>품명</th>'+
										'<th>거래처</th>'+
										'<th>담당자</th>'+
										'<th>출고 수량</th>'+
										'<th>계획 수량</th>'+
										'<th>달성율</th>'+
									'</tr>'+
								'</thead>'+
								'<tbody id = "result_2">'+
								
								'</tbody>'+
							'</table>'+
						'</div>'+
					'</div>	');
				
				for(var i = 0 ; i < list.length; i++){
					var sale_code = list[i].sale_code;
					var sale_pname = list[i].sale_pname;						
					var customer_name = list[i].customer_name;
					var sale_name = list[i].sale_name;
					var sale_amount = list[i].sale_amount;
					var plan_amount = list[i].plan_amount;
					
					
					var e_name = list[i].e_name;
					var product_name = list[i].product_name;
					var sale_date = list[i].sale_date;
					
					var saledate = list[i].sale_date;
					var pa = new Date(saledate);
					var year = pa.getFullYear();
					var month = (1+pa.getMonth());
					var day = pa.getDate(); 
					var rel_date = month;
					
					var amount = sale_amount/plan_amount*100;
					var am = amount.toFixed(1);
					
					$('#result_2').append( '<tr>' +
							'<td>'+ sale_date +'</td>'+ 
                        	'<td>'+ sale_code +'</td>'+ 
                        	'<td>'+ sale_pname +'</td>'+
                        	'<td>'+ customer_name +'</td>'+ 
							'<td>'+ sale_name +'</td>'+ 
							'<td>'+ sale_amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
							'<td>'+ plan_amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
							'<td>'+ am + '%</td>'+
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
											href="javascript: void(0);">영업</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">영업 현황</a></li>
										<li class="breadcrumb-item active">판매계획 대비 출고 현황</li>
									</ol>
								</div>
								<h2 class="page-title">판매계획 대비 출고 현황</h2>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<!-- end row-->

					<!-- ===== MEDIA ==== -->
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label" style="text-align: right;">품목</th>
											<td class="col-md-2 input-group"><input type="text"
												name="productName" id="productName" class="form-control"></td>
												
											<th class="col-md-1 col-form-label" style="text-align: right;">연도</th>
											<td class="col-md-2 input-group"><input type="text"
												name="years" id="years" class="form-control"></td>	

											<th class="col-md-1 col-form-label" style="text-align: right;">월별</th>
											<td class="col-md-2 input-group">
												<select class="form-control" name="month" id="month">
														<option value = "">월</option>
														<option value = "1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
												</select>
											</td>
										</tr>
									</table>
									<div align="right">
										<button type="button"
											class="btn btn-primary waves-effect waves-light" id ="search">조회</button>
									</div>

									<!-- 품목 -->
									<div class="row" id="searchInfo">
										<div class="col-sm-12">
											<div class="card">
												<div class="card-body">
													<div id = "resulttable">
													</div>
													<!-- <div class="table-rep-plugin">
														<div class="" data-pattern="priority-columns">
															<table id="datatable"
																class="table table-striped table-bordered dt-responsive nowrap">
																<thead class="bg-primary text-white">
																	<tr>
																		<th>월</th>
																		<th>품번</th>
																		<th>품명</th>
																		<th>거래처</th>
																		<th>담당자</th>
																		<th>출고 수량</th>
																		<th>계획 수량</th>
																		<th>달성율</th>
																	</tr>
																</thead>
																<tbody id = "result_2">
																
																</tbody>
															</table>
														</div>
													</div> -->
												</div>

											</div>

										</div>
		
									</div>

								</div>
							</div>
						</div>
					</div>
					<!-- end col -->
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