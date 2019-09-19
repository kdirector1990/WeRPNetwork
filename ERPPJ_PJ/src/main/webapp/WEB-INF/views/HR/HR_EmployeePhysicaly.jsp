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
	<link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <script type = "text/javascript">
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
				url : '${pageContext.request.contextPath}/HR_EmployeePhysicaly_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'POST',
				data : jsonData, 
				dataType : "json",
				contentType:"application/json;charset=UTF-8",
				success : function(list){
					
					$('#result').empty();
					
					
					
					for(var i = 0 ; i < list.length; i++){
					
						var usernames = list[i].username;
						var e_heights = list[i].e_height;
						var e_weights = list[i].e_weight;
						var e_left_sights = list[i].e_left_sight;
						var e_right_sights = list[i].e_right_sight;
						var e_color_blinds = list[i].e_color_blind;
						var e_blood_types = list[i].e_blood_type;
						var e_blood_presures = list[i].e_blood_presure;
						var e_medical_infos = list[i].e_medical_info;
						var e_veteran_types = list[i].e_veteran_type;
						var e_veteran_infos = list[i].e_veteran_info;
						var e_veteran_levels = list[i].e_veteran_level;
						var e_disability_types = list[i].e_disability_type;
						var e_disability_levels = list[i].e_disability_level;
						
					$('#result').append('<tr onclick="updatePHY('+usernames+');>'+                         	
							'<td>'+ usernames +'</td>'+
							'<td>'+ e_heights +'</td>'+
							'<td>'+ e_weights +'</td>'+
							'<td>'+ e_left_sights +'</td>'+
							'<td>'+ e_right_sights +'</td>'+
							'<td>'+ e_color_blinds +'</td>'+
							'<td>'+ e_blood_types +'</td>'+
							'<td>'+ e_blood_presures +'</td>'+
							'<td>'+ e_medical_infos +'</td>'+
							'<td>'+ e_veteran_types +'</td>'+
							'<td>'+ e_veteran_infos +'</td>'+
							'<td>'+ e_veteran_levels +'</td>'+
							'<td>'+ e_disability_types +'</td>'+
							'<td>'+ e_disability_levels +'</td>'+
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
	 
	 function updatePHY(code){
		 alert(code);
		  $.ajax({
	  			url: '/erp/HR_update_Phy?${_csrf.parameterName}=${_csrf.token }&username='+code,
	  			type: 'POST',
	  			dataTpye: 'json',
	  			success: function(data){
	  				alert("작동");
	  				var username = data.username;	  					  				
	  				var e_height = data.e_height;
	  				var e_weight = data.e_weight;
	  				var e_left_sight = data.e_left_sight;
	  				var e_right_sight = data.e_right_sight;
	  				var e_color_blind = data.e_color_blind;
	  				var e_blood_type = data.e_blood_type;
	  				var e_blood_presure = data.e_blood_presure;
	  				var e_medical_info = data.e_medical_info;
	  				var position_code = data.position_code;
	  				var rank_code = data.rank_code;
	  				var level_step = data.level_step;
	  				
	  				alert(username);
	  				alert(e_mailcode);
	  				alert(e_nfcCodeNFC);
	  				
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사정보</a></li>
                                            <li class="breadcrumb-item active">사원신체정보현황</li>
                                        </ol>
								</div>
								<h4 class="page-title">사원신체정보현황</h4>
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
												<td class="col-md-1 col-form-label">사원번호</td>
												<td class="col-md-2 input-group">
													<input type="text" class="form-control" name="username" id="username">
												</td>
												
												<th class="col-md-1 col-form-label">&nbsp;</th>
												
												<th class="col-md-1 col-form-label">사원명</th>
												<td class="col-md-2 input-group">
													<input type="text" class="form-control" name="e_name" id="e_name">
												</td>
												
												<th class="col-md-1 col-form-label">&nbsp;</th>
												
												<th class="col-md-1 col-form-label">부서</th>
												<td class="col-md-2 input-group">
													<input type="text" class="form-control" name="department_code" id="department_code">
												</td>								
												
											</tr>
											
											<tr class="form-group row">									
												
												<th class="col-md-1 col-form-label">직책</th>
												<td class="col-md-2 input-group">
													<input type="text" class="form-control" name="position_code" id="position_code">
												</td>
												
												<th class="col-md-1 col-form-label">&nbsp;</th>
												
												<th class="col-md-1 col-form-label">직급</th>
												<td class="col-md-2 input-group">
													<input type="text" class="form-control" name="rank_code" id="rank_code">
												</td>
												
												<th class="col-md-1 col-form-label"></th>
												<td><button type="button" class="btn btn-primary waves-effect waves-light" id = "search">검색</button></td>
											</tr>									
								</table>
								
                                        
                                  	</div>
                             </div>
		                   </div> 
                         </div>
                         
                      <div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">                                            
                                            <thead>
                                                <tr>
	                                             	<th>사원번호</th>
													<th>신장</th>
													<th>체중</th>
													<th>시력(좌)</th>
													<th>시력(우)</th>
													<th>색약</th>
													<th>혈액형</th>
													<th>혈압</th>
													<th>병력</th>
													<th>장애구분/등급</th>
													<th>장애인 등급</th>
													<th>보훈구분</th>
													<th>보훈관계</th>
													<th>보훈등급</th>
                                         		</tr>
                                      		</thead>
                                    		<tbody id = "result">
                                    		
                                      		</tbody>
                                        </table>
									</div>
								</div>
							</div>
						</div>
					</div>
               
               <!-- 페이지 내용 입력 공간 종료 -->



			<%@ include file="../footer.jsp" %>

		</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp" %>
	
    <%@ include file="../setting2.jsp" %>


	<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
	<div id = "bodyappend"></div>

</body>
</html>