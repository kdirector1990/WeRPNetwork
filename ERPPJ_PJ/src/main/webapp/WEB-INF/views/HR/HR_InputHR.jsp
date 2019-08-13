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
										<li class="breadcrumb-item"><input type="button"
											value="조회기준"></li>
										<li class="breadcrumb-item"><input type="button"
											value="사원추가"></li>
										<li class="breadcrumb-item"><input type="button"
											value="국민/고용대상자해제"></li>
										<li class="breadcrumb-item"><input type="button"
											value="부양가족반영"></li>
									</ol>
								</div>
								<h4 class="page-title">인사정보등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
				</div>
			</div>

			<!-- Start Content-->
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">
								<h4 class="header-title">사원정보</h4>
								<br>


								<table id="datatable"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead>
										<tr>
											<th>NO</th>
											<th>사원코드</th>
											<th>사원명</th>
											<th>부서명</th>
										</tr>
									</thead>

									<tbody>
										<tr color="red">
											<td>1</td>
											<td>ERP13101</td>
											<td>장미란</td>
											<td>총무부</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 인적정보 -->
			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<h4 class="header-title">인적정보</h4>
							<p class="sub-header">개인정보</p>

							<div class="row">
								<div class="col-xl-6">
									<form class="form-horizontal">
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="simpleinput">성명(영문)</label>
											<div class="col-md-10">
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="example-email">성명(한자)</label>
											<div class="col-md-10">
												<input type="email" id="example-email" name="example-email"
													class="form-control" placeholder="Email">
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
											<label class="col-md-2 col-form-label" for="example-password">성별</label>
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
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="simpleinput">전화번호</label>
											<div class="col-md-10">
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="simpleinput">비상전화(HP)</label>
											<div class="col-md-10">
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>
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
								<h4 class="header-title">거주정보</h4>
								<p class="sub-header">Parsley is a javascript form
									validation library. It helps you provide your users with
									feedback on their form submission before sending it to your
									server.</p>

								<div class="alert alert-warning d-none fade show">
									<h4 class="text-warning mt-0">Oh snap!</h4>
									<p class="mb-0">This form seems to be invalid :(</p>
								</div>

								<div class="alert alert-info d-none fade show">
									<h4 class="alert-info mt-0">Yay!</h4>
									<p class="mb-0">Everything seems to be ok :)</p>
								</div>

								<form id="demo-form" data-parsley-validate="">
									<div class="form-group">
										<label for="fullname">주민등록주소</label> <input type="text"
											class="form-control" name="fullname" id="fullname"
											required="">
									</div>

									<div class="form-group">
										<label for="fullname">상세주소</label> <input type="text"
											class="form-control" name="address" id="address" required="">
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
										<label for="fullname">세대주여부
										</label> <select class="input"
											name="nation" onchange="">
											<option value="">1.부</option>
											<option value="">2.여</option>
										</select>
									</div>

									<div class="form-group">
										<label for="heard">장애인 구분</label> <select
											id="heard" class="form-control" required="">
											<option value="0"></option>
											<option value="press">0.비해당</option>
											<option value="net">1.장애인복지법</option>
											<option value="mouth">2.국가유공자등</option>
											<option value="other">3.중증환자</option>
										</select>
									</div>

									<div class="form-group mb-0">
										<input type="submit" class="btn btn-success" value="validate">
									</div>

								</form>
							</div>
						</div>
					</div>
					<!-- end col -->
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