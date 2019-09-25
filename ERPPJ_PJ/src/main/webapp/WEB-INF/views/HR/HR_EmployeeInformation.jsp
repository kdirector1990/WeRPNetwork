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
    var searchCount = 1;
	 $(function(){
		$('#search').click(function(){
			var param = new Object();
			var jsonData;
			
						
			param.username = $("#username").val();
			param.e_name = $("#e_name").val();
			param.department_code = $("#department_code").val();
			param.position_code = $("#position_code").val();
			param.rank_code = $("#rank_code").val();
					
			jsonData = JSON.stringify(param);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/HR_EmployeeInformation_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
					
					$('#result').empty();
					$('#bodyappend').empty();
					
					
					
					for(var i = 0 ; i < list.length; i++){
					
						var usernames = list[i].username;
						var e_names = list[i].e_name;
						var e_genders = list[i].e_gender;						
						var e_codes = list[i].e_code;
						var e_hps = list[i].e_hp;
						var e_mailcodes = list[i].e_mailcode;
						var e_addresse = list[i].e_address;
						var e_types = list[i].e_type;
						var e_nfcCodeNFC = list[i].e_nfcCodeNFC;
						var department_codes = list[i].department_code;
						var position_codes = list[i].position_code;
						var rank_codes = list[i].rank_code;
						var level_steps = list[i].level_step;
						var start_dates = list[i].start_date;
						var pa = new Date(start_dates);
						var year = pa.getFullYear();
						var month = (1+pa.getMonth());
						var day = pa.getDate(); 
						var start_datess = year + "/" + month +"/"+day;
						
					$('#result').append('<tr onclick="updateINFO('+usernames+');">'+                         	
							'<td>'+ usernames +'</td>'+
							'<td>'+ e_names +'</td>'+
							'<td>'+ e_genders +'</td>'+
							'<td>'+ e_codes +'</td>'+
							'<td>'+ e_hps +'</td>'+
							'<td>'+ e_mailcodes +'</td>'+
							'<td>'+ e_addresse +'</td>'+
							'<td>'+ e_types +'</td>'+
							'<td>'+ e_nfcCodeNFC +'</td>'+
							'<td>'+ department_codes +'</td>'+
							'<td>'+ position_codes +'</td>'+
							'<td>'+ rank_codes +'</td>'+
							'<td>'+ level_steps +'</td>'+
							'<td>'+ start_datess +'</td>'+							
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
	 
	 function updateINFO(code){
		  $.ajax({
	  			url: '/erp/HR_update_Fou?${_csrf.parameterName}=${_csrf.token }&username='+code,
	  			type: 'POST',
	  			dataTpye: 'json',
	  			success: function(data){
	  				var username = data.username;	  					  				
	  				var e_name = data.e_name;
	  				var e_gender = data.e_gender;
	  				var e_type = data.e_type;
	  				var e_code = data.e_code;
	  				var e_hp = data.e_hp;
	  				var e_mailcode = data.e_mailcode;
	  				var e_nfcCodeNFC = data.e_nfcCodeNFC
	  				var department_code = data.department_code;
	  				var position_code = data.position_code;
	  				var rank_code = data.rank_code;
	  				var level_step = data.level_step;
	  				
	  				$("#result2").append('<input type="hidden" name="username" value="'+username+'">'
	  					+'<div class="form-group row">'
	  						+ '<label class="col-lg-2 col-form-label" for="simpleinput">사원명<span class="text-danger">*</span></label>'        
	  							+'<div class="col-lg-8">'
	  				    			+'<input type="text" name="e_name" value="'+e_name+'" class="form-control" readonly>' 
	  				        	+'</div>'
	  				    +'</div>'
	  				  	+'<div class="form-group row">'	
							+'<label class="col-md-2 col-form-label" for="simpleinput">성별<span class="text-danger">*</span></label>'
						+'<div class="col-md-3  col-form-label">'
                   	    	+'<div class="custom-control custom-radio custom-control-inline mb-2">'
                  	        	+'<input type="radio" id="customRadioInline1" name="e_gender" class="custom-control-input" value="1" checked>'
                 	         	+'<label class="custom-control-label" for="customRadioInline1">남성</label>'
                      		+'</div>'
                           +'<div class="custom-control custom-radio custom-control-inline mb-2">'
                               +'<input type="radio" id="customRadioInline2" name="e_gender" class="custom-control-input" value="2">'
                               +'<label class="custom-control-label" for="customRadioInline2">여성</label>'
                           +'</div>'
                   		+'</div>'
                   		+'</div>'
                   		+'<div class="form-group row">'
                   			+'<label class="col-md-2 col-form-label" for="simpleinput">내/외국인<span class="text-danger">*</span></label>'
								+'<div class="col-md-4  col-form-label">'
									+'<div>'
                             			+'<div class="custom-control custom-radio custom-control-inline mb-2">'
                                 			+'<input type="radio" id="customRadioInline7" name="e_type" class="custom-control-input" value="local" checked>'
                                 			+'<label class="custom-control-label" for="customRadioInline7">내국인</label>'
                             			+'</div>'
	                             		+'<div class="custom-control custom-radio custom-control-inline mb-2">'
	                                 		+'<input type="radio" id="customRadioInline8" name="e_type" class="custom-control-input" value="foreign">'
	                                 		+'<label class="custom-control-label" for="customRadioInline8">외국인</label>'                                            
	                             		+'</div>'
                         			+'</div>'
							+'</div>'
						+ '</div>'
						+'<div class="form-group row">'
							+'<label class="col-md-2 col-form-label" for="simpleinput">주민등록번호<span class="text-danger">*</span></label>'
							+'<div class="col-md-8">'
								+'<input type="text" class="form-control" name="e_code" value="'+e_code+'" size="13">'
							+'</div>'
						+'</div>'
						+'<div class="form-group row">'	
							+'<label class="col-md-2 col-form-label" for="simpleinput">전화번호<span class="text-danger">*</span></label>'
							+'<div class="col-md-8">'
								+'<input type="text" class="form-control" name="e_hp" value="'+e_hp+'" size="13">'
							+'</div>'
						+'</div>'
						+'<div class="form-group row">'
							+'<label class="col-md-1 col-form-label" for="simpleinput">주민등록주소<span class="text-danger">*</span></label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" name="e_address1" placeholder="주민등록주소" size="13">'
							+'</div>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">상세주소<span class="text-danger">*</span></label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" name="e_address2" placeholder="상세주소" size="13">'
							+'</div>'
						+'</div>'
						+'<div class="form-group row">'
						+'<label class="col-md-1 col-form-label" for="simpleinput">우편번호<span class="text-danger">*</span></label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" name="e_mailcode" value="'+e_mailcode+'">'
							+'</div>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>'
							+'<label class="col-md-1 col-form-label" for="simpleinput">출입카드No.<span class="text-danger">*</span></label>' 
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" name="e_nfcCodeNFC" value="'+e_nfcCodeNFC+'">'
							+'</div>'				
						+'</div>'
						+'<div class="form-group row">'
						+'<label class="col-md-1 col-form-label" for="simpleinput">부서<span class="text-danger">*</span></label>'
						+'<div class="col-md-4">'
							+'<select class="form-control select2" name="department_code" onchange="">'
								+'<c:forEach var="dep" items="${dep}">'
								+'<option value="${dep.department_code}">${dep.department_name}</option>'	
								+'</c:forEach>'																																							
							+'</select>'
						+'</div>'
						+'<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>'
						+'<label class="col-md-1 col-form-label" for="simpleinput">직책<span class="text-danger">*</span></label>'
							+'<div class="col-md-4">'
								+'<select class="form-control select2" name="position_code" onchange="">'
									+'<c:forEach var="poi" items="${poi}">'
									+'<option value="${poi.position_code}">${poi.position_code}</option>'	
									+'</c:forEach>'																							
								+'</select>'
							+'</div>'																
						+'</div>'
						+'<div class="form-group row">'
						+'<label class="col-md-1 col-form-label" for="simpleinput">직급<span class="text-danger">*</span></label>'
							+'<div class="col-md-4">'
								+'<select class="form-control select2" name="rank_code" onchange="">'
									+'<c:forEach var="rank" items="${rank}">'
									+'<option value="${rank.rank_code}">${rank.rank_code}</option>'	
									+'</c:forEach>'																							
								+'</select>'
							+'</div>'
						+'<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>'
						+'<label class="col-md-1 col-form-label" for="simpleinput">호봉<span class="text-danger">*</span></label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" name="level_step" value="'+level_step+'">'
							+'</div>'																
						+'</div>'
						+'<div class="form-group text-right mb-0">'
							+'<button onclick="HR_modifyFoundationPro();" type="button" class="btn btn-outline-primary waves-effect waves-light">처리시작</button>'
						+'</div>'
	  				);
	  			},
	  			 
	  			error : function(){
	  				alert("전산 오류로 인하여 수정에 실패하였습니다.");
	  			}
	  		}); 	 
	 }
	 
	 function HR_modifyFoundationPro(){
     	var param = $("#updateFoundation").serializeArray();
 		alert(JSON.stringify(param));
 		$.ajax({
 			url: '/erp/HR_modifyFoundationPro',
 			type: 'POST',
 			data : param,
 			dataTpye: 'json',
 			success: function(updateCnt){
 				if(updateCnt != 0){
 					$('#result2').empty();
 					document.getElementById("update").style.display="none";
 					alert("수정이 완료되었습니다.");    					
 				}
 			},
 			error : function(){
 				alert("전산 오류로 인하여 AS처리중으로 수정하지 못했습니다.");
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
											href="javascript: void(0);">Codefox</a></li>
										<li class="breadcrumb-item active">Dashboard</li>
									</ol>
								</div>
								<h4 class="page-title">인사정보현황</h4>
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
											<td class="col-md-1 col-form-label">사원번호</td>
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
											<td><button type="button"
													class="btn btn-primary waves-effect waves-light"
													id="search">검색</button></td>
										</tr>
									</table>
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
											id="foundation-tab" data-toggle="tab" href="#foundation"
											role="tab" aria-controls="foundation" aria-selected="true">
												<span class="d-block d-sm-none"><i
													class="fa fa-study"></i></span> <span class="d-none d-sm-block">사원정보</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 잔액 -->
										<div class="tab-pane show active" id="foundation"
											role="tabpanel" aria-labelledby="foundation-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body">
														<table id="datatable"
															class="table table-striped table-bordered dt-responsive nowrap">

															<thead>
																<tr>
																	<th>사원번호</th>
																	<th>사원명</th>
																	<th>성별</th>
																	<th>주민번호</th>
																	<th>연락처</th>
																	<th>우편번호</th>
																	<th>주소</th>
																	<th>내/외국인구별</th>
																	<th>nfc코드</th>
																	<th>부서</th>
																	<th>직급</th>
																	<th>직책</th>
																	<th>호봉</th>
																	<th>입사일</th>
																</tr>
															</thead>

															<tbody id="result">

															</tbody>
														</table>

														<div align="right">
															<br>
														</div>

														<div class="form-group text-right mb-0">
															<button
																class="btn btn-primary waves-effect waves-light mr-1"
																type="button" onclick="">수정</button>
															<button type="reset"
																class="btn btn-secondary waves-effect" type="button"
																onclick="">삭제</button>
														</div>
													</div>
												</div>
											</div>

											<div id="update">
												<div class="col-sm-12">
													<div class="card">
														<div class="card-body">
															<div class="table-responsive"
																style="margin: 15px 0px 50px">
																<form id="updateFoundation" method="post"
																	class="form-horizontal">
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




									</div>
								</div>
							</div>
						</div>
					</div>
					<%@ include file="../footer.jsp"%>
				</div>
			</div>
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