<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type="text/javascript">

var searchCount = 1;

function search() {
	var param = new Object();
	var jsonData;
	
	/* 부서, 사원, 거래처, 품명 */
	param.position_code = $("#position_code").val();
	param.username = $("#username").val();
	param.customer_code = $("#customer_code").val();
	param.product_name = $("#ProductName").val();
			
	jsonData = JSON.stringify(param); 
	
	$.ajax({
		url : '${pageContext.request.contextPath}/ST_salesStatus_result?${_csrf.parameterName}=${_csrf.token }',
		type : 'POST',
		data : jsonData, 
		dataType : "json",
		contentType:"application/json;charset=UTF-8", 
		success : function(list){
			
			$('#result_2').empty();
			
			for(var i = 0 ; i < list.length; i++){
				var ep_code = list[i].ep_code;
				var ep_amount = list[i].ep_amount;
				var ep_price = list[i].ep_price;						
				var sp_unit = list[i].sp_unit;
				var sp_note = list[i].sp_note;
				var detail_ac_code = list[i].detail_ac_code;
				var product_name = list[i].product_name;
				
				var customer_name = list[i].customer_name;
				var username = list[i].username;
				
				var ep_deliver_date = list[i].ep_deliver_date;
				var pa = new Date(ep_deliver_date);
				var year = pa.getFullYear();
				var month = (1+pa.getMonth());
				var day = pa.getDate(); 
				var ep_deliver = year + "/" + month +"/"+day;
				
				var s_plan_end = list[i].ep_reg_date;
				var pa = new Date(s_plan_end);
				var year = pa.getFullYear();
				var month = (1+pa.getMonth());
				var day = pa.getDate(); 
				var s_plan = year + "/" + month +"/"+day;
				
				$('#result_2').append('<tr onclick="ST_estimate_Form(\''+ep_code+'\')">'+
						'<td>'+ ep_code +'</td>'+ 
                    	'<td>'+ customer_name +'</td>'+ 
                    	'<td>'+ username +'</td>'+
                    	'<td>'+ detail_ac_code +'</td>'+ 
						'<td>'+ product_name +'</td>'+ 
						'<td>'+ ep_amount +'</td>'+
						'<td>'+ ep_deliver +'</td>'+
						'<td>'+ s_plan + '</td>'+
						'<td>'+ ep_price +'</td>'+
						'<td>'+ ep_price*0.1 +'</td>'+
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

			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<button type="button"
										class="btn btn-outline-primary waves-effect waves-light">사원검색</button>
								</div>
								<h4 class="page-title">매 출 현 황</h4>
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
											<th class="col-md-1 col-form-label">부서</th>
											<td class="col-md-2 input-group"><input type="text"
												name="position_code" id="position_code" class="form-control">
											</td>

											<th class="col-md-1 col-form-label">사원</th>
											<td class="col-md-2 input-group"><input type="text"
												name="username" id="username" class="form-control">
											</td>
											<th class="col-md-1 col-form-label">거래처</th>
											<td class="col-md-2 input-group"><input type="text"
												name="customer_code" id="customer_code" class="form-control">
												
											<th class="col-md-1 col-form-label">품명</th>
											<td class="col-md-2 input-group"><input type="text"
												name="ProductName" id="ProductName" class="form-control">
											</td>
										</tr>
									</table>
									<div align="right">
										<button type="button" class="btn btn-dark waves-effect waves-light" onclick="search();">조회</button>
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
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead>
											<tr>
												<th>부서</th>
												<th>마감일자</th>
												<th>고객</th>
												<th>거래구분</th>
												<th>마감번호</th>
												<th>No.</th>
												<th>품번</th>
												<th>품명</th>
												<th>규격</th>
												<th>단위</th>
												<th>수량</th>
												<th>단가</th>
												<th>공급가</th>
												<th>부가세</th>
												<th>합계액</th>
												<th>비고(내역)</th>
											</tr>
										</thead>
									</table>
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
</body>
</html>