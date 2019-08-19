<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
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
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
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
													<div class="card">
														<div class="card-body table-responsive">

															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">성명(영문)</label>
																<div class="col-md-10">
																	<input type="text" class="form-control" name="engName">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label"
																	for="example-email">성명(한자)</label>
																<div class="col-md-10">
																	<input type="text" class="form-control" name="chineseName"
																		placeholder="text name...">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label"
																	for="example-palaceholder">주민등록번호</label>
																<div class="col-md-10">
																	<input type="text" class="form-control" name="jumin"
																		placeholder="jumin">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label"
																	for="example-password">성별</label>
																<div class="col-md-10">
																	<select class="input" name="gender" onchange="">
																		<option value="남성">1.남성</option>
																		<option value="여성">2.여성</option>
																	</select>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">생년월일</label>
																<div class="col-md-10">
																	<input type="text" class="form-control" name="birth">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">전화번호</label>
																<div class="col-md-10">
																	<input type="text" class="form-control" name="phoneNum">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">비상전화(HP)</label>
																<div class="col-md-10">
																	<input type="text" class="form-control" name="handPhone">
																</div>
															</div>
															<br> <br>
															<h4 class="header-title">거주정보</h4>
															<br> <br>

															<div class="form-group">
																<label for="fullname">주민등록주소</label> <input type="text"
																	class="form-control" name="juminAddress" required="">
															</div>

															<div class="form-group">
																<label for="fullname">상세주소</label> <input type="text"
																	class="form-control" name="address" required="">
															</div>

															<div class="form-group">
																<label for="fullname">영문주소</label> <input type="text"
																	class="form-control" name="endAddress" required="">
															</div>

															<div class="form-group">
																<label for="email">E-MAIL</label> <input type="email"
																	class="form-control" name="email" data-parsley-trigger="change"
																	required="">
															</div>

															<div class="form-group">
																<label for="fullname">출입카드No.</label> <input type="text"
																	class="form-control" name="inNo" required="">
															</div>

															<div class="form-group">

																<label for="fullname">세대주여부 </label> <select
																	class="input" name="household" onchange="">
																	<option value="">1.부</option>
																	<option value="">2.여</option>
																</select>
															</div>

															<div class="form-group">
																<label for="heard">장애인 구분</label> <select class="input"
																	name="disClass">
																	<option value="press">0.비해당</option>
																	<option value="net">1.장애인복지법</option>
																	<option value="mouth">2.국가유공자등</option>
																	<option value="other">3.중증환자</option>
																</select>
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
													<div class="card">
														<div class="card-body">
															<div class="row">
																<div class="col-xl-6">
																	<!-- <form class="form-horizontal"> -->
																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">입사일</label>
																		<div class="col-md-10">
																			<input type="text" class="">&nbsp;<a href="#"><i
																				class="dripicons-calendar"></i></a>
																		</div>
																	</div>
																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">퇴직일</label>
																		<div class="col-md-10">
																			<input type="text" class="" data-provide="datepicker">&nbsp;<a href="#"><i
																				class="dripicons-calendar"></i></a>
																		</div>
																	</div>

																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">중도퇴사일</label>
																		<div class="col-md-10">
																			<input type="text" class="">&nbsp;<a href="#"><i
																				class="dripicons-calendar"></i></a>
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
																	<!-- </form> -->
																</div>

																<div class="col-xl-6">
																	<!-- <form class="form-horizontal"> -->

																	<div class="form-group row">
																		<label class="col-md-2 col-form-label"
																			for="simpleinput">그룹입사일</label>
																		<div class="col-md-10">
																			<input type="text" class="">&nbsp;<a href="#"><i
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

																</div>
																<!-- end col -->
															</div>
															<!-- end row -->

														</div>
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

						<!-- Footer Start -->
						<footer class="footer">
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-6">
										2016 - 2019 &copy; Codefox theme by <a href="">Coderthemes</a>
									</div>
									<div class="col-md-6">
										<div class="text-md-right footer-links d-none d-sm-block">
											<a href="#">About Us</a> <a href="#">Help</a> <a href="#">Contact
												Us</a>
										</div>
									</div>
								</div>
							</div>
						</footer>
						<!-- end Footer -->

					</div>

					<!-- ============================================================== -->
					<!-- End Page content -->
					<!-- ============================================================== -->

				</div>
				<!-- END wrapper -->

				<!-- Right Sidebar -->
				<div class="right-bar">
					<div class="rightbar-title">
						<a href="javascript:void(0);" class="right-bar-toggle float-right">
							<i class="mdi mdi-close"></i>
						</a>
						<h5 class="m-0 text-white">Settings</h5>
					</div>
					<div class="slimscroll-menu">
						<hr class="mt-0">
						<h5 class="pl-3">Basic Settings</h5>
						<hr class="mb-0" />


						<div class="p-3">
							<div class="custom-control custom-checkbox mb-2">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1" checked> <label
									class="custom-control-label" for="customCheck1">Notifications</label>
							</div>
							<div class="custom-control custom-checkbox mb-2">
								<input type="checkbox" class="custom-control-input"
									id="customCheck2" checked> <label
									class="custom-control-label" for="customCheck2">API
									Access</label>
							</div>
							<div class="custom-control custom-checkbox mb-2">
								<input type="checkbox" class="custom-control-input"
									id="customCheck3"> <label class="custom-control-label"
									for="customCheck3">Auto Updates</label>
							</div>
							<div class="custom-control custom-checkbox mb-2">
								<input type="checkbox" class="custom-control-input"
									id="customCheck4" checked> <label
									class="custom-control-label" for="customCheck4">Online
									Status</label>
							</div>
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="customCheck5"> <label class="custom-control-label"
									for="customCheck5">Auto Payout</label>
							</div>
						</div>

						<!-- Timeline -->
						<hr class="mt-0" />
						<h5 class="pl-3 pr-3">Timeline</h5>
						<hr class="mb-0" />

						<div class="p-3">
							<ul class="list-unstyled activity-widget">
								<li class="activity-list">
									<p class="mb-0">
										<small>08 July</small>
									</p>
									<p>Neque porro quisquam est</p>
								</li>
								<li class="activity-list">
									<p class="mb-0">
										<small>09 July</small>
									</p>
									<p>Ut enim ad minima veniam quis velit esse</p>
								</li>
								<li class="activity-list">
									<p class="mb-0">
										<small>10 July</small>
									</p>
									<p>Quis autem vel eum iure</p>
								</li>
							</ul>
						</div>

						<!-- Messages -->
						<hr class="mt-0" />
						<h5 class="pl-3 pr-3">
							Messages <span class="float-right badge badge-pill badge-danger">24</span>
						</h5>
						<hr class="mb-0" />
						<div class="p-3">
							<div class="inbox-widget">
								<div class="inbox-item">
									<div class="inbox-item-img">
										<img src="/erp/resources/assets/images/users/avatar-1.jpg"
											class="rounded-circle" alt="">
									</div>
									<p class="inbox-item-author">
										<a href="javascript: void(0);">Chadengle</a>
									</p>
									<p class="inbox-item-text">Hey! there I'm available...</p>
									<p class="inbox-item-date">13:40 PM</p>
								</div>
								<div class="inbox-item">
									<div class="inbox-item-img">
										<img src="/erp/resources/assets/images/users/avatar-2.jpg"
											class="rounded-circle" alt="">
									</div>
									<p class="inbox-item-author">
										<a href="javascript: void(0);">Tomaslau</a>
									</p>
									<p class="inbox-item-text">I've finished it! See you so...</p>
									<p class="inbox-item-date">13:34 PM</p>
								</div>
								<div class="inbox-item">
									<div class="inbox-item-img">
										<img src="assets/images/users/avatar-3.jpg"
											class="rounded-circle" alt="">
									</div>
									<p class="inbox-item-author">
										<a href="javascript: void(0);">Stillnotdavid</a>
									</p>
									<p class="inbox-item-text">This theme is awesome!</p>
									<p class="inbox-item-date">13:17 PM</p>
								</div>

								<div class="inbox-item">
									<div class="inbox-item-img">
										<img src="/erp/resources/assets/images/users/avatar-4.jpg"
											class="rounded-circle" alt="">
									</div>
									<p class="inbox-item-author">
										<a href="javascript: void(0);">Kurafire</a>
									</p>
									<p class="inbox-item-text">Nice to meet you</p>
									<p class="inbox-item-date">12:20 PM</p>

								</div>
								<div class="inbox-item">
									<div class="inbox-item-img">
										<img src="/erp/resources/assets/images/users/avatar-5.jpg"
											class="rounded-circle" alt="">
									</div>
									<p class="inbox-item-author">
										<a href="javascript: void(0);">Shahedk</a>
									</p>
									<p class="inbox-item-text">Hey! there I'm available...</p>
									<p class="inbox-item-date">10:15 AM</p>

								</div>
							</div>
							<!-- end inbox-widget -->
						</div>
						<!-- end .p-3-->

					</div>
					<!-- end slimscroll-menu-->
				</div>
				<!-- /Right-bar -->

				<!-- Right bar overlay-->
				<div class="rightbar-overlay"></div>

				<!-- Vendor js -->
				<script src="/erp/resources/assets/js/vendor.min.js"></script>

				<!-- Bootstrap select plugin -->
				<script
					src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

				<!-- plugins -->
				<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
				<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>

				<!-- dashboard init -->
				<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>

				<!-- App js -->
				<script src="/erp/resources/assets/js/app.min.js"></script>
			</div>
		</div>
	</div>
</body>
</html>