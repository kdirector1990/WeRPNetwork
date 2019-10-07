<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
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
var searchCount = 1;
$(function(){
	$('#search').click(function(){
		var param = new Object();
		var jsonData;
		
		param.stored_name = $("#storedName").val();
		param.release_name = $("#releaseName").val();
		param.username = $("#username_2").val();
		
		var temp = new Date($("#userdate1").val());
		var year = temp.getFullYear();
		var temp_month = (1+temp.getMonth());
		var month = "0";
		if(temp_month<10){
			month = "0"+temp_month
		}else{
			month = temp_month;
		}
		var day = "1";
		var temp_day = temp.getDate();
		if(temp_day<10){
			day = "0"+temp_day;
		}else{
			day = temp_day;
		}
		
		var date1 = year+"-"+month+"-"+day; 
		
		param.userdate1 = date1;
		
		var temp2 = new Date($("#userdate2").val());
		var year2 = temp2.getFullYear();
		var temp_month2 = (1+temp2.getMonth());
		var month2 = "0";
		if(temp_month2<10){
			month2 = "0"+temp_month2
		}else{
			month2 = temp_month2;
		}
		var day2 = "1";
		var temp_day2 = temp2.getDate();
		if(temp_day2<10){
			day2 = "0"+temp_day2;
		}else{
			day2 = temp_day2;
		}
		
		var date2 = year2+"-"+month2+"-"+day2; 
		param.userdate2 = date2; 
		  
				
		jsonData = JSON.stringify(param); 
		$.ajax({
			url : '${pageContext.request.contextPath}/ST_tables_datatable_result?${_csrf.parameterName}=${_csrf.token }',
			type : 'POST',
			data : jsonData, 
			dataType : "json",
			contentType:"application/json;charset=UTF-8", 
			success : function(list){
				
				$('#resulttable').empty();
				$('#bodyappend').empty();
				
				$('#resulttable').append(
				'<table id="datatable-buttons"	class="table table-striped table-bordered dt-responsive nowrap"	style="border-collapse: collapse; border-spacing: 0;">'+
					'<thead class="bg-primary text-white">'+
						'<tr>'+
							'<th>출고 코드</th>'+
							'<th>품목</th>'+
							'<th>거래 요청일</th>'+
							'<th>출고일자</th>'+
							'<th>입고처</th>'+
							'<th>출고처</th>'+
							'<th>출고구분</th>'+
							'<th>단가구분</th>'+
							'<th>수량</th>'+
							'<th>담당자</th>'+
						'</tr>'+
					'</thead>'+
					'<tbody id="result_2">'+
					'</tbody>'+
				'</table>' );
				
				for(var i = 0 ; i < list.length; i++){
					var sar_code = list[i].sar_code;
					var stored_count = list[i].stored_count;
					var release_count = list[i].release_count;
					var stored_name = list[i].stored_name;
					var release_name = list[i].release_name;
					var unit_cost = list[i].unit_cost;
					var amount = list[i].amount;
					
					var sar_type = list[i].sar_type;
				
					var e_name = list[i].e_name;
					var product_name = list[i].product_name;
					
					var regdate = list[i].reg_date;
					var pa = new Date(regdate);
					var year = pa.getFullYear();
					var month = (1+pa.getMonth());
					var day = pa.getDate(); 
					var rel_date = year + "/" + month +"/"+day;
					
					var releasedate = list[i].release_date;
					var pa = new Date(releasedate);
					var year = pa.getFullYear();
					var month = (1+pa.getMonth());
					var day = pa.getDate(); 
					var rele_date = year + "/" + month +"/"+day;
					 
					$('#result_2').append('<tr>'+
							'<td>'+ sar_code +'</td>'+ 
                        	'<td>'+ product_name +'</td>'+ 
                        	'<td>'+ rel_date +'</td>'+
                        	'<td>'+ rele_date +'</td>'+ 
							'<td>'+ stored_name +'</td>'+ 
							'<td>'+ release_name +'</td>'+
							'<td>'+ sar_type +'</td>'+
							'<td>'+ unit_cost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>'+
							'<td>'+ amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
							'<td>'+ e_name +'</td>'+
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
											href="javascript: void(0);">영업 관리</a></li>
										<li class="breadcrumb-item active">거래 명세서 발행</li>
									</ol>
								</div>
								<h4 class="page-title">거래 명세서 발행</h4>
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
											<th>입고처</th>
											<td class="col-md-2 input-group"><input type="text" name="storedName" id="storedName" class="form-control"></td>
											
											<th>출고처</th>
											<td class="col-md-2 input-group"><input type="text" name="releaseName" id="releaseName" class="form-control"></td>

											<th>담당자</th>
											<td class="col-md-2 input-group"><input type="text"
												name="username_2" id="username_2" class="form-control">
				
											<th>출고 기간</th>
											<td class="col-md-2 input-group">
											<input type="date" id="userdate1" pattern="YYYY-MM-DD" name="userdate1" class="form-control" value="2019-01-01">&nbsp;&nbsp;&nbsp;__</td>
											<td class="col-md-2 input-group"><input type="date" id="userdate2" name="userdate2" class="form-control" value="2019-12-31"></td>
										</tr>
									</table>
									<div align="right">
										<button type="button"
											class="btn btn-primary waves-effect waves-light"
											id="search" name="search">조회</button>
									</div>
									<div id = "resulttable">
									</div>
									<!-- <table id="datatable-buttons"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead class="bg-primary text-white">
											<tr>
												<th>출고 코드</th>
												<th>품목</th>
												<th>거래 요청일</th>판매 대장 등록일
												<th>출고일자</th>출고 리스트 등록일
												<th>입고처</th>
												<th>출고처</th>
												<th>출고구분</th>
												<th>단가구분</th>
												<th>수량</th>
												<th>담당자</th>
											</tr>
										</thead>
										<tbody id="result_2">
											<tr>
												<td><input type="checkbox" name="chk"></td>
												<td>001</td>
												<td>2019-08-19</td>
												<td>일자</td>
												<td>거래처1</td>
												<td>창고1</td>
												<td>출고구분1</td>
												<td>과세구분1</td>
												<th>단가구분1</th>
												<th>납품처1</th>
												<th>담당자1</th>
												<th></th>
											</tr>
										</tbody>
									</table> -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end content -->
				</div>


				<%@ include file="../footer.jsp"%>
			</div>
		</div>
		<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
		<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<!-- plugins -->
	<script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
	<div id="bodyappend"></div>
</body>
</html>