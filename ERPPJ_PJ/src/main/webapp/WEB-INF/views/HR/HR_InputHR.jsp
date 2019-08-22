<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
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
									<button type="button" class="btn btn-outline-primary waves-effect waves-light">조회기준</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light">사원추가</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light">국민/고용대상자해제</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>부양가족반영</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>책정임금코드반영</button>
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
													class="fa fa-employee"></i></span> <span class="d-none d-sm-block">인적정보</span>
										</a></li>
										<li class="nav-item"><a class="nav-link"
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
										</a></li>
									</ul>

									<div class="tab-content">
										<!-- 인적정보 -->
										<div class="tab-pane show active" id="employee"
											role="tabpanel" aria-labelledby="employee-tab">
											<form action="HR_inputProHR1" class="form-horizontal"
												method="post">
												<div class="col-sm-12">
														<div class="card-body table-responsive">
															<div class="form-group row">
																<label class="col-md-1 col-form-label" for="simpleinput">사진등록</label>
																<div class="col-md-4">
																	<input type="file" class="dropify" data-height="300" />
																</div>
																<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																<label class="col-md-1 col-form-label" for="simpleinput">성명</label>
																<div class="col-md-1">
																	<input type="text" class="form-control" name="e_name" placeholder = "한글이름">
																</div>
																<label class="col-md-1 col-form-label"
																	for="simpleinput	">성별</label>
																<div class="col-md-3  col-form-label">
																	<div>
							                                            <div class="custom-control custom-radio custom-control-inline mb-2">
							                                                <input type="radio" id="customRadioInline1" name="e_gender" class="custom-control-input" value = "male" checked>
							                                                <label class="custom-control-label" for="customRadioInline1">남성</label>
							                                            </div>
							                                            <div class="custom-control custom-radio custom-control-inline mb-2">
							                                                <input type="radio" id="customRadioInline2" name="e_gender" class="custom-control-input" value = "female">
							                                                <label class="custom-control-label" for="customRadioInline2">여성</label>
							                                            </div>
							                                        </div>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-1 col-form-label"
																	for="simpleinput">주민등록번호</label>
																<div class="col-md-4">
																	<input type="text" class="form-control" name="e_code" placeholder="주민등록번호" size="13">
																</div>
																<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																<label class="col-md-1 col-form-label"
																	for="simpleinput">전화번호</label>
																<div class="col-md-4">
																	<input type="text" class="form-control" name="e_hp" placeholder="전화번호" size="13">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-1 col-form-label"
																	for="simpleinput">주민등록주소</label>
																<div class="col-md-4">
																	<input type="text" class="form-control" name="e_address1" placeholder="주민등록주소" size="13">
																</div>
																<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																<label class="col-md-1 col-form-label"
																	for="simpleinput">상세주소</label>
																<div class="col-md-4">
																	<input type="text" class="form-control" name="e_address2" placeholder="상세주소" size="13">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-1 col-form-label" for="simpleinput">출입카드No.</label> 
																<div class="col-md-4">
																	<input type="text" class="form-control" name="e_nfcCodeNFC" placeholder="출입카드No.">
																</div>	
																<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																<label class="col-md-1 col-form-label" for="simpleinput">장애인 구분/등급</label> 
																<div class="col-md-3 col-form-label">
																	<div>
							                                            <div class="custom-control custom-radio custom-control-inline mb-2">
							                                                <input type="radio" id="customRadioInline3" name="e_disability_type" class="custom-control-input" value = "1" checked>
							                                                <label class="custom-control-label" for="customRadioInline3">비해당</label>
							                                            </div>
							                                            <div class="custom-control custom-radio custom-control-inline mb-2">
							                                                <input type="radio" id="customRadioInline4" name="e_disability_type" class="custom-control-input" value = "2">
							                                                <label class="custom-control-label" for="customRadioInline4">장애인</label>
							                                            </div>
							                                            <div class="custom-control custom-radio custom-control-inline mb-2">
							                                                <input type="radio" id="customRadioInline5" name="e_disability_type" class="custom-control-input" value = "3">
							                                                <label class="custom-control-label" for="customRadioInline5">국가유공자</label>
							                                            </div>
							                                            <div class="custom-control custom-radio custom-control-inline mb-2">
							                                                <input type="radio" id="customRadioInline6" name="e_disability_type" class="custom-control-input" value = "4">
							                                                <label class="custom-control-label" for="customRadioInline6">중증</label>
							                                            </div>
							                                        </div>
																</div>
																<div class="col-md-1">
																		<input type="text" class="form-control" name="e_disability_level" placeholder="장애인 등급">
																</div>
															</div>	
														</div>
													</div>
												<div class="form-group mb-0">
													<input type="submit" class="btn btn-success" value="등록">
												</div>
											</form>
										</div>

										<!-- 재직정보 -->
										<div class="tab-pane" id="presidency" role="tabpanel"
											aria-labelledby="presidency-tab">
											<form action="HR_inputProHR2" class="form-horizontal"
												method="post">
												<div class="col-sm-12">
														<div class="card-body table-responsive">
																	<!-- <form class="form-horizontal"> -->
																	<div class="form-group row">
																			<label class="col-md-1 col-form-label" for="simpleinput">입사일</label> 
																			<div class="col-md-4 input-group">
																				<input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true">
					                                                                <div class="input-group-append">
					                                                                    <span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span>
					                                                                </div>
																			</div>
																		<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																			<label class="col-md-1 col-form-label" for="simpleinput">그룹입사일</label> 
																			<div class="col-md-4 input-group">
																				<input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true">
					                                                            <div class="input-group-append">
					                                                                <span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span>
					                                                            </div>
																			</div>
																	</div>
																	<div class="form-group row">
																			<label class="col-md-1 col-form-label" for="simpleinput">퇴직일</label> 
																			<div class="col-md-4 input-group">
																				<input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true">
					                                                                <div class="input-group-append">
					                                                                    <span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span>
					                                                                </div>
																			</div>
																		<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																			<label class="col-md-1 col-form-label" for="simpleinput">중도퇴사일</label> 
																			<div class="col-md-4 input-group">
																				<input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true">
					                                                            <div class="input-group-append">
					                                                                <span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span>
					                                                            </div>
																			</div>
																	</div>
																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">수습적용</label>
																		<div class="col-md-10">
																			<select class="">
																				<a href="#"><i class="dripicons-zoom-in"></i></a>
																				<option value="">1. 부</option>
																				<option value="">2. 여</option>
																			</select>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">근속기간포함</label>
																		<div class="col-md-10">
																			<select class="">
																				<a href="#"><i class="dripicons-zoom-in"></i></a>
																				<option value="">1. 안함</option>
																				<option value="">2. 함</option>
																			</select>

																		</div>
																	</div>
																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">휴직기간</label>
																		<div class="col-md-10">
																			<input type="text" class="" value="____/__/__">&nbsp;<a
																				href="#"></a> ~ <input type="text" class=""
																				value="____/__/__">&nbsp;<a href="#"><i
																				class="dripicons-calendar"></i></a>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">재직구분</label>
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
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">퇴직연금가입일(DB형)</label>
																		<div class="col-md-10">
																			<input type="text" class="">&nbsp;<a href="#"><i
																				class="dripicons-calendar"></i></a>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">수습만료일</label>
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
											</form>
										</div>
									</div>

									<!--  -->

								</div>
							</div>
							<!-- end container-fluid -->

						</div>
						<!-- end row -->

						<%@ include file="../footer.jsp" %>

					</div>

					<!-- ============================================================== -->
					<!-- End Page content -->
					<!-- ============================================================== -->

				</div>
				<!-- END wrapper -->

				
			</div>
		</div>
	</div>
	<%@ include file="../rightbar.jsp" %>
    <%@ include file="../setting2.jsp" %>
</body>
</html>