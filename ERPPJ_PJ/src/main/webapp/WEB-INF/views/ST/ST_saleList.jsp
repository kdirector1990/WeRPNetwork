<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Responsive Table css -->
<link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css"
	rel="stylesheet" type="text/css" />
</head>
<script src="/erp/resources/assets/js/request.js"></script>
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
    function salePlanWriteForm(url) {
    	sendRequest(callback, "ST_saleList_Form", "post", "${_csrf.parameterName }=${_csrf.token }&salelist_code="+url);
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
    		/* param.release = $("#release").val(); */
    				
    		jsonData = JSON.stringify(param); 
    		
    		$.ajax({
    			url : '${pageContext.request.contextPath}/ST_saleList_result?${_csrf.parameterName}=${_csrf.token }',
    			type : 'POST',
    			data : jsonData, 
    			dataType : "json",
    			contentType:"application/json;charset=UTF-8", 
    			success : function(list){
    				
    				$('#result_2').empty();
    				
    				for(var i = 0 ; i < list.length; i++){
    					var salelist_code = list[i].salelist_code;
    					var ep_amount = list[i].ep_amount;
    					var ep_price = list[i].ep_price;						
    					var sp_unit = list[i].sp_unit;
    					var sp_note = list[i].sp_note;
    					var detail_ac_code = list[i].detail_ac_code;
    					var product_name = list[i].product_name;
    					
    					var customer_name = list[i].customer_name;
    					var username = list[i].username;
    					var e_name = list[i].e_name;
    					var release_state = lost[i].release_state;
    					
    					var reg_date = list[i].reg_date;
    					var pa = new Date(reg_date);
    					var year = pa.getFullYear();
    					var month = (1+pa.getMonth());
    					var day = pa.getDate(); 
    					var reg = year + "/" + month +"/"+day;
    					
    					var release_o_date = list[i].release_o_date;
    					var pa = new Date(release_o_date);
    					var year = pa.getFullYear();
    					var month = (1+pa.getMonth());
    					var day = pa.getDate(); 
    					var release_date = year + "/" + month +"/"+day;
    					
    					$('#result_2').append('<tr onclick="salePlanWriteForm(\''+salelist_code+'\')">'+
    							'<td>'+ salelist_code +'</td>'+ 
                            	'<td>'+ product_name +'</td>'+ 
                            	'<td>'+ e_name +'</td>'+
                            	'<td>'+ reg +'</td>'+ 
                            	'<td>'+ release_date +'</td>'+ 
    							'<td>'+ unit +'</td>'+ 
    							'<td>'+ amount +'</td>'+
    							'<td>'+ price +'</td>'+
    							'<td>'+ customer_name + '</td>'+
    							'<td>'+ release_state +'</td>'+
    							'<td>'+ note +'</td>'+
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
										<li class="breadcrumb-item active">출고 관리</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title mb-3">판매 관리</h4>

									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label" style="text-align: right;">거래처</th>
											<td class="col-md-2 input-group"><input type="text"
												name="customerName" id="customerName" class="form-control">
											</td>

											<th class="col-md-1 col-form-label" style="text-align: right;">담당자</th>
											<td class="col-md-2 input-group"><input type="text"
												name="username_2" id="username_2" class="form-control">
												
											</td>
											<th class="col-md-1 col-form-label" style="text-align: right;">품명</th>
											<td class="col-md-2 input-group"><input type="text"
												name="ProductName" id="ProductName" class="form-control">
												
											<th class="col-md-1 col-form-label" style="text-align: right;">출고여부</th>
											<td class="col-md-2 input-group"><select class="form-control select" name="release" id = "release" style="width: 150px;">
													<option value="1">출고</option>
													<option value="2">미출고</option>	
											</select>
											</td>
										</tr>
									</table>
									<div align="right">
										<button type="button" class="btn btn-dark waves-effect waves-light" id="search" >조회</button>
										<a onclick="window.open('ST_saleList_write', '_blank', 'width=1500 height=600')">
										<button type="button" class="btn btn-success waves-effect waves-light">추가</button></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body">
										<div class="table-rep-plugin">
											<div class="" data-pattern="priority-columns">
												<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
													<thead class="bg-primary text-white">
												<tr>
													<th>판매 코드</th>
													<th>제품명</th>
													<th>담당자</th>
													<th>등록일</th>
													<th>출고 요청일</th>
													<th>단위</th>
													<th>수량</th>
													<th>가격</th>
													<th>거래처</th>
													<th>출고여부</th>
													<th>비고</th>
												</tr>

											</thead>
											<tbody id="result_2">
												<%-- <c:if test="${cnt > 0}">
													<c:forEach var="sto" items="${stos}">
														<tr onclick="salePlanWriteForm('${sto.salelist_code}');">
															<td>${sto.salelist_code}</td>
															<td></td>
															<!-- 제품명 -->
															<td></td>
															<!-- 담당자 -->
															<td>${sto.reg_date }</td>
															<td>${sto.release_o_date }</td>
															<td>${sto.unit }</td>
															<td>${sto.amount }</td>
															<td>${sto.price }</td>
															<td>${sto.customer_code }</td>
															<td>${sto.release_state }</td>
															<td
																style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${sto.note}</td>
														</tr>
													</c:forEach>
												</c:if> --%>
											</tbody>
										</table>
									</div>
									<!-- end .table-rep-plugin-->
								</div>
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
		<%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
        <!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Datatable plugin js -->
        <script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

        <script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

        <script src="/erp/resources/assets/js/pages/datatables.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
 <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
	<div id = "bodyappend"></div>
</body>
</html>