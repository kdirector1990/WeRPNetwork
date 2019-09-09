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
	function modifyPhysicaly(value) {
		alert(value);  
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
										<table id="datatable"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<tr class="form-group row">
												<td class="col-md-1 col-form-label">조회조건</td>
												<td class="col-md-2 input-group"><input type="text"
													class="form-control" name="">
													<div class="input-group-append">
														<button type="button"
															class="btn btn-icon waves-effect waves-light btn-primary">
															<i class="fas fa-search"></i>
														</button>
													</div></td>
												<th class="col-md-1 col-form-label">&nbsp;</th>
												<th class="col-md-1 col-form-label">재직구분</th>
												<td class="col-md-2 input-group"><select
													class="form-control select2" name="" onchange="">
														<option value="">-- --</option>
														<option value=""></option>
														<option value=""></option>
												</select></td>
												<th class="col-md-1 col-form-label">&nbsp;</th>
												<th class="col-md-1 col-form-label">직급</th>
												<td class="col-md-2 input-group"><select
													class="form-control select2" name="" onchange="">
														<option value="">--  --</option>
														
												</select></td>
											</tr>
										</table>
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
										<div class="tab-pane" id="foundation" role="tabpanel"
											aria-labelledby="foundation-tab">
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
																		<td onclick="modifyFoundation(${fd.username})">${fd.username}</td>
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
																		<td onclick="window.location='HR_modifyPhysicaly'">${phy.username}</td>
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