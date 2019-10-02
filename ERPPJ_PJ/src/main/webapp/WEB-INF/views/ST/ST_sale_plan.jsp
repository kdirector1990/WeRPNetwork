<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->
</head>
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
<script type="text/javascript">

    function salePlanWriteForm(url) {
    	sendRequest(callback, "ST_sale_plan_writeForm", "post", "${_csrf.parameterName }=${_csrf.token }&saleplan_code="+url);
    }
    
    function callback() {
    	var result = document.getElementById("result");
    	
    	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
    		if(httpRequest.status == 200){	// 200 : 정상 종료
    		 	result.innerHTML = "정상종료";
    			
    			var datas = httpRequest.responseText; 
    			
    			var bookList = "";
    			
    			result.innerHTML = datas;
    		} else {
    			result.innerHTML = "에러발생";
    		}
    	} 
    	else {
    		result.innerHTML = "상태 : " + httpRequest.readyState;
    	}
    }
    
  
    	 $(function(){
    		$('#search').click(function(){
    			var param = new Object();
    			var jsonData;
    						
    			param.productName = $("#productName").val();
    			param.dateu = $("#user_date").val();
    					
    			jsonData = JSON.stringify(param);
    			
    			$.ajax({
    				url : '${pageContext.request.contextPath}/ST_sale_plan_result?${_csrf.parameterName}=${_csrf.token }',
    				type : 'POST',
    				data : jsonData, 
    				dataType : "json",
    				contentType:"application/json;charset=UTF-8",
    				success : function(list){
    					$('#bodyappend').empty();
        				$('#resulttable').empty();
        				$('#result_2').empty();
        				
        				$('#resulttable').append(
        						'<div class="table-rep-plugin">'+
								'<div class="" data-pattern="priority-columns">'+
									'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">'+
										'<thead class="bg-primary text-white">'+
											'<tr>'+
												'<th>판매계획코드</th>'+
												'<th>품명</th>'+
												'<th>단위 (관리)</th>'+
												'<th>예상 금액</th>'+
												'<th>예상 수량</th>'+
												'<th>기간 시작</th>'+
												'<th>기간 종료</th>'+
												'<th>비고</th>'+
											'</tr>'+
										'</thead>'+
										'<tbody id="result_2">'+
										'</tbody>'+
									'</table>'+
								'</div>'+
							'</div>');
    					
    					
    					for(var i = 0 ; i < list.length; i++){
    						var saleplan_code = list[i].saleplan_code;
    						var ef_price = list[i].ef_price;
    						var ef_amount = list[i].ef_amount;						
    						var sp_unit = list[i].sp_unit;
    						var sp_note = list[i].sp_note;
    						if(sp_note == null){
    							sp_note = " ";
    						}
    						var product_name = list[i].product_name;
    						
    						var s_plan_start = list[i].s_plan_start;
    						var pa = new Date(s_plan_start);
    						var year = pa.getFullYear();
    						var month = (1+pa.getMonth());
    						var day = pa.getDate(); 
    						var start_datess = year + "/" + month +"/"+day;
    						
    						var s_plan_end = list[i].s_plan_end;
    						var pa = new Date(s_plan_end);
    						var year = pa.getFullYear();
    						var month = (1+pa.getMonth());
    						var day = pa.getDate(); 
    						var edate = year + "/" + month +"/"+day;
    						
    						$('#result_2').append('<tr onclick="salePlanWriteForm(\''+saleplan_code+'\')">'+
    	                         	'<td>'+ saleplan_code +'</td>'+
    	                         	'<td>'+ product_name +'</td>'+
    	                         	'<td>'+ sp_unit +'</td>'+
    								'<td>'+ ef_price +'</td>'+
    								'<td>'+ ef_amount +'</td>'+
    								'<td>'+ start_datess +'</td>'+
    								'<td>'+ edate +'</td>'+
    								'<td>'+ sp_note +'</td>'+
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
    
      function ProductName() {
  		window.open("ST_searchProductname", "ProductName_list", "menubar=no, width=480px, height = 600px location=no,status=no,scrollbars=yes");
  		}
        </script>
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
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">판매 계획 관리</h4>
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

											<th>품명</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="productName" id="productName">
											</td>

											<td>&nbsp;&nbsp;</td>

											<th>계획년도</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="user_date" id="user_date">
											</td>

											<th></th>
										</tr>
									</table>
									<div align="right">
										<button type="button"
											class="btn btn-primary waves-effect waves-light"
											id="search">조회</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
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
														<th>판매계획코드</th>
														<th>품명</th>
														<th>단위 (관리)</th>
														<th>예상 금액</th>
														<th>예상 수량</th>
														<th>기간 시작</th>
														<th>기간 종료</th>
														<th>비고</th>
													</tr>

												</thead>
												<tbody id="result_2">
													
												</tbody>
											</table>
										</div>
									</div> -->
								</div>
				</div>
				<!-- end row -->

			</div>
			</div>
			</div>
			</div>
			<div id="result"></div>

		</div>
	</div>

	<!-- end container-fluid -->

	<!-- end content -->
	<%@ include file="../footer.jsp"%>

	<!-- ============================================================== -->
	<!-- End Page content -->
	<!-- ============================================================== -->

	<!-- END wrapper -->

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