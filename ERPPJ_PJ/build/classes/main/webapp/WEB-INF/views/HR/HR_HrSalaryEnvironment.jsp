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
										<li class="breadcrumb-item active">Dashboard</li>
									</ol>
								</div>
								<h4 class="page-title">인사/급여환경설정</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="standard-tab" data-toggle="tab" href="#standard" role="tab"
									aria-controls="standard" aria-selected="true"> <span
										class="d-block d-sm-none"><i class="fa fa-study"></i></span> <span
										class="d-none d-sm-block">기준설정</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="total-tab"
									data-toggle="tab" href="#total" role="tab"
									aria-controls="total" aria-selected="true"> <span
										class="d-block d-sm-none"><i class="fa fa-user"></i></span> <span
										class="d-none d-sm-block">집계항목</span>
								</a></li>
							</ul>
							<div class="tab-content">
								<!-- 잔액 -->
								<div class="tab-pane" id="standard" role="tabpanel"
									aria-labelledby="standard-tab">
									<div class="col-sm-12">
										<div class="card">
											<div class="card-body table-responsive">
												<div align="right">
													<br>
												</div>
												<table id="datatable"
													class="table table-striped table-bordered dt-responsive nowrap"
													style="border-collapse: collapse; border-spacing: 0; width: 100%;">
													<thead>
														<tr>
															<th rowspan="2" align="center">구분</th>
															<th colspan="3" align="center">인사급여환경설정</th>
														</tr>
														<tr>
															<th>환경요소</th>
															<th>기준</th>
															<th>기준일(월)수</th>															
														</tr>
													</thead>
													<tbody>
														<tr>
															<td rowspan="9" align="center">급여계산기준</td>
														</tr>
														
														<tr>
															<td>입사자 급여계산</td>
															<td>월</td>
															<td></td>
														</tr>
														
														<tr>
															<td>수습직 지급기간</td>
															<td></td>
															<td></td>
														</tr>
														
														<tr>
															<td>수습직 급여계산</td>
															<td></td>
															<td></td>
														</tr>
														
														<tr>
															<td>수습직 지급율</td>
															<td></td>
															<td></td>
														</tr>
														
														<tr>
															<td>퇴사자 급여계산</td>
															<td>일</td>
															<td></td>
														</tr>
														
														<tr>
															<td>상여세액계산기준</td>
															<td>당해년일</td>
															<td></td>
														</tr>
														
														<tr>
															<td>외국인비과세율</td>
															<td></td>
															<td></td>
														</tr>
														
														<tr>
															<td>근속기간계산기준</td>
															<td>입사일</td>
															<td></td>
														</tr>
														
														<tr>
															<td rowspan="5" align="center">근태기준설정</td>
														</tr>
														
														<tr>
															<td>한달 정상일</td>
															<td></td>
															<td>30일</td>
														</tr>
														
														<tr>
															<td>한달 정상시간</td>
															<td></td>
															<td>240시간</td>
														</tr>
														
														<tr>
															<td>하루시간</td>
															<td></td>
															<td>8시간</td>
														</tr>
														
														<tr>
															<td>월일수 산정</td>
															<td>당월일</td>
															<td></td>
														</tr>
														
														<tr>
															<td rowspan="4" align="center">신고기준설정</td>
														</tr>
														
														<tr>
															<td>원천세 신고유형</td>
															<td>본점일괄신고</td>
															<td></td>
														</tr>
														
														<tr>
															<td>이행상황신고집계방식</td>
															<td>귀속연월</td>
															<td></td>
														</tr>
														
														<tr>
															<td>지방소득세/주민세(종업원분)집계방식</td>
															<td>지급연월</td>
															<td></td>
														</tr>
														
														<tr>
															<td align="center">사업/기타/이자배당</td>
															<td>전표생성체크여부</td>
															<td></td>
															<td></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								
								<div class="tab-pane" id="total" role="tabpanel"
									aria-labelledby="total-tab">
									<div class="col-sm-12">
										<div class="card">
											<div class="card-body table-responsive">												
												<table id="datatable"
													class="table table-striped table-bordered dt-responsive nowrap"
													style="border-collapse: collapse; border-spacing: 0; width: 100%;">
													<thead>
														<tr>
															<th align="center">구분</th>
															<th align="center">항목</th>
															<th align="center">설정코드</th>
															<th align="center">비고</th>
														</tr>														
													</thead>
													<tbody>
														<tr>
															<td rowspan="4" align="center">사회보험설정</td>															
														</tr>
														
														<tr>
															<td align="center">건강보험정산코드</td>
															<td></td>
															<td></td>
														</tr>
														
														<tr>
															<td align="center">국민연금정산코드</td>
															<td></td>
															<td></td>
														</tr>
														
														<tr>
															<td align="center">고용보험정산코드</td>
															<td></td>
															<td></td>
														</tr>
														
														<tr>
															<td align="center">공제항목설정</td>
															<td align="center">학자금상환코드</td>
															<td></td>
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
					</div>
				</div>
			</div>



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
						class="custom-control-label" for="customCheck2">API Access</label>
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