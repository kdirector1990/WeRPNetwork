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
			url : '${pageContext.request.contextPath}/ST_tax_result?${_csrf.parameterName}=${_csrf.token }',
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
							'<th>거래처명</th>'+
							'<th>사업자 번호</th>'+
							'<th>대표자명</th>'+
							'<th>등록일자</th>'+
							'<th>사업부문</th>'+
							'<th>담당자</th>'+
							'<th>금액</th>'+
						'</tr>'+
					'</thead>'+
					'<tbody id="result_2">'+
					'</tbody>'+
				'</table>' );
				
				for(var i = 0 ; i < list.length; i++){
					var stored_name = list[i].stored_name;
					var license_number = list[i].license_number;
					var bs_name = list[i].bs_name;
					var release_date = list[i].release_date;
					var bs_condition = list[i].bs_condition;
					var unit_cost = list[i].unit_cost;
					var e_name = list[i].e_name;
					
					var unit_cost = list[i].unit_cost;
				
					var release_count = list[i].release_count;
					var sar_type = list[i].sar_type;
					var release_count = list[i].release_count;
					var co = unit_cost*release_count;
					var re = co*0.1;
					 
					$('#result_2').append('<tr>'+
							'<td>'+ stored_name +'</td>'+ 
                        	'<td>'+ license_number +'</td>'+ 
                        	'<td>'+ bs_name +'</td>'+
                        	'<td>'+ release_date +'</td>'+ 
							'<td>'+ bs_condition +'</td>'+ 
							'<td>'+ e_name +'</td>'+
							'<td>'+ re.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'원</td>'+
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
										<li class="breadcrumb-item active">세금 명세서 발행</li>
									</ol>
								</div>
								<h4 class="page-title">세금 명세서 발행</h4>
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
												<th>거래처명</th>
												<td class="col-md-2 input-group"><input type="text" name="storedName" id="storedName" class="form-control"></td>

												<th>담당자</th>
												<td class="col-md-2 input-group"><input type="text" name="username_2" id="username_2" class="form-control">
												
												<th>등록 기간</th>
												<td class="col-md-2 input-group">
												<input type="date" id="userdate1" pattern="YYYY-MM-DD" name="userdate1" class="form-control" value="2019-01-01">&nbsp;&nbsp;&nbsp;__</td>
												<td class="col-md-2 input-group"><input type="date" id="userdate2" name="userdate2" class="form-control" value="2019-12-31"></td>
											</tr>
										</table>
										<div align="right">
										<button type="button"
											class="btn btn-primary waves-effect waves-light"
											id="search" name="search">조회</button>
											<br>
									</div>
								<div id = "resulttable">
								</div>
								<!-- 	<table id="datatable-buttons"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead>
											<tr>
												<th>거래처명</th>입고처
												<th>사업자 번호</th>
												<th>대표자명</th>
												<th>등록일자</th>release_date
												<th>사업 부문</th>
												<th>담당자</th>
												<th>금액</th>
											</tr>
										</thead>
										<tbody>
											 <tr>
												<td><input type="checkbox" name="chk"></td>
												<td>001</td>
												<td>무한상사</td>
												<td>001-12-345678</td>
												<td>유재석</td>
												<td>2018-04-04</td>
												<td>디지털</td>
												<td>권돼지</td>
												<td>별도 10%</td>
												<td><a href="#">보기</a></td>
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