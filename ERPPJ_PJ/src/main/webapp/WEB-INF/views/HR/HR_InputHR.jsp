<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<link href="/erp/resources/assets/libs/dropify/dropify.min.css"
	rel="stylesheet" type="text/css" />
<!-- Table datatable css -->
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
	href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css"
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
										<!-- <li class="nav-item"><a class="nav-link"
											id="presidency-tab" data-toggle="tab" href="#presidency"
											role="tab" aria-controls="presidency" aria-selected="true">
												<span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">재직정보</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="message-tab"
											data-toggle="tab" href="#message" role="tab"
											aria-controls="message" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">급여정보</span>
										</a></li> -->
									</ul>

									<div class="tab-content">
										<!-- 인적정보 -->
										<div class="tab-pane show active" id="employee"
											role="tabpanel" aria-labelledby="employee-tab">
											<div class="col-sm-12">
												<form action="HR_inputFoundation" class="form-horizontal"
													id="foundation" method="post">
													<input type="hidden" name="${_csrf.parameterName}"
														value="${_csrf.token}">

													<div class="card-body table-responsive">
														<h4 class="header-title">기초 정보</h4>
														<h4 class="header-title">&nbsp;</h4>
														<div class="form-group row">
															<!-- <label class="col-md-1 col-form-label" for="simpleinput">사진등록<span class="text-danger">*</span></label>
																<div class="col-md-4">
																	<input type="file" class="dropify" name="e_picture"/>
																</div> -->
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
																					for="customRadioInline1" id = "g_male">남성</label>
																			</div>
																			<div
																				class="custom-control custom-radio custom-control-inline mb-2">
																				<input type="radio" id="customRadioInline2"
																					name="e_gender" class="custom-control-input"
																					value="2"> <label
																					class="custom-control-label"
																					for="customRadioInline2" id = "g_female">여성</label>
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
																		for="simpleinput">주민등록번호<span
																		class="text-danger">*</span></label>
																	<div class="col-md-8">
																		<input type="text" class="form-control" name="e_code"
																			placeholder="주민등록번호" size="13">
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
															<label class="col-md-1 col-form-label" for="simpleinput">주민등록주소<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<input type="text" class="form-control"
																	name="e_address1" placeholder="주민등록주소" size="13">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">상세주소<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<input type="text" class="form-control"
																	name="e_address2" placeholder="상세주소" size="13">
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

												<%-- <form action="HR_inputPhysical" class="form-horizontal"
													id="physical" name="inputPhysicaly" method="post">
													<input type="hidden" name="${_csrf.parameterName }"
														value="${_csrf.token }"> <input type="hidden"
														name="hiddenId" value="0">
													<div class="card-body table-responsive">
														<h4 class="header-title">신체 정보</h4>
														<h4 class="header-title">&nbsp;</h4>

														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">신장</label>
															<div class="col-md-3">
																<input type="text" class="form-control" name="e_height"
																	placeholder="신장">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">cm</label>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">체중</label>
															<div class="col-md-3">
																<input type="text" class="form-control" name="e_weight"
																	placeholder="체중">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">kg</label>
														</div>
														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">시력(좌)</label>
															<div class="col-md-1">
																<input type="text" class="form-control"
																	name="e_left_sight" placeholder="시력(좌)">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">시력(우)</label>
															<div class="col-md-1">
																<input type="text" class="form-control"
																	name="e_right_sight" placeholder="시력(우)">
															</div>

															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">색약</label>
															<div class="col-md-3 col-form-label">
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline9"
																		name="e_color_blind" class="custom-control-input"
																		value="blind" checked> <label
																		class="custom-control-label" for="customRadioInline9">유</label>
																</div>
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline10"
																		name="e_color_blind" class="custom-control-input"
																		value="common"> <label
																		class="custom-control-label" for="customRadioInline10">무</label>
																</div>
															</div>
														</div>


														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">혈액형</label>
															<div class="col-md-3 col-form-label">
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline11"
																		name="e_blood_type" class="custom-control-input"
																		value="a" checked> <label
																		class="custom-control-label" for="customRadioInline11">A</label>
																</div>
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline12"
																		name="e_blood_type" class="custom-control-input"
																		value="b"> <label class="custom-control-label"
																		for="customRadioInline12">B</label>
																</div>
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline13"
																		name="e_blood_type" class="custom-control-input"
																		value="ab" checked> <label
																		class="custom-control-label" for="customRadioInline13">AB</label>
																</div>
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline14"
																		name="e_blood_type" class="custom-control-input"
																		value="o"> <label class="custom-control-label"
																		for="customRadioInline14">O</label>
																</div>
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">혈압</label>
															<div class="col-md-1">
																<input type="text" class="form-control"
																	name="e_blood_presure1" placeholder="최저">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">mmHg
																~</label>
															<div class="col-md-1">
																<input type="text" class="form-control"
																	name="e_blood_presure2" placeholder="최고">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">mmHg</label>
														</div>

														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">장애
																구분/등급<span class="text-danger">*</span>
															</label>
															<div class="col-md-3 col-form-label">
																<div>
																	<div
																		class="custom-control custom-radio custom-control-inline mb-2">
																		<input type="radio" id="customRadioInline3"
																			name="e_disability_type" class="custom-control-input"
																			value="1" checked> <label
																			class="custom-control-label" for="customRadioInline3">비해당</label>
																	</div>
																	<div
																		class="custom-control custom-radio custom-control-inline mb-2">
																		<input type="radio" id="customRadioInline4"
																			name="e_disability_type" class="custom-control-input"
																			value="2"> <label
																			class="custom-control-label" for="customRadioInline4">장애인</label>
																	</div>
																	<div
																		class="custom-control custom-radio custom-control-inline mb-2">
																		<input type="radio" id="customRadioInline5"
																			name="e_disability_type" class="custom-control-input"
																			value="3"> <label
																			class="custom-control-label" for="customRadioInline5">국가유공자</label>
																	</div>
																	<div
																		class="custom-control custom-radio custom-control-inline mb-2">
																		<input type="radio" id="customRadioInline6"
																			name="e_disability_type" class="custom-control-input"
																			value="4"> <label
																			class="custom-control-label" for="customRadioInline6">중증</label>
																	</div>
																</div>

															</div>
															<div class="col-md-1">
																<input type="text" class="form-control"
																	name="e_disability_level" placeholder="장애인 등급">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>

															<label class="col-md-1 col-form-label" for="simpleinput">보훈구분<span
																class="text-danger">*</span></label>
															<div class="col-md-3 col-form-label">
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline9"
																		name="e_veteran_type" class="custom-control-input"
																		value="0" checked> <label
																		class="custom-control-label" for="customRadioInline9">비해당</label>
																</div>
																<div
																	class="custom-control custom-radio custom-control-inline mb-2">
																	<input type="radio" id="customRadioInline10"
																		name="e_veteran_type" class="custom-control-input"
																		value="1"> <label class="custom-control-label"
																		for="customRadioInline10">해당</label>
																</div>
															</div>
														</div>

														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">보훈관계<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<select class="form-control select2"
																	name="e_veteran_info" onchange="">
																	<option value="비해당">0. 비해당</option>
																	<option value="할아버지">1. 할아버지</option>
																	<option value="아버지">2. 아버지</option>
																	<option value="본인">3. 본인</option>
																</select>
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">보훈등급<span
																class="text-danger">*</span></label>
															<div class="col-md-4">
																<select class="form-control select2"
																	name="e_veteran_level" onchange="">
																	<option value="비해당">0. 비해당</option>
																	<option value="국가유공자">1. 국가유공자</option>
																	<option value="고엽제후유증환자">2. 고엽제 후유증 및 고엽제 후유증
																		2세환자</option>
																	<option value="5.18 민주유공자">3. 5.18 민주유공자</option>
																	<option value="특수임무수행자">4. 특수임무수행자</option>
																	<option value="중장기복무제대군인">5. 중장기복무제대군인</option>
																</select>
															</div>
														</div>

														<div class="form-group text-right mb-0">
															<button
																class="btn btn-primary waves-effect waves-light mr-1"
																type="submit">Submit</button>
															<button type="reset"
																class="btn btn-secondary waves-effect">Cancel</button>
														</div>
													</div>
												</form>

												<div class="card-body table-responsive">
													<h4 class="header-title">가족 정보</h4>
													<h4 class="header-title">&nbsp;</h4>
													<div class="table-responsive" style="margin: 15px 0px 50px">
														<table
															class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
															<col style="width: 20%;">
															<col style="width: 20%;">
															<col style="width: 20%">
															<col style="width: 20%;">
															<col style="width: 20%;">
															<thead>
																<tr>
																	<th>성명</th>
																	<th>관계</th>
																	<th>동거여부</th>
																	<th>생년월일</th>
																	<th>음력/양력</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td><input type="text" name="f_name0"
																		class="form-control" data-toggle="input-mask"
																		style="width: 100%; border: 0px;"></td>
																	<td><input type="text" name="f_type0"
																		class="form-control" data-toggle="input-mask"
																		style="width: 100%; border: 0px;"></td>
																	<td><input type="text" name="f_cohabitation0"
																		class="form-control" data-toggle="input-mask"
																		style="width: 100%; border: 0px;"></td>
																	<td><input type="text" name="f_born0"
																		class="form-control" data-toggle="input-mask"
																		data-mask-format="0000/00/00" placeholder="YYYY/DD/MM"
																		style="width: 100%; border: 0px;"></td>
																	<td><input type="text" name="f_born_type0"
																		class="form-control" data-toggle="input-mask"
																		style="width: 100%; border: 0px;"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="form-group text-right mb-0">
														<button
															class="btn btn-primary waves-effect waves-light mr-1"
															type="button" onclick="enterinsert(0);">추가</button>
														<button
															class="btn btn-primary waves-effect waves-light mr-1"
															type="button" onclick="enterdelete(0);">삭제</button>
													</div>

												</div>
											</div>
											<div class="form-group text-right mb-0">
												<button
													class="btn btn-primary waves-effect waves-light mr-1"
													type="submit">Submit</button>
												<button type="reset" class="btn btn-secondary waves-effect">
													Cancel</button>
											</div> --%>


										</div>

										<%-- <!-- 재직정보 -->
										<div class="tab-pane" id="presidency" role="tabpanel"
											aria-labelledby="presidency-tab">
											<form action="HR_inputProHR2" class="form-horizontal"
												method="post">
												<input type="hidden" name="${_csrf.parameterName }"
													value="${_csrf.token }">
												<div class="col-sm-12">
													<div class="card-body table-responsive">
														<!-- <form class="form-horizontal"> -->
														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">입사일</label>
															<div class="col-md-4 input-group">
																<input type="text" class="form-control"
																	placeholder="mm/dd/yyyy" data-provide="datepicker"
																	data-date-autoclose="true">
																<div class="input-group-append">
																	<span
																		class="input-group-text bg-primary text-white b-0"><i
																		class="mdi mdi-calendar"></i></span>
																</div>
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">그룹입사일</label>
															<div class="col-md-4 input-group">
																<input type="text" class="form-control"
																	placeholder="mm/dd/yyyy" data-provide="datepicker"
																	data-date-autoclose="true">
																<div class="input-group-append">
																	<span
																		class="input-group-text bg-primary text-white b-0"><i
																		class="mdi mdi-calendar"></i></span>
																</div>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-md-1 col-form-label" for="simpleinput">퇴직일</label>
															<div class="col-md-4 input-group">
																<input type="text" class="form-control"
																	placeholder="mm/dd/yyyy" data-provide="datepicker"
																	data-date-autoclose="true">
																<div class="input-group-append">
																	<span
																		class="input-group-text bg-primary text-white b-0"><i
																		class="mdi mdi-calendar"></i></span>
																</div>
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">중도퇴사일</label>
															<div class="col-md-4 input-group">
																<input type="text" class="form-control"
																	placeholder="mm/dd/yyyy" data-provide="datepicker"
																	data-date-autoclose="true">
																<div class="input-group-append">
																	<span
																		class="input-group-text bg-primary text-white b-0"><i
																		class="mdi mdi-calendar"></i></span>
																</div>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-md-2 col-form-label" for="simpleinput">수습적용</label>
															<div class="col-md-10">
																<select class="">
																	<a href="#"><i class="dripicons-zoom-in"></i></a>
																	<option value="">1. 부</option>
																	<option value="">2. 여</option>
																</select>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-md-2 col-form-label" for="simpleinput">근속기간포함</label>
															<div class="col-md-10">
																<select class="">
																	<a href="#"><i class="dripicons-zoom-in"></i></a>
																	<option value="">1. 안함</option>
																	<option value="">2. 함</option>
																</select>

															</div>
														</div>
														<div class="form-group row">
															<label class="col-md-2 col-form-label" for="simpleinput">휴직기간</label>
															<div class="col-md-10">
																<input type="text" class="" value="____/__/__">&nbsp;<a
																	href="#"></a> ~ <input type="text" class=""
																	value="____/__/__">&nbsp;<a href="#"><i
																	class="dripicons-calendar"></i></a>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-md-2 col-form-label" for="simpleinput">재직구분</label>
															<div class="col-md-10">
																<select class="">
																	<option value="">1. 재직</option>
																	<option value="">2. 파견</option>
																	<option value="">3. 휴직</option>
																	<option value="">4. 대기</option>
																	<option value="">5. 퇴직</option>
																</select>
															</div>
														</div>

														<div class="form-group row">
															<label class="col-md-2 col-form-label" for="simpleinput">퇴직연금가입일(DB형)</label>
															<div class="col-md-10">
																<input type="text" class="">&nbsp;<a href="#"><i
																	class="dripicons-calendar"></i></a>
															</div>
														</div>
														<div class="form-group row">
															<label class="col-md-2 col-form-label" for="simpleinput">수습만료일</label>
															<div class="col-md-10">
																<input type="text" class="">&nbsp;<a href="#"><i
																	class="dripicons-calendar"></i></a>
															</div>
														</div>

														<!-- end col -->
														<!-- end row -->
													</div>
												</div>
												<div class="form-group mb-0">
													<input type="submit" class="btn btn-success" value="등록">
												</div>
											</form>
										</div>

										<!-- 급여정보 -->
										<div class="tab-pane" id="message" role="tabpanel"
											aria-labelledby="message-tab">
											<form action="HR_inputProHR3" class="form-horizontal"
												method="post">
												<input type="hidden" name="${_csrf.parameterName }"
													value="${_csrf.token }">
												<div class="col-sm-12">
													<div class="card">
														<div class="card-body table-responsive">
															<div align="left">
																<h4>입사정보</h4>
																<br>
															</div>
															<table id="datatable"
																style="border-collapse: collapse; border-spacing: 0; width: 100%;">
																<tr>
																	<td>호봉</td>
																	<td><input type="text" class="" value="2호봉">&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a> <input
																		type="text" class="" value="2,160,000" readonly></td>
																</tr>

																<tr>
																	<td>계정유형</td>
																	<td><input type="text" class="" value="200">&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a> <input
																		type="text" class="" value="사원계정" readonly></td>
																</tr>


																<tr>
																	<td>국외소득유무</td>
																	<td><select class="">
																			<option></option>
																			<option value="">1. 비해당</option>
																			<option value="">2. 해당</option>
																	</select></td>

																	<td>외국인단일세율</td>
																	<td><select class="">
																			<option></option>
																			<option value="">1. 여</option>
																			<option value="">2. 부</option>
																	</select></td>
																</tr>

																<tr>
																	<td>생산직총급여</td>
																	<td><select class="">
																			<option value="">0. 과세(2천5백만원 초과)</option>
																			<option value="">1. 비과세(2천5백만원 이하)</option>
																	</select></td>

																	<td>파견근로자여부</td>
																	<td><select class="">
																			<option value="">0. 여</option>
																			<option value="">1. 부</option>
																	</select></td>
																</tr>

																<tr>
																	<td>학자금상환여부</td>
																	<td><select class="">
																			<option></option>
																			<option value="">0. 여</option>
																			<option value="">1. 부</option>
																	</select></td>

																	<td>학자금상환통지액</td>
																	<td><input type="text" class=""></td>
																</tr>

																<tr>
																	<td>감면유형</td>
																	<td><input type="text" class="" value="T10">&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a> <input
																		type="text" class="" value="중소기업취업감면(1" readonly>
																		<input type="text" class="" value="____/__">&nbsp;
																		~ &nbsp; <input type="text" class="" value="____/__">&nbsp;<a
																		href="#"><i class="dripicons-calendar"></i></a></td>
																</tr>

																<tr>
																	<td>급여이체은행</td>
																	<td><input type="text" class="">&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a> <input
																		type="text" class="" disabled></td>
																</tr>

																<tr>
																	<td>계좌번호</td>
																	<td><input type="text" class=""></td>

																	<td>예금주</td>
																	<td><input type="text" class=""></td>
																</tr>

																<tr>
																	<td>급여이체은행2</td>
																	<td><input type="text" class="">&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a> <input
																		type="text" class="" disabled></td>
																</tr>

																<tr>
																	<td>계좌번호2</td>
																	<td><input type="text" class=""></td>

																	<td>예금주2</td>
																	<td><input type="text" class=""></td>
																</tr>
															</table>
														</div>
													</div>
												</div>

												<div class="col-sm-12">
													<div class="card">
														<div class="card-body table-responsive">
															<div align="left">
																<h4>사회보험</h4>
																<br>
															</div>
															<table id="datatable"
																style="border-collapse: collapse; border-spacing: 0; width: 100%;">
																<tr>
																	<td>연금유형</td>
																	<td><select class="">
																			<option value="">1. 국민연금</option>
																			<option value="">2. 사학연금</option>
																	</select></td>

																	<td>국민연금</td>
																	<td><input type="text" class="" value="72,000">&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a></td>
																</tr>

																<tr>
																	<td>사학연금</td>
																	<td><input type="text" class="" disabled>&nbsp;<a
																		href="#"><i class="dripicons-zoom-in" disabled></i></a></td>

																	<td>고용보험</td>
																	<td><input type="text" class="" value="10,400">&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a></td>
																</tr>


																<tr>
																	<td>건강보험</td>
																	<td><input type="text" class="" disabled>&nbsp;<a
																		href="#"><i class="dripicons-zoom-in"></i></a></td>

																	<td>건강보험번호</td>
																	<td><input type="text" class=""></td>
																</tr>

																<tr>
																	<td>노조가입여부</td>
																	<td><select class="">
																			<option value="">1. 부</option>
																			<option value="">2. 여</option>
																	</select></td>

																	<td>고용보험여부(대표)</td>
																	<td><select class="">
																			<option value="">1. 부</option>
																			<option value="">2. 여</option>
																	</select></td>
																</tr>

																<tr>
																	<td>두루누리사회보험</td>
																	<td><select class="">
																			<option value="">0. 미신청</option>
																			<option value="">1. 신청</option>
																	</select></td>

																	<td>두루누리적용율</td>
																	<td><select class="" disabled>
																			<option></option>
																	</select>&nbsp;
																		<button onclick="location=''">안내</button></td>
																</tr>
															</table>
														</div>
													</div>
												</div>

												<div class="col-sm-12">
													<div class="card">
														<div class="card-body table-responsive">
															<div align="left">
																<h4>부양가족</h4>
																<br>
															</div>
															<table id="datatable"
																style="border-collapse: collapse; border-spacing: 0; width: 100%;">
																<tr>
																	<td>배우자공제</td>
																	<td><select class="">
																			<option value="">1. 비해당</option>
																			<option value="">2. 해당</option>
																	</select></td>

																	<td>부녀자공제</td>
																	<td><select class="">
																			<option value="">1. 비해당</option>
																			<option value="">2. 해당</option>
																	</select></td>
																</tr>

																<tr>
																	<td>20세이하</td>
																	<td><input type="text" class="" placeholder="0"></td>

																	<td>부양60세이상</td>
																	<td><input type="text" class="" placeholder="0"></td>
																</tr>


																<tr>
																	<td>장애인</td>
																	<td><input type="text" class="" placeholder="0"></td>

																	<td>수급자/위탁아동</td>
																	<td><input type="text" class="" placeholder="0"></td>
																</tr>

																<tr>
																	<td>다자녀추가공제</td>
																	<td><input type="text" class="" placeholder="0"></td>
																</tr>
															</table>
														</div>
													</div>
												</div>

												<div class="form-group mb-0">
													<input type="submit" class="btn btn-success" value="등록">
												</div>
											</form> --%>
										</div>
									</div>

									<!--  -->

								</div>
							</div>
							<!-- end container-fluid -->

						</div>
						<!-- end row -->

						<%@ include file="../footer.jsp"%>

					</div>

					<!-- ============================================================== -->
					<!-- End Page content -->
					<!-- ============================================================== -->

				</div>
				<!-- END wrapper -->


			</div>
		</div>
	</div>
	<%@ include file="../rightbar.jsp"%>

	<%@ include file="../setting2.jsp"%>

	<!-- Plugins js -->
	<script src="/erp/resources/assets/libs/dropify/dropify.min.js"></script>

	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-fileuploads.init.js"></script>

</body>
</html>