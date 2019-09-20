<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type = "text/javascript">
 function search() {
	 var param = $("#search").serializeArray();
		alert(JSON.stringify(param));
		$.ajax({
			url: '/erp/ST_salesTotal_result?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				
				$('#result').empty();

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
					
					$("#result").append('<tr>' +
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
				}
				
				alert("검색목록을 가져왔습니다.");
			},
			error : function(){
				alert("실패하였습니다.");
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
								<div class="card-body table-responsive">
									<form id="search">
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
									</form>
									<div align="right">
										<button type="button"
											class="btn btn-dark waves-effect waves-light"
											onclick="search();">조회</button>
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
													<div class="card-body">
														<table id="datatable"
															class="table m-0 chit-table-colored-borderedchit-table-bordered-primary  table-bordered table-hover">
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
															<tbody id="result">

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
		<!-- Datatable plugin js -->
		<script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
		<script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>
	<div id = "bodyappend"></div>
</body>
</html>