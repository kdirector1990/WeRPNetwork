<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type = "text/javascript">
function ST_searchCustomerName() {
	window.open("ST_searchCustomername3", "ST_searchCustomerName", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}

function ST_searchUsername() {
	window.open("ST_searchUsername", "ST_searchUsername", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}

function ST_searchProductname() {
	window.open("ST_searchProductname", "ST_searchProductname", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}

function ST_searchDepartmentname() {
	window.open("ST_searchDepartmentname", "ST_searchDepartmentname", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}
var searchCount = 1;
 function searchCus() {
	 var param = $("#search").serializeArray();
	 /* alert(JSON.stringify(param));  */
		$.ajax({
			url: '/erp/ST_searchCustomerCode_result?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				
				$('#result1').empty();

				for(var i = 0; i < vo.length; i++){
					var customer_code = vo[i].customer_code;
					var customer_name = vo[i].customer_name;
					var total = vo[i].m01 + vo[i].m02 + vo[i].m03 + vo[i].m04 
								+ vo[i].m05 + vo[i].m06 + vo[i].m07 + vo[i].m08
								+ vo[i].m09 + vo[i].m10 +  vo[i].m11 + vo[i].m12;
					var m01 = vo[i].m01;
					var m02 = vo[i].m02;
					var m03 = vo[i].m03;
					var m04 = vo[i].m04;
					var m05 = vo[i].m05;
					var m06 = vo[i].m06;
					var m07 = vo[i].m07;
					var m08 = vo[i].m08;
					var m09 = vo[i].m09;
					var m10 = vo[i].m10;
					var m11 = vo[i].m11;
					var m12 = vo[i].m12;
					
					$("#result1").append('<tr>' +
							'<td>'+ customer_code+ '</td>' +
							'<td>'+ customer_name+ '</td>' +
							'<td>'+ total + '</td>' +
							'<td>'+ m01 + '</td>' +
							'<td>'+ m02 + '</td>' +
							'<td>'+ m03 + '</td>' +
							'<td>'+ m04 + '</td>' +
							'<td>'+ m05 + '</td>' +
							'<td>'+ m06 + '</td>' +
							'<td>'+ m07 + '</td>' +
							'<td>'+ m08 + '</td>' +
							'<td>'+ m09 + '</td>' +
							'<td>'+ m10 + '</td>' +
							'<td>'+ m11 + '</td>' +
							'<td>' + m12 + '</td></tr>'
					)
					
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
				};
				
			/* 	alert("검색목록을 가져왔습니다1."); */
			}, 
			
			error : function(){
				alert("실패하였습니다1.");
			}
		});
 }

 function searchPro() {
	 var param = $("#search").serializeArray();
	 /* alert(JSON.stringify(param));  */
		$.ajax({
			url: '/erp/ST_searchProductName_result?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
			
			$('#result2').empty();

			for(var i = 0; i < vo.length; i++){
				var product_code = vo[i].product_code;
				var product_name = vo[i].product_name;
				var unit = vo[i].unit;
				var total = vo[i].m01 + vo[i].m02 + vo[i].m03 + vo[i].m04 
							+ vo[i].m05 + vo[i].m06 + vo[i].m07 + vo[i].m08
							+ vo[i].m09 + vo[i].m10 +  vo[i].m11 + vo[i].m12;
				var m01 = vo[i].m01;
				var m02 = vo[i].m02;
				var m03 = vo[i].m03;
				var m04 = vo[i].m04;
				var m05 = vo[i].m05;
				var m06 = vo[i].m06;
				var m07 = vo[i].m07;
				var m08 = vo[i].m08;
				var m09 = vo[i].m09;
				var m10 = vo[i].m10;
				var m11 = vo[i].m11;
				var m12 = vo[i].m12;
				
				$("#result2").append('<tr>' +
						'<td>'+ product_code+ '</td>' +
						'<td>'+ product_name+ '</td>' +
						'<td>'+ unit+ '</td>' +
						'<td>'+ total + '</td>' +
						'<td>'+ m01 + '</td>' +
						'<td>'+ m02 + '</td>' +
						'<td>'+ m03 + '</td>' +
						'<td>'+ m04 + '</td>' +
						'<td>'+ m05 + '</td>' +
						'<td>'+ m06 + '</td>' +
						'<td>'+ m07 + '</td>' +
						'<td>'+ m08 + '</td>' +
						'<td>'+ m09 + '</td>' +
						'<td>'+ m10 + '</td>' +
						'<td>'+ m11 + '</td>' +
						'<td>' + m12 + '</td></tr>'
				)
			}
				/* alert("검색목록을 가져왔습니다2."); */
			}, 
			
			error : function(){
				alert("실패하였습니다2.");
			}
		});
 }
 
 function searchUser() {
	 var param = $("#search").serializeArray();
	 /* alert(JSON.stringify(param));  */
		$.ajax({
			url: '/erp/ST_searchUsernameCode_result?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				
				$('#result3').empty();

				for(var i = 0; i < vo.length; i++){
					var username = vo[i].username;
					var e_name = vo[i].e_name;
					var total = vo[i].m01 + vo[i].m02 + vo[i].m03 + vo[i].m04 
								+ vo[i].m05 + vo[i].m06 + vo[i].m07 + vo[i].m08
								+ vo[i].m09 + vo[i].m10 +  vo[i].m11 + vo[i].m12;
					var m01 = vo[i].m01;
					var m02 = vo[i].m02;
					var m03 = vo[i].m03;
					var m04 = vo[i].m04;
					var m05 = vo[i].m05;
					var m06 = vo[i].m06;
					var m07 = vo[i].m07;
					var m08 = vo[i].m08;
					var m09 = vo[i].m09;
					var m10 = vo[i].m10;
					var m11 = vo[i].m11;
					var m12 = vo[i].m12;
					
					$("#result3").append('<tr>' +
							'<td>'+ username+ '</td>' +
							'<td>'+ e_name+ '</td>' +
							'<td>'+ total + '</td>' +
							'<td>'+ m01 + '</td>' +
							'<td>'+ m02 + '</td>' +
							'<td>'+ m03 + '</td>' +
							'<td>'+ m04 + '</td>' +
							'<td>'+ m05 + '</td>' +
							'<td>'+ m06 + '</td>' +
							'<td>'+ m07 + '</td>' +
							'<td>'+ m08 + '</td>' +
							'<td>'+ m09 + '</td>' +
							'<td>'+ m10 + '</td>' +
							'<td>'+ m11 + '</td>' +
							'<td>' + m12 + '</td></tr>'
					)
				};
				
				/* alert("검색목록을 가져왔습니다3."); */
			}, 
			
			error : function(){
				alert("실패하였습니다3.");
			}
		});
 }
 
 function searchDep() {
	 var param = $("#search").serializeArray();
		/* alert(JSON.stringify(param));  */
		$.ajax({
			url: '/erp/ST_searchDepartmentCode_result?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				
				$('#result4').empty();

				for(var i = 0; i < vo.length; i++){
					var department_code = vo[i].department_code;
					var department_name = vo[i].department_name;
					var total = vo[i].m01 + vo[i].m02 + vo[i].m03 + vo[i].m04 
								+ vo[i].m05 + vo[i].m06 + vo[i].m07 + vo[i].m08
								+ vo[i].m09 + vo[i].m10 +  vo[i].m11 + vo[i].m12;
					var m01 = vo[i].m01;
					var m02 = vo[i].m02;
					var m03 = vo[i].m03;
					var m04 = vo[i].m04;
					var m05 = vo[i].m05;
					var m06 = vo[i].m06;
					var m07 = vo[i].m07;
					var m08 = vo[i].m08;
					var m09 = vo[i].m09;
					var m10 = vo[i].m10;
					var m11 = vo[i].m11;
					var m12 = vo[i].m12;
					
					$("#result4").append('<tr>' +
							'<td>'+ department_code + '</td>' +
							'<td>'+ department_name + '</td>' +
							'<td>'+ total + '</td>' +
							'<td>'+ m01 + '</td>' +
							'<td>'+ m02 + '</td>' +
							'<td>'+ m03 + '</td>' +
							'<td>'+ m04 + '</td>' +
							'<td>'+ m05 + '</td>' +
							'<td>'+ m06 + '</td>' +
							'<td>'+ m07 + '</td>' +
							'<td>'+ m08 + '</td>' +
							'<td>'+ m09 + '</td>' +
							'<td>'+ m10 + '</td>' +
							'<td>'+ m11 + '</td>' +
							'<td>' + m12 + '</td></tr>'
					)
				};
				
				/* alert("검색목록을 가져왔습니다4."); */
			}, 
			
			error : function(){
				alert("실패하였습니다4.");
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
								<div class="card-body">
									<form id="search">
										<table class="col-12">
											<tr class="form-group row">
												<th class="col-md-1 col-form-label">거래처</th>
												<td class="col-md-2 input-group">
												<input type="text" name="customer_code" id="customer_codeM" class="form-control" onclick="ST_searchCustomerName();">
												<input type="text" name="customer_name" id="customer_nameM" class="form-control" readonly>
												<td>
													
												<th class="col-md-1 col-form-label">품명</th>
												<td class="col-md-2 input-group">
												<input type="text" name="product_code" id="product_codeP" class="form-control" onclick="ST_searchProductname();">
												<input type="text" name="product_name" id="product_nameP" class="form-control" readonly>
												</td>
											</tr>
											<tr class="form-group row">		
												<th class="col-md-1 col-form-label">사원</th>
												<td class="col-md-2 input-group">
												<input type="text" name="username" id="username" class="form-control" onclick="ST_searchUsername();">
												<input type="text" name="e_name" id="e_name" class="form-control" readonly>
												</td>
												
												<th class="col-md-1 col-form-label">부서</th>
												<td class="col-md-2 input-group">
												<input type="text" name="department_code" id="department_code" class="form-control" onclick="ST_searchDepartmentname();">
												<input type="text" name="department_name" id="department_name" class="form-control" readonly>
												</td>
											</tr>
										</table>
									</form>
									<div align="right">
										<button type="button"
											class="btn btn-dark waves-effect waves-light"
											onclick="searchCus(); searchPro(); searchUser(); searchDep();">조회</button>
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
												<div class="card-body">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table id = "datatable"
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered table-hover">
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
															<tbody id="result1">

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
												<div class="card-body">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table id="datatable-fixed-header"
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered table-hover">
															<thead>
																<tr>
																	<th>품번</th>
																	<th>품명</th>
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
															<tbody id = "result2">
								
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
												<div class="card-body">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table id="datatable-keytable"
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered table-hover">
															<thead>
																<tr>
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
															<tbody id = "result3">
								
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
												<div class="card-body">
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table id="datatable-responsive"
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered table-hover">
															<thead>
																<tr>
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
															<tbody id="result4">
															
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
		
	<div id = "bodyappend"></div>
</body>
</html>