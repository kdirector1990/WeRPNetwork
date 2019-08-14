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
										<li class="nav-item"><a class="nav-link"
											id="employee-tab" data-toggle="tab" href="#employee"
											role="tab" aria-controls="employee" aria-selected="false">
												<span class="d-block d-sm-none"><i
													class="fa fa-employee"></i></span> <span class="d-none d-sm-block">인적정보</span>
										</a></li>
										<li class="nav-item"><a class="nav-link active"
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
										<!-- 잔액 -->
										<div class="tab-pane" id="employee" role="tabpanel"
											aria-labelledby="employee-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<form class="form-horizontal">

															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">성명(영문)</label>
																<div class="col-md-10">
																	<input type="text" id="engName" class="form-control"
																		value="Some text value...">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label"
																	for="example-email">성명(한자)</label>
																<div class="col-md-10">
																	<input type="text" id="chineseName" name="chineseName"
																		class="form-control" placeholder="text name...">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label"
																	for="example-palaceholder">주민등록번호</label>
																<div class="col-md-10">
																	<input type="text" class="form-control"
																		id="example-palaceholder" placeholder="placeholder">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label"
																	for="example-password">성별</label>
																<div class="col-md-10">
																	<select class="input" name="nation" onchange="">
																		<option value="">1.남성</option>
																		<option value="">2.여성</option>
																	</select>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">생년월일</label>
																<div class="col-md-10">
																	<input type="text" id="simpleinput"
																		class="form-control" value="Some text value...">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">전화번호</label>
																<div class="col-md-10">
																	<input type="text" id="simpleinput"
																		class="form-control" value="Some text value...">
																</div>
															</div>
															<div class="form-group row">
																<label class="col-md-2 col-form-label" for="simpleinput">비상전화(HP)</label>
																<div class="col-md-10">
																	<input type="text" id="simpleinput"
																		class="form-control" value="Some text value...">
																</div>
															</div>
															<br> <br>
															<h4 class="header-title">거주정보</h4>
															<br> <br>

															<div class="alert alert-warning d-none fade show">
																<h4 class="text-warning mt-0">Oh snap!</h4>
																<p class="mb-0">This form seems to be invalid :(</p>
															</div>

															<div class="alert alert-info d-none fade show">
																<h4 class="alert-info mt-0">Yay!</h4>
																<p class="mb-0">Everything seems to be ok :)</p>
															</div>


															<div class="form-group">
																<label for="fullname">주민등록주소</label> <input type="text"
																	class="form-control" name="fullname" id="fullname"
																	required="">
															</div>

															<div class="form-group">
																<label for="fullname">상세주소</label> <input type="text"
																	class="form-control" name="address" id="address"
																	required="">
															</div>

															<div class="form-group">
																<label for="fullname">영문주소</label> <input type="text"
																	class="form-control" name="address2" id="address2"
																	required="">
															</div>

															<div class="form-group">
																<label for="email">E-MAIL</label> <input type="email"
																	id="email" class="form-control" name="email"
																	data-parsley-trigger="change" required="">
															</div>

															<div class="form-group">
																<label for="fullname">출입카드No.</label> <input type="text"
																	class="form-control" name="inNo" id="inNo" required="">
															</div>

															<div class="form-group">
																<label for="fullname">세대주여부 </label> <select
																	class="input" name="nation" onchange="">
																	<option value="">1.부</option>
																	<option value="">2.여</option>
																</select>
															</div>

															<div class="form-group">
																<label for="heard">장애인 구분</label> <select class="">
																	<option value="press">0.비해당</option>
																	<option value="net">1.장애인복지법</option>
																	<option value="mouth">2.국가유공자등</option>
																	<option value="other">3.중증환자</option>
																</select>
															</div>

															<div class="form-group mb-0">
																<input type="submit" class="btn btn-success"
																	value="validate">
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>

										<!-- 재직정보 -->
										<div class="tab-pane show active" id="presidency"
											role="tabpanel" aria-labelledby="presidency-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body">
														<div class="row">
															<div class="col-xl-6">
																<form class="form-horizontal">
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
																			<input type="text" class="">&nbsp;<a href="#"><i
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
																</form>
															</div>

															<div class="col-xl-6">
																<form class="form-horizontal">

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

																</form>
															</div>
															<!-- end col -->
														</div>
														<!-- end row -->

													</div>
												</div>
											</div>
										</div>

										<!-- 총괄잔액 -->
										<div class="tab-pane" id="message" role="tabpanel"
											aria-labelledby="message-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div align="right">
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">원장조회</button>
															<br>
														</div>
														<table id="datatable"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<tr>
																<td>회계단위</td>
																<td><select class="form-control select2">
																		<option>전체선택</option>
																		<option value="">본점</option>
																</select></td>
																<td>계정과목조회구분</td>
																<td><input type="radio">범위 <input
																	type="radio">개별</td>

																<td>출력기준</td>
																<td><select class="form-control select2">
																		<option>선택</option>
																		<option value="">1. 발생기준</option>
																		<option value="">2. 잔액기준</option>
																</select></td>
															</tr>

															<tr>

																<td>계정과목</td>
																<td><select class="form-control select2">
																		<option>선택</option>
																		<option value="">계정별</option>
																		<option value="">세목별</option>
																</select></td>
																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a> <input
																	type="text" class="" readonly></td>

																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a> <input
																	type="text" class="" readonly></td>

																<td>기표기간</td>
																<td>../../.. ~ ../../..</td>
															</tr>

															<tr>
																<td>거래처</td>
																<td><select class="form-control select2">
																		<option>선택</option>
																		<option value="">거래처</option>
																		<option value="">거래처분류</option>
																</select></td>
																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a></td>

																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a></td>

																<td><< <select class="form-control select2">
																		<option>선택</option>
																		<option value="">-</option>
																		<option value="">-</option>
																</select> >>
																</td>
															</tr>
														</table>

														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th>코드</th>
																		<th>계정과목</th>
																		<th>전기(월)이월</th>
																		<th>증가</th>
																		<th>감소</th>
																		<th>잔액</th>
																		<th>거래처분류코드</th>
																		<th>거래처분류명</th>
																		<th>대표자성명</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<td>10000</td>
																		<td>외상금매출</td>
																		<td>5,000,000</td>
																		<td>88,000,000</td>
																		<td></td>
																		<td>93,000,000</td>
																		<td>1000</td>
																		<td>강남구</td>
																		<td>권순용</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- 총괄내용 -->
										<div class="tab-pane" id="setting" role="tabpanel"
											aria-labelledby="setting-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div align="right">
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">원장조회</button>
															<br>
														</div>
														<table id="datatable"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<tr>
																<td>회계단위</td>
																<td><select class="form-control select2">
																		<option>전체선택</option>
																		<option value="">본점</option>
																</select></td>
																<td>계정과목조회구분</td>
																<td><input type="radio">범위 <input
																	type="radio">개별</td>

															</tr>

															<tr>

																<td>계정과목</td>
																<td><select class="form-control select2">
																		<option>선택</option>
																		<option value="">계정별</option>
																		<option value="">세목별</option>
																</select></td>
																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a> <input
																	type="text" class="" readonly></td>

																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a> <input
																	type="text" class="" readonly></td>

																<td>기표기간</td>
																<td>../../.. ~ ../../..</td>
															</tr>

															<tr>
																<td>거래처</td>
																<td><select class="form-control select2">
																		<option>선택</option>
																		<option value="">거래처</option>
																		<option value="">거래처분류</option>
																</select></td>
																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a></td>

																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a></td>

																<td><< <select class="form-control select2">
																		<option>선택</option>
																		<option value="">-</option>
																		<option value="">-</option>
																</select> >>
																</td>
															</tr>
														</table>

														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th>날짜</th>
																		<th>코드</th>
																		<th>계정과목</th>
																		<th>적요</th>
																		<th>차변</th>
																		<th>대변</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td>[전원이월]</td>
																		<td>21,600,000</td>
																		<td></td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
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
</body>
</html>