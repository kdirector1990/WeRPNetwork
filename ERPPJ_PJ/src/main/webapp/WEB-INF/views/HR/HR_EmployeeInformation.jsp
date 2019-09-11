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

<script type="text/javascript">
	
//검색창 포커스	 
function searchNameFocus(){
	document.searchName.username.focus();
}

// 결과
function load1() {
	var url = document.searchName.username.value;	
	var url2 = document.searchName.e_name.value;
	var url3 = document.searchName.department_code.value;
	var url4 = document.searchName.position_code.value;
	var url5 = document.searchName.rank_code.value;
	
	sendRequest(loadFoundation_callback, "HR_EmployeeInformation_result", "post", "username="+url+"&e_name="+url2+"&department_code="+url3+"&position_code="+url4+"&rank_code"+url5);
	
}

function loadFoundation_callback() {
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
		if(!document.searchName.e_name.value){
			alert("사원이름을 입력하세요!");
			location.reload();
			document.searchName.e_name.focus();
			return false;
		}
	
		if(!document.searchName.username.value){			
			location.reload();
			document.searchName.username.focus();
			return false;
		}
		
		if(!document.searchName.department_code.value){			
			location.reload();
			document.searchName.department_code.focus();
			return false;
		}
		
		if(!document.searchName.position_code.value){			
			location.reload();
			document.searchName.position_code.focus();
			return false;
		}
		
		if(!document.searchName.rank_code.value){			
			location.reload();
			document.searchName.rank_code.focus();
			return false;
		}
	
		if(httpRequest.status == 200){	// 200 : 정상 종료
			result.innerHTML = "정상종료";
			// 응답 결과가 html이면 responseText로 받고, XML이면 responseXML로 받는다.
			
			var datas = httpRequest.responseText;
			
			result.innerHTML = datas;
			
		} else {
			result.innerHTML = "에러발생";
			
		}
	
	} else {
		//result.innerHTML = "상태 : " + httpRequest.readyState;
	}
} 

function setName(username) {
	opener.document.getElementById("usernameP").value = username;

	//test alert
	alert(username);
	
	$("#usernameP", opener.document).val(username); //jquery 이용
	$(opener.document).find("#usernameP").val(username); //find를 이용한 jquery
	self.close();
	
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

					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body table-responsive">
										<form action="" name="searchName">
										<table id="datatable"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<tr class="form-group row">
												<td class="col-md-1 col-form-label">사원번호</td>
												<td class="col-md-2 input-group">
													<input type="text" class="form-control" name="username">
												</td>
												
												<th class="col-md-1 col-form-label">&nbsp;</th>
												
												<th class="col-md-1 col-form-label">사원명</th>
												<td class="col-md-2 input-group">
													<input type="text" class="form-control" name="e_name">
												</td>
												
												<th class="col-md-1 col-form-label">&nbsp;</th>
												
												<th class="col-md-1 col-form-label">부서</th>
												<td class="col-md-2 input-group">
													<select class="form-control select2" name="department_code" onchange="">
														<c:forEach var="dep" items="${dep}">
														<option value="${dep.department_code}">${dep.department_name}</option>	
														</c:forEach>																																							
													</select>
												</td>								
												
											</tr>
											
											<tr class="form-group row">									
												
												<th class="col-md-1 col-form-label">직책</th>
												<td class="col-md-2 input-group">
													<select class="form-control select2" name="position_code" onchange="">
														<c:forEach var="poi" items="${poi}">
														<option value="${poi.position_code}">${poi.position_code}</option>	
														</c:forEach>																							
													</select>
												</td>
												
												<th class="col-md-1 col-form-label">&nbsp;</th>
												
												<th class="col-md-1 col-form-label">직급</th>
												<td class="col-md-2 input-group">
													<select class="form-control select2" name="rank_code" onchange="">
														<c:forEach var="rank" items="${rank}">
														<option value="${rank.rank_code}">${rank.rank_code}</option>	
														</c:forEach>																							
													</select>
												</td>
												
												<th class="col-md-1 col-form-label"></th>
												<td class="col-md-2 input-group">
													<button type=button class="btn-subpage" id="search"
														onclick="load1();">조회</button>
												</td>
											</tr>
										</table>
										</form>
									</div>
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
										<li class="nav-item"><a class="nav-link"
											id="physicaly-tab" data-toggle="tab" href="#physicaly"
											role="tab" aria-controls="physicaly" aria-selected="true">
												<span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">신체정보</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="message-tab"
											data-toggle="tab" href="#Passport/Visa" role="tab"
											aria-controls="Passport/Visa" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">-보류-</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 잔액 -->
										<div class="tab-pane show active" id="foundation" role="tabpanel"
											aria-labelledby="foundation-tab">
											<div id=result>
												<!-- 사원정보 출력결과 위치 -->
											</div>
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div align="right">
															<br>
														</div>
														<table id="datatable-buttons"
															class="table table-striped table-bordered dt-responsive nowrap"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">

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

															<tbody>
																<c:forEach var="fd" items="${vo}">
																	<tr color="red">
																		<td onclick="window.location='HR_modifyFoundation?username=${fd.username}'">${fd.username}</td>
																		<td>${fd.e_name}</td>
																		<td>${fd.e_gender}</td>
																		<td>${fd.e_code}</td>
																		<td>${fd.e_hp}</td>
																		<td>${fd.e_mailcode}</td>
																		<td>${fd.e_address}</td>
																		<td>${fd.e_type}</td>
																		<td>${fd.e_nfcCodeNFC}</td>
																		<td>${fd.department_code}</td>
																		<td>${fd.rank_code}</td>
																		<td>${fd.position_code}</td>
																		<td>${fd.level_step}</td>
																		<td>${fd.start_date}</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
														
														<div align="right">
															<br>
														</div>
														
														<div class="form-group text-right mb-0">
		                                                <button class="btn btn-primary waves-effect waves-light mr-1" type="button" onclick="">
		                                                                                                    수정
		                                                </button>
		                                                <button type="reset" class="btn btn-secondary waves-effect" type="button" onclick="">
		                                                                                                    삭제
		                                                </button>
		                                            </div>
													</div>
												</div>
											</div>
										</div>
										
										<div class="tab-pane" id="physicaly" role="tabpanel"
											aria-labelledby="physicaly-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div align="right">
															<br>
														</div>
														<table id="datatable-buttons"
															class="table table-striped table-bordered dt-responsive nowrap"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">

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

															<tbody>
																<c:forEach var="phy" items="${phy}">
																	<tr color="red">
																		<td onclick="window.location='HR_modifyPhysicaly?username=${phy.username}'">${phy.username}</td>
																		<td>${phy.e_height}</td>
																		<td>${phy.e_weight}</td>
																		<td>${phy.e_left_sight}</td>
																		<td>${phy.e_right_sight}</td>
																		<td>${phy.e_color_blind}</td>
																		<td>${phy.e_blood_type}</td>
																		<td>${phy.e_blood_presure}</td>
																		<td>${phy.e_medical_info}</td>
																		<td>${phy.e_veteran_type}</td>
																		<td>${phy.e_veteran_info}</td>
																		<td>${phy.e_veteran_level}</td>
																		<td>${phy.e_disability_type}</td>
																		<td>${phy.e_disability_level}</td>																		
																	</tr>
																</c:forEach>
															</tbody>
														</table>
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
	

</body>
</html>