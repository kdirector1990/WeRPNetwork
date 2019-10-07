<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>

<style type="text/css">
#update {
	display: none;
}
#selectASResult{
	display: none;
}
</style>

<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
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
        
        function SelectAS(){
        	/* var param = $("#selectAS").serializeArray(); */
        	
        	var param2 = new Object();
        	var jsonData;
        	
        	param2.cas_state = $("#cas_state").val();
        	
        	jsonData = JSON.stringify(param2);
        	 $.ajax({
        		url : '${pageContext.request.contextPath}/CT_select_as2?${_csrf.parameterName}=${_csrf.token }',
        		type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(data){

					document.getElementById("selectASResult").style.display="block";
					$('#result').empty();
					$('#bodyappend').empty();
					document.getElementById("update").style.display="none";
					$('#result2').empty();
      				
      				for(var i = 0; i < data.length; i++){
      					var cas_code = data[i].cas_code;
      					var department_code = data[i].department_code;
      					var department_name = data[i].department_name;
      					var username = data[i].username;
      					var cas_title = data[i].cas_title; 
      					var date = data[i].cas_date;
      					
      					var pa = new Date(date);
      					var year = pa.getFullYear();
      					var month = (1+pa.getMonth());
      					if(month < 10){
    						month = "0" +month;
    					}
    					var day = pa.getDate();
    					if(day < 10){
    						day = "0" +day;
    					}
    					
    					var hours = pa.getHours();
    					var Minutes = pa.getMinutes();
    					var Second = pa.getSeconds();
    					
    					var time = hours+":"+Minutes+":"+Second;
    					
    					var cas_date = year + "-" + month + "-" +day;
    					
    					var tr = '<tr class="spoat" onclick="updateAS(\''+cas_code+'\');"><td>'+cas_code+'</td><td>'+department_name+'</td><td>'+username+'</td><td>'+cas_title+'</td><td>'+cas_date+' '+time+'</td></tr>';
      					
    					$('#result').append(tr);
    					
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
   						        '<script src="/erp/resources/assets/libs/jszip/jszip.min.js"/>' +
   						     	'<script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"/>' +
   						        '<script src="/erp/resources/assets/js/pages/datatables.init.js"/>' 	
   							);
   						 searchCount = searchCount + 1;
      					}
      				}
      			},
      			error : function(){
      				alert("전산 오류로 인하여 폐기에 실패하였습니다.");
      			}
         	});
        }
        
        function updateAS(code){
	         $.ajax({
	  			url: '/erp/CT_update_ASW?${_csrf.parameterName}=${_csrf.token }&cas_code='+code,
	  			type: 'POST',
	  			dataTpye: 'json',
	  			success: function(data){
	  				$('#result2').empty();
	  				document.getElementById("update").style.display="block";
	  				
	  				var cas_code = data.cas_code;
	  				var department_code = data.department_code;
	  				var username = data.username;
	  				var cas_title = data.cas_title;
	  				var cas_content = data.cas_content;
	  				var cas_uri = data.cas_uri;
	  				var cas_result = data.cas_result;
	  				var cas_state = data.cas_state;
	  				
	  				if(isNaN != true){
	  					$('#result2').append('<input type="hidden" name="cas_code" value="'+cas_code+'"><div class="form-group row">'
	  		  					+ '<label class="col-md-2 col-form-label" for="example-email">AS코드</label>'        
	  		  						+ '<div class="col-md-10">'
	  		  				    		+ '<input type="text" name="cas_code" value="'+cas_code+'" class="form-control" disabled>' 
	  		  				        +'</div>'
	  		  				    +'</div>'
	  		  				    +'<div class="form-group row">'
	  		  			        +'<label class="col-md-2 col-form-label" for="example-email">사원번호</label>'
	  		  			        	+ '<div class="col-md-10">'
	  		  			            	+ '<input type="text" name="username" value="'+username+'" class="form-control" disabled>'
	  		  			        	+ '</div>'
	  		  			    	+ '</div>'
	  		  				    + '<div class="form-group row">'
	  		  			        + '<label class="col-md-2 col-form-label" for="simpleinput">제목</label>' 
	  		  			        	+ '<div class="col-md-10">'
	  		  			            	+ '<input type="text" name="cas_title" value="'+cas_title+'" id="simpleinput" class="form-control" disabled>' 
	  		  			        	+ '</div>'
	  		  			    	+'</div>'
	  		  			    	+ '<div class="form-group row">'
	  		  			        + '<label class="col-md-2 col-form-label" for="example-textarea">내용</label>'
	  		  			        	+ '<div class="col-md-10">'
	  		  			            	+ '<textarea name="cas_content" class="form-control" rows="5" id="example-textarea" disabled>'+cas_content+'</textarea>'
	  		  			        	+ '</div>'
	  		  			    	+ '</div>'
	  		  			    	+ '<div class="form-group row">'
	  		  			        + '<label class="col-md-2 col-form-label" for="simpleinput">URL</label>'
	  		  			        	+ '<div class="col-md-10">'
	  		  			            	+ '<a href="'+cas_uri+'">'+cas_uri+'</a>'
	  		  			        	+ '</div>'
	  		  			    	+ '</div>'
	  		  			    	+  '<div class="form-group row">'
	  		  			        + '<label class="col-md-2 col-form-label" for="example-textarea">AS 처리결과</label>'
	  		  			        	+'<div class="col-md-10">'
	  		  			            	+ '<textarea name="cas_result" class="form-control" rows="5" id="example-textarea">'+cas_result+'</textarea>'
	  		  			        	+ '</div>'
	  		  			    	+ '</div>' 
	  		  			    	+ '<div class="form-group text-right mb-0">'
	  		  						+ '<button onclick="updateState();" type="button" class="btn btn-outline-primary waves-effect waves-light">처리시작</button>'
	  		  						+ '<button onclick="completeAS();" type="button" class="btn btn-outline-primary waves-effect waves-light">처리완료</button>'
	  		  					+ '</div>'
	  		  				    );
	
	  				}
	  					  				
	  			},
	  			error : function(){
	  				alert("전산 오류로 인하여 수정에 실패하였습니다.");
	  			}
	  		});
        }
        
        function updateState(){
        	var param = $("#updateAST").serializeArray();
    		$.ajax({
    			url: '/erp/CT_AS_Update',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(updateCnt){
    				if(updateCnt != 0){
    					$('#result2').empty();
    					document.getElementById("update").style.display="none";
    					alert("수정이 완료되었습니다.");
    					window.location.href="http://smueoot.dlinkddns.com:8087/erp/CT_as_manage";
    				}
    			},
    			error : function(){
    				alert("전산 오류로 인하여 AS처리중으로 수정하지 못했습니다.");
    			}
    		});
        }
        
        function completeAS(){
        	var param = $("#updateAST").serializeArray();
    		$.ajax({
    			url: '/erp/CT_AS_Complete',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(updateCnt){
    				if(updateCnt != 0){
    					$('#result2').empty();
    					document.getElementById("update").style.display="none";
    					alert("AS처리가 완료되었습니다.");
    					window.location.href="http://smueoot.dlinkddns.com:8087/erp/CT_as_manage";
    				}
    			},
    			error : function(){
    				alert("전산 오류로 인하여 AS완료에 실패하였습니다.");
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
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">WeRP</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">전산</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">A/S관리</a></li>
										<li class="breadcrumb-item active">A/S요청 관리</li>
									</ol>
								</div>
								<h4 class="page-title">A/S요청 관리</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<table class="col-12">
										<tr class="form-group row">
											<td class="col-md-1 col-form-label">출력구분</td>
											<td class="col-md-4 input-group"><select
												class=" form-control" id="cas_state" name="cas_state"
												onchange="SelectAS(this.value);">
													<option value="" selected disabled></option>
													<option value="1">미처리</option>
													<option value="2">처리중</option>
													<option value="3">완료</option>
											</select></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>


				<div id="selectASResult">
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap">
										<thead class="bg-primary text-white">
											<tr>
												<th>AS코드</th>
												<th>부서명</th>
												<th>사원번호</th>
												<th>제목</th>
												<th>요청시간</th>
											</tr>
										</thead>
										<tbody id="result">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

					<div id="update">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<div class="table-responsive" style="margin: 15px 0px 50px">
										<form id="updateAST" method="post" class="form-horizontal">
											<input type="hidden" name="${_csrf.parameterName }"
												value="${_csrf.token }">
											<div id="result2" class="card-body">
												<!-- 상세 페이지 출력 위치 -->
											</div>
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
	</div>
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