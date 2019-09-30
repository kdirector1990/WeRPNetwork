<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
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
	 $(function(){
		$('#search').click(function(){
			$('#result').empty();
			
			var param = new Object();
			var jsonData;			
			
			param.username = $("#username").val();
			param.e_name = $("#e_name").val();
			param.department_code = $("#department_code").val();
			param.position_code = $("#position_code").val();
			param.rank_code = $("#rank_code").val();
					
			jsonData = JSON.stringify(param);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/HR_EmployeeFamily_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
					
					document.getElementById("searchTable").style.display="block";
					
					$('#result').empty();
					$('#bodyappend').empty();
					$('#resulttable').empty();
					
					$('#resulttable').append(
						'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">'+
							'<thead class="bg-primary text-white">'+
								'<tr>'+
									'<th>사원번호</th>'+
									'<th>성명</th>'+
									'<th>관계</th>'+
									'<th>동거여부</th>'+
									'<th>생년월일</th>'+
									'<th>음력/양력</th>'+												
								'</tr>'+
							'</thead>'+
							'<tbody id="result">'+
							'</tbody>'+
						'</table>');
					
					for(var i = 0 ; i < list.length; i++){
					
						var usernames = list[i].username;
						var f_names = list[i].f_name;
						var f_types = list[i].f_type;
						if(f_types == 1) {
							f_types = "동거";
						}
						if(f_types == 2) {
							f_types = "별거";
						}
						
						var f_cohabitations = list[i].f_cohabitation;
						
						var f_born = list[i].f_born;
						var pa = new Date(f_born);
    					var year = pa.getFullYear();
    					var month = (1+pa.getMonth());
    					var day = pa.getDate(); 
    					var fborn = year + "/" + month +"/"+day;
						
						var f_born_types = list[i].f_born_type;
						if(f_born_types == 1) {
							f_born_types = "음력";
						}
						if(f_born_types == 2) {
							f_born_types = "양력";
						}
						
					$('#result').append('<tr onclick="updateFAM('+usernames+');">'+                         	
							'<td>'+ usernames +'</td>'+
							'<td>'+ f_names +'</td>'+
							'<td>'+ f_types +'</td>'+
							'<td>'+ f_cohabitations +'</td>'+
							'<td>'+ fborn +'</td>'+
							'<td>'+ f_born_types +'</td>'+
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
	 
	 function updateFAM(code){		 
		  $.ajax({
	  			url: '/erp/HR_update_Fam?${_csrf.parameterName}=${_csrf.token }&username='+code,
	  			type: 'POST',
	  			dataTpye: 'json',
	  			success: function(data){
	  				
	  				var username = data.username;	  					  				
	  				var f_name = data.f_name;
	  				var f_type = data.f_type;
	  				var f_cohabitation = data.f_cohabitation;
	  				var f_born = data.f_born;
	  				var f_born_type = data.f_born_type;
	  				
	  				$('#result2').empty();	  					  				
	  				
	  				$("#result2").append('<input type="hidden" name="username" value="'+username+'">'
  						+'<div class="form-group row">'
							+'<label class="col-md-1 col-form-label" for="simpleinput">성명</label>'
								+'<div class="col-md-3">'
									+'<input type="text" class="form-control" name="f_name" value="'+f_name+'">'
								+'</div>'							
							+'<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">관계</label>'
							+'<div class="col-md-3">'
								+'<input type="text" class="form-control" name="f_type" value="'+f_type+'">'
							+'</div>'							
						+'</div>'
						+'<div class="form-group row">'
							+'<label class="col-md-1 col-form-label" for="simpleinput">동거여부</label>'
							+'<div class="col-md-3 col-form-label">'
	                            +'<div class="custom-control custom-radio custom-control-inline mb-2">'
	                                +'<input type="radio" id="customRadioInline9" name="f_cohabitation" class="custom-control-input" value="1" checked>'
	                                +'<label class="custom-control-label" for="customRadioInline9">유</label>'
	                            +'</div>'
	                            +'<div class="custom-control custom-radio custom-control-inline mb-2">'
	                                +'<input type="radio" id="customRadioInline10" name="f_cohabitation" class="custom-control-input" value="2">'
	                                +'<label class="custom-control-label" for="customRadioInline10">무</label>'
	                            +'</div>'
	                        +'</div>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">생년원일</label>'
							+'<div class="col-md-1">'
								+'<input type="date" class="form-control" name="f_born" value="'+f_born+'">'
							+'</div>'							
							+'<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">음력/양력</label>'
								+'<div class="col-md-3 col-form-label">'
	                                +'<div class="custom-control custom-radio custom-control-inline mb-2">'
	                                    +'<input type="radio" id="customRadioInline9" name="f_born_type" class="custom-control-input" value="1" checked>'
	                                    +'<label class="custom-control-label" for="customRadioInline9">음력</label>'
	                                +'</div>'
	                                +'<div class="custom-control custom-radio custom-control-inline mb-2">'
	                                    +'<input type="radio" id="customRadioInline10" name="f_born_type" class="custom-control-input" value="2">'
	                                    +'<label class="custom-control-label" for="customRadioInline10">양력</label>'
	                                +'</div>'
	                            +'</div>'
						+'</div>'						
						+'<div class="form-group text-right mb-0">'
							+'<button onclick="HR_modifyFamilyPro();" type="button" class="btn btn-outline-primary waves-effect waves-light">수정</button>'
						+'</div>'
	  				);
	  			},
	  			 
	  			error : function(){
	  				alert("전산 오류로 인하여 수정에 실패하였습니다.");
	  			}
	  		}); 	 
	 }
	 
	 function HR_modifyFamilyPro(){
     	var param = $("#updateFAM").serializeArray();
 		
 		$.ajax({
 			url: '/erp/HR_modifyFamilyPro?${_csrf.parameterName}=${_csrf.token }',
 			type: 'POST',
 			data : param,
 			dataTpye: 'json',
 			success: function(updateCnt){
 				if(updateCnt != 0){update
 					$('#result2').empty();
 					document.getElementById("update").style.display="none";
 					alert("수정이 완료되었습니다.");    					
 				}
 			},
 			error : function(){
 				alert("오류로 인하여 수정하지 못했습니다.");
 			}
 		});
     }
	 
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
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">WeRP</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사정보</a></li>
										<li class="breadcrumb-item active">사원가족정보현황</li>
									</ol>
								</div>
								<h4 class="page-title">사원가족정보현황</h4>
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
											<th class="col-md-1 col-form-label">사원번호</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="username" id="username">
											</td>

											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">사원명</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="e_name" id="e_name"></td>

											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">부서</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="department_code"
												id="department_code"></td>

										</tr>

										<tr class="form-group row">

											<th class="col-md-1 col-form-label">직책</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="position_code" id="position_code">
											</td>

											<th class="col-md-1 col-form-label">&nbsp;</th>

											<th class="col-md-1 col-form-label">직급</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="rank_code" id="rank_code">
											</td>

											<th class="col-md-1 col-form-label"></th>
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

					<div class="row" id="searchTable">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive" style="margin-bottom: 0px;">
									<div id="resulttable">
										<!-- 조회 결과 출력 위치  -->
									</div>
								</div>
							</div>
							
							<div class="card" id="selectTable">							
								<div class="card-body">
								<form id="updateFAM">
									<div id="result2">
										<!-- 상세 페이지 출력 위치 -->
									</div>
								</form>
								</div>
							
							</div>
							
						</div>
					</div>
					</div>
				</div>

				<!-- 페이지 내용 입력 공간 종료 -->


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