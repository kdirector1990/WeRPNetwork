<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
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
<style type="text/css">
	#sale{
		display: none;
	}
</style>

<script type="text/javascript">
	
var searchCount = 1;
$(function(){
	$('#search').click(function(){
		var param = new Object();
		var jsonData;
		
		param.customer_name = $("#customerName").val();
		param.productName = $("#productName_").val();
		param.release = $("#release").val(); 
				
		jsonData = JSON.stringify(param); 
		
		$.ajax({
			url : '${pageContext.request.contextPath}/ST_delay_state_result?${_csrf.parameterName}=${_csrf.token }',
			type : 'POST',
			data : jsonData, 
			dataType : "json",
			contentType:"application/json;charset=UTF-8", 
			success : function(list){
				
				$('#result').empty();
				document.getElementById("sale").style.display="block";
				
				for(var i = 0 ; i < list.length; i++){
					var salelist_code = list[i].salelist_code;
					var amount = list[i].amount;
					var price = list[i].price;						
					var unit = list[i].unit;
					var note = list[i].note;
					if(note == null){
						note = " ";
					}
					var detail_ac_code = list[i].detail_ac_code;
					var product_name = list[i].product_name;
					
					var customer_name = list[i].customer_name;
					var username = list[i].username;
					var e_name = list[i].e_name;
					var release_state = list[i].release_state;
					
					var release_o_date = list[i].release_o_date;
					var pa = new Date(release_o_date);
					var year = pa.getFullYear();
					var month = (1+pa.getMonth());
					var day = pa.getDate(); 
					var o_date = year + "/" + month +"/"+day;
					
					var release_o_date = list[i].release_o_date;
					var pa = new Date(release_o_date);
					var year = pa.getFullYear();
					var month = (1+pa.getMonth());
					var day = pa.getDate(); 
					var release_date = year + "/" + month +"/"+day;
					
					$('#result').append('<tr>'+
							'<td>'+ salelist_code +'</td>'+ 
                        	'<td>'+ o_date +'</td>'+ 
                        	'<td>'+ customer_name +'</td>'+
                        	'<td>'+ product_name +'</td>'+ 
                        	'<td>'+ amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+ 
							'<td>'+ unit +'</td>'+ 
							'<td>'+ price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
							'<td>'+ e_name +'</td>'+
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">영업</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">영업 현황</a></li>
                                            <li class="breadcrumb-item active">Images</li>
                                       </ol>
								</div>
								<h2 class="page-title">출고지연현황</h2>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<!-- end row-->

					<!-- ===== MEDIA ==== -->
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">거래처</th>
											<td class="col-md-2 input-group"><input type="text"
												name="customerName" id="customerName" class="form-control"></td>

											<th class="col-md-1 col-form-label">품목</th>
											<td class="col-md-2 input-group"><input type="text"
												name="productName_" id="productName_" class="form-control"></td>

											<th class="col-md-1 col-form-label">구분</th>
											<td class="col-md-2 input-group">
												<select class="form-control select" id="release" name="release">
													<option value="2">미출고</option>
													<option value="3">처리 완료</option>
												</select>
											</td>

										</tr>
									</table>

									<div align="right">
										<button type="button"
											class="btn btn-primary waves-effect waves-light" id="search">조회</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end row -->
					<div id="sale">
						<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<div class="">
										<table id="datatable"
												class="table table-striped table-bordered dt-responsive nowrap">
												<thead class="bg-primary text-white">
												<tr>
													<th>판매 코드</th>
													<th>출고 요청일</th>
													<th>거래처명</th>
													<th>제품명</th>
													<th>수량</th>
													<th>단위</th>
													<th>가격</th>
													<th>담당자</th>
													<th>비고</th>
												</tr>
											</thead>
											<tbody id = "result">
												<%-- <c:forEach var="var" begin="1" end="20" step="1">
													<c:if test="${var eq param.username }">
														<tr>
															<td>${var }</td>
															<td>${var }</td>
															<td>김${var }</td>
															<td>2018 상반기</td>
															<td>${var }</td>
															<td>${var }</td>
															<td>${var }</td>
															<td>${var }</td>
															<td>${var }</td>
															<td>${var }</td>
														</tr>
													</c:if> 
												</c:forEach> --%>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
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