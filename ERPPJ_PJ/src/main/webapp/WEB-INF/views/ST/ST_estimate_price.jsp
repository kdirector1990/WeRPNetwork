<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Responsive Table css -->
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
        
function ST_estimate_Form(url) {
	sendRequest(callback, "ST_estimate_Form", "post", "${_csrf.parameterName }=${_csrf.token }&ep_code="+url);
}

function callback() {
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
		if(httpRequest.status == 200){	// 200 : 정상 종료
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

var searchCount = 1;
$(function(){
	$('#search').click(function(){
		var param = new Object();
		var jsonData;
		
					
		param.customer_name = $("#customerName").val();
		param.username = $("#username_2").val();
		param.product_name = $("#ProductName").val();
				
		jsonData = JSON.stringify(param); 
		
		$.ajax({
			url : '${pageContext.request.contextPath}/ST_estimate_result?${_csrf.parameterName}=${_csrf.token }',
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
					var e_name = list[i].e_name;
					
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
                        	'<td>'+ e_name +'</td>'+
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
	}); 
});



</script>
<script type="text/javascript">
       function ProductName() {
   		window.open("ST_searchProductname", "ProductName_list", "menubar=no, width=480px, height = 600px location=no,status=no,scrollbars=yes");
   	}
       
       function usernameList() {
   		window.open("ST_searchUsername", "username_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
   	}   
       
     function customerNameList() {
    		window.open("ST_searchCustomername2", "customer_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
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
										<li class="breadcrumb-item active">견적 현황</li>
									</ol>
								</div>
								<h4 class="page-title">견적 현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label"
												style="text-align: right;">거래처</th>
											<td class="col-md-2 input-group"><input type="text"
												name="customerName" id="customerName" class="form-control">
											</td>

											<th class="col-md-1 col-form-label"
												style="text-align: right;">담당자</th>
											<td class="col-md-2 input-group"><input type="text"
												name="username" id="username_2" class="form-control">
											</td>
											<th class="col-md-1 col-form-label"
												style="text-align: right;">품명</th>
											<td class="col-md-2 input-group"><input type="text"
												name="ProductName" id="ProductName" class="form-control">
											</td>
											<td class="col-md-2 input-group"><button type="button"
													class="btn btn-primary waves-effect waves-light"
													id="search">조회</button></td>
										</tr>
									</table>
								</div>
							</div>
							<!-- end card -->
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div class="table-rep-plugin">
										<div class="" data-pattern="priority-columns">
											<table id="datatable"
												class="table table-striped table-bordered dt-responsive nowrap">
												<thead class="bg-primary text-white">
													<tr>
														<th>견적 코드</th>
														<th>거래처</th>
														<th>담당자</th>
														<th>품번</th>
														<th>품명</th>
														<th>견적 수량</th>
														<th>납품 예정일</th>
														<th>견적 등록일</th>
														<th>공급가</th>
														<th>부가세</th>
													</tr>
												</thead>
												<tbody id="result_2">
													<%-- <c:if test="${cnt > 0}">
															<c:forEach var="eto" items="${etos}">
																<tr  onclick="ST_estimate_Form('${eto.ep_code}');">
																	<td>${eto.ep_code}</td> <!-- 견적 코드  -->
																	<td></td> <!-- 거래처 -->
																	<td></td> <!-- 담당자 -->
																	<td></td> <!-- 품번 -->
																	<td></td> <!-- 품명 -->
																	<td>${eto.ep_amount }</td> <!-- 견적 수량 -->
																	<td>${eto.ep_deliver_date }</td> <!-- 납품 예정일 -->
																	<td>${eto.ep_reg_date }</td> <!-- 견적 등록일 -->
																	<td>${eto.ep_price }</td> <!-- 단가 -->
																	<td></td> <!-- 공급가 -->
																	<td></td> <!-- 부가세 -->
																</tr>
															</c:forEach>
														</c:if> --%>
												</tbody>
											</table>
										</div>
										<!-- end .table-responsive -->
									</div>
									<!-- end .table-rep-plugin-->
								</div>
							</div>
						</div>
					</div>
					<div id="result">
						<!-- 상세 페이지 출력 위치 -->

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