<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<link href="/erp/resources/assets/libs/dropify/dropify.min.css"
	rel="stylesheet" type="text/css" />

<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	
        	    	
        	
        	function enterinsert() {
       			
       			$(".chit-table-bordered-primary tbody").append('<tr>' +
       					'<td><input type="text" onfocus = "focuse(this.name);" name = "f_name'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_type'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_cohabitation'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_born'+count+'" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_born_type'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                       '</tr>');
                    count = count + 1;
          		
        	}
        	
        	function enterdelete() {
       		
        		
       			$(".chit-table-bordered-primary tbody").empty('<tr>' +
       					'<td><input type="text" onfocus = "focuse(this.name);" name = "f_name'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_type'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_cohabitation'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_born'+count+'" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "f_born_type'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>'+
                       '</tr>');
                    count = 0;
          		
    
        	}
        	
        	function HR_userChk() {
        		// id값 미입력 후 중복확인 버튼 클릭시
        		if(!document.inputPhysicaly.username.value) {
        			alert("사원번호를 입력하세요 !");
        			document.inputPhysicaly.username.focus();
        			return false;
        		}
        		
        		/*
        		 * window.open("파일명", "윈도우명", "창속성");
        		 * url="주소?속성=" + 속성값;  -> get방식
        		 */
        		
        		var url = "HR_userChk?username=" + document.inputPhysicaly.username.value;
        		window.open(url, "confirm", "menubar=no, width=300, height=200");
        		// -> confirmId.do 서블릿 지정
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
										<li class="breadcrumb-item active">인사정보등록</li>
									</ol>
								</div>
								<h4 class="page-title">인사정보등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="employee-tab" data-toggle="tab" href="#employee"
											role="tab" aria-controls="employee" aria-selected="false">
												<span class="d-block d-sm-none"><i
													class="fa fa-employee"></i></span> <span class="d-none d-sm-block">사원정보</span>
										</a></li>
										
									</ul>

									<div class="tab-content">
										<!-- 인적정보 -->
										<div class="tab-pane show active" id="employee"
											role="tabpanel" aria-labelledby="employee-tab">
											<div class="col-sm-12">
												<form action="HR_inputFoundation?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal"
													id="foundation" method="post" enctype="multipart/form-data">
													<input type="hidden" name="${_csrf.parameterName}"
														value="${_csrf.token}">

													<div class="card-body table-responsive">
														<h4 class="header-title">기초 정보</h4>
														<h4 class="header-title">&nbsp;</h4>
														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">사진등록<span class="text-danger">*</span></label>
																<div class="col-md-4">
																	<input type="file" class="dropify" name="e_picture" />
																</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<div class="col-md-6">
																<div class="form-group row">
																	<label class="col-lg-2 col-form-label"
																		for="simpleinput">성명<span class="text-danger">*</span></label>
																	<div class="col-lg-8">
																		<input type="text" class="form-control" name="e_name" id = "e_name"
																			placeholder="한글이름">
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-md-2 col-form-label"
																		for="simpleinput">성별<span class="text-danger">*</span></label>
																	<div class="col-md-3  col-form-label">
																		<div>
																			<div
																				class="custom-control custom-radio custom-control-inline mb-2">
																				<input type="radio" id="customRadioInline1"
																					name="e_gender" class="custom-control-input"
																					value="1" checked> <label
																					class="custom-control-label"
																					for="customRadioInline1" id="g_male">남성</label>
																			</div>
																			<div
																				class="custom-control custom-radio custom-control-inline mb-2">
																				<input type="radio" id="customRadioInline2"
																					name="e_gender" class="custom-control-input"
																					value="2"> <label
																					class="custom-control-label"
																					for="customRadioInline2" id="g_female">여성</label>
																			</div>
																		</div>
																	</div>
																	<label class="col-md-2 col-form-label"
																		for="simpleinput">내/외국인<span
																		class="text-danger">*</span></label>
																	<div class="col-md-4  col-form-label">
																		<div>
																			<div
																				class="custom-control custom-radio custom-control-inline mb-2">
																				<input type="radio" id="customRadioInline7"
																					name="e_type" class="custom-control-input"
																					value="local" checked> <label
																					class="custom-control-label"
																					for="customRadioInline7" id = "local">내국인</label>
																			</div>
																			<div
																				class="custom-control custom-radio custom-control-inline mb-2">
																				<input type="radio" id="customRadioInline8"
																					name="e_type" class="custom-control-input"
																					value="foreign"> <label
																					class="custom-control-label"
																					for="customRadioInline8" id = "foreign">외국인</label>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-md-2 col-form-label"
																		for="simpleinput">생년월일<span
																		class="text-danger">*</span></label>
																	<div class="col-md-8">
																		<input type="text" class="form-control" name="e_code"
																			placeholder="생년월일" size="13">
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-md-2 col-form-label"
																		for="simpleinput">전화번호<span
																		class="text-danger">*</span></label>
																	<div class="col-md-8">
																		<input type="text" class="form-control" name="e_hp"
																			placeholder="전화번호" size="13">
																	</div>
																</div>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">주소<span
																class="text-danger">*</span></label>
															<div class="col-md-10">
																<input type="text" class="form-control"
																	name="e_address" placeholder="주소" >
															</div>															
														</div>
														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">우편번호<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<input type="text" class="form-control"
																	name="e_mailcode" placeholder="우편번호">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">nfc코드<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<input type="text" class="form-control"
																	name="e_nfcCodeNFC" placeholder="nfc코드">
															</div>
														</div>

														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">부서<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<select class="form-control select2"
																	name="department_code" id = "department_code" onchange="">
																		<option value="">부서를 선택하세요</option>
																	<c:forEach var="dep" items="${dep}">
																		<option value="${dep.department_code}">${dep.department_name}</option>
																	</c:forEach>
																</select>
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">직책<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<select class="form-control select2"
																	name="position_code" id = "position_code" onchange="">
																	<option value="">직책을 선택하세요</option>
																	<c:forEach var="poi" items="${poi}">
																		<option value="${poi.position_code}">${poi.position_name}</option>
																	</c:forEach>
																</select>
															</div>
														</div>

														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">직급<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<select class="form-control select2" name="rank_code" id = "rank_code"
																	onchange="">
																	<option value="">직급을 선택하세요</option>
																	<c:forEach var="rank" items="${rank}">
																		<option value="${rank.rank_code}">${rank.rank_name}(${rank.rank_code})</option>
																	</c:forEach>
																</select>
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">호봉<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<input type="text" class="form-control" id = "level_step"
																	name="level_step" placeholder="호봉">
															</div>
														</div>
														<div class="form-group text-right mb-0">
															<button
																class="btn btn-primary waves-effect waves-light mr-1" id = "submit"
																type="submit">Submit</button>
															<button type="reset"
																class="btn btn-secondary waves-effect">Cancel</button>
														</div>
													</div>
												</form>

												
										</div>
									</div>

									<!--  -->

								</div>
							</div>
							<!-- end container-fluid -->

						</div>
						<!-- end row -->


					</div>

					<!-- ============================================================== -->
					<!-- End Page content -->
					<!-- ============================================================== -->

				</div>
				<!-- END wrapper -->


			</div>
		</div>
	</div>
	<!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

		<!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
	<!-- Plugins js -->
	<script src="/erp/resources/assets/libs/dropify/dropify.min.js"></script>

	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-fileuploads.init.js"></script>

</body>
</html>