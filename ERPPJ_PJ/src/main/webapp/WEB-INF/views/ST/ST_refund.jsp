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
	    function ST_releaseDetailForm(url) {
	    	sendRequest(callback, "ST_releaseDetail", "post", "${_csrf.parameterName }=${_csrf.token }&sar_code="+url);
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
	    			url : '${pageContext.request.contextPath}/ST_refund_result2?${_csrf.parameterName}=${_csrf.token }',
	    			type : 'POST',
	    			data : jsonData, 
	    			dataType : "json",
	    			contentType:"application/json;charset=UTF-8", 
	    			success : function(list){
	    				
	    				$('#result_2').empty();
	    				
	    				for(var i = 0 ; i < list.length; i++){
	    					var sar_code = list[i].sar_code;
	    					var unit_cost = list[i].unit_cost;						
	    					var stored_count = list[i].stored_count;
	    					var release_count = list[i].release_count;
	    					var stored_name = list[i].stored_name;
	    					var release_name = list[i].release_name;
	    					
	    					var sar_type = list[i].sar_type;
	    					if(sar_type == "1"){
	    						sar_type = "입고";
	    					}
	    					if(sar_type == "2"){
	    						sar_type = "출고(판매)";
	    					}
	    					if(sar_type == "3"){
	    						sar_type="재입고(반품)";
	    					}
	    					
	    					var e_name = list[i].e_name;
	    					var product_name = list[i].product_name;
	    					
	    					var release_date = list[i].release_date;
	    					var pa = new Date(release_date);
	    					var year = pa.getFullYear();
	    					var month = (1+pa.getMonth());
	    					var day = pa.getDate(); 
	    					var rel_date = year + "/" + month +"/"+day;
	    					
	    					$('#result_2').append('<tr onclick="ST_releaseDetailForm(\''+sar_code+'\')">'+
	    							'<td>'+ sar_code +'</td>'+ 
	                            	'<td>'+ product_name +'</td>'+ 
	                            	'<td>'+ release_name +'</td>'+
	                            	'<td>'+ rel_date +'</td>'+ 
	    							'<td>'+ release_count +'</td>'+ 
	    							'<td>'+ stored_name +'</td>'+
	    							'<td>'+ stored_count +'</td>'+
	    							'<td>'+ e_name + '</td>'+
	    							'<td>'+ sar_type +'</td>'+
	    							'<td>'+ unit_cost +'</td>'+
	    							'<td>'+ unit_cost*release_count +'</td>'+
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
    
     function customerNameList3() {
 		window.open("ST_searchCustomername3", "customer_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
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
								<h4 class="page-title">반품 관리</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<form id="select_user_time">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<table class="col-12">
											<tr class="form-group row">
												<th class="col-md-1 col-form-label" style="text-align: right;">거래처</th>
												<td class="col-md-2 input-group"><input type="text"
													name="customerName" id="customerName" class="form-control"></td>

												<th class="col-md-1 col-form-label"style="text-align: right;">담당자</th>
												<td class="col-md-2 input-group"><input type="text"
													name="username" id="username_2" class="form-control"></td>
													
												<th class="col-md-1 col-form-label"style="text-align: right;">품명</th>
												<td class="col-md-2 input-group"><input type="text"
													name="ProductName" id="ProductName" class="form-control"></td>
											</tr>
										</table>
										<div align="right">
											<button type="button"
												class="btn btn-primary waves-effect waves-light" id="search" >조회</button>
										</div>
									</form>
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
															<th>입출고 코드</th>
															<th>품명</th>
															<th>출고 거래처명</th>
															<th>등록일</th>
															<th>출고 수량</th>
															<th>입고처</th>
															<th>입고 수량</th>
															<th>담당자</th>
															<th>구분</th>
															<th>단가</th>
															<th>합계액</th>
														</tr>
													</thead>
													<tbody id="result_2">
														<%-- <c:if test="${cnt > 0}">
															<c:forEach var="rto" items="${rtos}">
																<tr onclick="ST_releaseDetailForm('${rto.sar_code }');">
																	<td>${rto.sar_code }</td>
																	<!-- 입출고 코드 -->
																	<td>${rto.release_name }</td>
																	<!-- 출고처 -->
																	<td>${rto.release_date }</td>
																	<!-- 등록일 -->
																	<td>${rto.release_count }</td>
																	<!-- 출고 수량 -->
																	<td>${rto.stored_name }</td>
																	<!-- 입고처 -->
																	<td>${rto.stored_count }</td>
																	<td>${rto.username }</td>
																	<!--담당자  -->
																	<td>${rto.sar_type }</td>
																	<td>${rto.unit_cost }</td>
																	<!-- 단가 -->
																	<td></td>
																	<!-- 합계액 -->
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
									<!-- end .responsive-table-plugin-->
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