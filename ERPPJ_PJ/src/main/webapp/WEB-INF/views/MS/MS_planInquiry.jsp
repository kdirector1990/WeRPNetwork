<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.result {
	display: none;
}
</style>
<%@ include file="../setting.jsp"%>
<script type="text/javascript">
function ST_searchUsername() {
	window.open("ST_searchUsername", "ST_searchUsername", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}

function enterkey() {
    if (window.event.keyCode == 13) {
         // 엔터키가 눌렸을 때 실행할 내용
         searchCus();
    }
}

var searchCount = 1;
function searchCus() {
	 var param = $("#search").serializeArray();
	 /* alert(JSON.stringify(param));  */
		$.ajax({
			url: '/erp/MS_planInquiry_result?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				
				$('#result1').empty();
				$('#bodyappend').empty();
	
				for(var i = 0; i < vo.length; i++){
					
					var plan_code = vo[i].plan_code;
					var plan_name = vo[i].plan_name;
					var username = vo[i].username;
					var position_code = vo[i].position_code;
					var plan_regdate = vo[i].plan_regdate;
					var plan_startdate = vo[i].plan_startdate;
					var plan_enddate = vo[i].plan_enddate;
					var plan_state = vo[i].plan_state;
					var plan_objective = vo[i].plan_objective;
					var plan_proposal = vo[i].plan_proposal;
					
					$("#result1").append('<tr>' +
							'<td>'+ plan_code+ '</td>' +
							'<td>'+ plan_name+ '</td>' +
							'<td>'+ username + '</td>' +
							'<td>'+ position_code + '</td>' +
							'<td>'+ plan_regdate + '</td>' +
							'<td>'+ plan_startdate + '</td>' +
							'<td>'+ plan_enddate + '</td>' +
							'<td>'+ plan_state + '</td>' +
							'<td>'+ plan_objective + '</td>' +
							'<td>' + plan_proposal + '</td></tr>');
					
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
				alert("실패.");
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

			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<h4 class="page-title">경영지원</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form id="search" onsubmit="return false">
									<table class="col-12">
										<tr class="form-group row">
											<tr class="form-group row">		
												<th class="col-md-1 col-form-label">사원</th>
												<td class="col-md-2 input-group">
												<input type="text" name="username" id="username"
												class="form-control" onclick="ST_searchUsername();"  onkeyup="enterkey();">
												<input type="text" name="e_name" id="e_name"
												class="form-control" readonly>
												</td>
												
											</tr>
										</table>
									</form>
									<div align="right">
										<button type="button"
										class="btn btn-dark waves-effect waves-light"
										onclick="searchCus();">조회</button>
									</div>
								</div>
							</div>
						</div>
					</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">기획서 조회</h4>
								<hr>
								<table id="datatable1"
									class="table m-0 table-bordered table-hover"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead class="bg-primary text-white">
										<tr>
											<th>기획서 코드</th>
											<th>기획명</th>
											<th>기획제안자</th>
											<th>책임자</th>
											<th>기획등록일</th>
											<th>시작예정일</th>
											<th>종료예정일</th>
											<th>기획상태</th>
											<th>기획목표</th>
											<th>상세 기획안 파일</th>
										</tr>
									</thead>


									<tbody id="result1">
									</tbody>
								</table>

								<div class="result2">
									<br>
									<form>
										<input type='hidden' name="${_csrf.parameterName }"
											value="${_csrf.token }"> <br>
										<table id="datatable2"
											class="table table-striped dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0;">
											<thead>
											</thead>

											<tbody>
											</tbody>
										</table>
									</form>
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


		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

	<script type="text/javascript">
     $("#datatable1 tbody tr").click(function(){
    	 
			if($(".plandiv") != null){
				$(".plandiv").remove();
			}
			
			var tdArr = new Array();	// 배열 선언
			
			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();
			
			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i){
				tdArr.push(td.eq(i).text());
			});
			
			// td.eq(index)를 통해 값을 가져올 수도 있다.
			var plan_code = td.eq(1).text();
   			var plan_name = td.eq(2).text();
   			var username = td.eq(3).text();
   			var position_code = td.eq(4).text();
   			var plan_regdate = td.eq(5).text();
   			var plan_startdate = td.eq(6).text();
   			var plan_enddate = td.eq(7).text();
   			var plan_state = td.eq(8).text();
   			var plan_objective = td.eq(9).text();
   			var plan_proposal = td.eq(10).text();
			
   			tdArr.push(plan_code);
   			tdArr.push(plan_name);
   			tdArr.push(username);
   			tdArr.push(position_code);
   			tdArr.push(plan_regdate);
   			tdArr.push(plan_startdate);
   			tdArr.push(plan_enddate);
   			tdArr.push(plan_state);
   			tdArr.push(plan_objective);
   			tdArr.push(plan_proposal);
   			
   			$('.result2').show();
   			
   			$('#datatable2 > tbody:last').append('<div class="plandiv">'+'<input type="hidden" name="plan_code" value="'+tdArr[0]+'"><div class="form-group row">'
 					+ '<label class="col-md-2 col-form-label" for="example-email">기획서 코드</label>'        
 						+ '<div class="col-md-10">'
 				    		+ '<input type="text" name="plan_code" value="'+tdArr[0]+'" class="form-control" disabled>' 
 				        +'</div>'
 				    +'</div>'
 				    +'<div class="form-group row">'
 			        +'<label class="col-md-2 col-form-label" for="example-email">기획명</label>'
 			        	+ '<div class="col-md-10">'
 			            	+ '<input type="text" name="plan_name" value="'+tdArr[1]+'" class="form-control" disabled>'
 			        	+ '</div>'
 			    	+ '</div>'
 				    + '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="simpleinput">기획제안자</label>' 
 			        	+ '<div class="col-md-10">'
 			            	+ '<input type="text" name="username" value="'+tdArr[2]+'" id="simpleinput" class="form-control" disabled>' 
 			        	+ '</div>'
 			    	+'</div>'
 			    	+ '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="example-textarea">책임자</label>'
 			        	+ '<div class="col-md-10">'
 			        	+ '<input type="text" name="position_code" value="'+tdArr[3]+'" id="simpleinput" class="form-control" disabled>'
 			        	+ '</div>'
 			    	+ '</div>'
 			    	+ '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="simpleinput">기획등록일</label>'
 			        	+ '<div class="col-md-10">'
 			            	+ '<input type="text" name="plan_regdate" value="'+tdArr[4]+'" id="simpleinput" class="form-control" disabled>'
 			        	+ '</div>'
 			    	+ '</div>'
 			    	+  '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="example-textarea">시작예정일</label>'
 			        	+'<div class="col-md-10">'
 			            	+ '<input type="text" name="plan_startdate" data-provide="datepicker" data-date-autoclose="true" value="'+tdArr[5]+'" id="simpleinput" class="form-control" disabled>'
 			        	+ '</div>'
 			    	+ '</div>' 
 			    	+  '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="example-textarea">종료예정일</label>'
 			        	+'<div class="col-md-10">'
 			            	+ '<input type="text" name="plan_enddate" data-provide="datepicker" data-date-autoclose="true" value="'+tdArr[6]+'" id="simpleinput" class="form-control" disabled>'
 			        	+ '</div>'
 			    	+ '</div>' 
 			    	+  '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="example-textarea">기획상태</label>'
 			        	+'<div class="col-md-10">'
 			            	+ '<input type="text" name="plan_state" value="'+tdArr[7]+'" id="simpleinput" class="form-control" disabled>'
 			        	+ '</div>'
 			    	+ '</div>' 
 			    	+  '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="example-textarea">기획목표</label>'
 			        	+'<div class="col-md-10">'
 			        		+ '<textarea name="plan_objective" class="form-control" rows="5" id="example-textarea" disabled>'+tdArr[8]+'</textarea>'
 			        	+ '</div>'
 			    	+ '</div>' 
 			    	+  '<div class="form-group row">'
 			        + '<label class="col-md-2 col-form-label" for="example-textarea">상세 기획안 파일</label>'
 			        	+'<div class="col-md-10">'
 			            	+ '<input type="text" name="plan_proposal" value="'+tdArr[9]+'" id="simpleinput" class="form-control" disabled>'
 			        	+ '</div>'
 			    	+ '</div>' 
 					+'</div>'
 				    );
   			var offset = $(".plandiv").offset();
            $('html, body').animate({scrollTop : offset.top}, 200); 
   			
		});
    </script>
    <div id="bodyappend"></div>
</body>
</html>