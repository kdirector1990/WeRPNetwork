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
								<h4 class="page-title">인사발령등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
				</div>
			</div>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">
								<br>
								<table id="datatable"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead>
										<tr>
											<th>NO</th>
											<th>발령호수</th>
											<th>제목</th>
											<th>발령구분</th>
											<th>발령일자</th>
										</tr>
									</thead>

									<tbody>
										<tr color="red">
											<td>1</td>
											<td>1</td>
											<td>2009신입사원채용</td>
											<td>채용</td>
											<td>2009/12/09</td>
										</tr>
									</tbody>

									<tbody>
										<tr color="red">
											<td>2</td>
											<td>20080101</td>
											<td>2008정기승진</td>
											<td>승진</td>
											<td>2008/01/01</td>
										</tr>
									</tbody>

									<tbody>
										<tr color="red">
											<td>3</td>
											<td>20081205</td>
											<td>2008신입사원채용</td>
											<td>채용</td>
											<td>2008/12/15</td>
										</tr>
									</tbody>
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
							<h4 class="header-title">발령등록</h4>

							<div class="row">
								<div class="col-xl-6">
									<form class="form-horizontal">
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="simpleinput">발령구분</label>
											<div class="col-md-10">
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="example-email">발령자</label>
											<div class="col-md-10">
												<input type="email" id="example-email" name="example-email"
													class="form-control" placeholder="Email">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="example-password">발신사업장</label>
											<div class="col-md-10">
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-md-2 col-form-label"
												for="example-palaceholder">발신부서</label>
											<div class="col-md-10">
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="example-textarea">참조</label>
											<div class="col-md-10">
												<input type="text" id="simpleinput" class="form-control"
													value="Some text value...">
											</div>
										</div>
									</form>
								</div>

								<div class="col-xl-6">
									<form class="form-horizontal">

										<div class="card">
											<div class="card-body table-responsive">
												<br>
												<table id="datatable"
													class="table table-striped table-bordered dt-responsive nowrap"
													style="border-collapse: collapse; border-spacing: 0; width: 100%;">
													<thead>
														<tr>
															<th></th>
															<th>사원코드</th>
															<th>사원명</th>
															<th>부서</th>
															<th>직책</th>
														</tr>
													</thead>

													<tbody>
														<tr color="red">
															<th></th>
															<td>20000601</td>
															<td>이수희</td>
															<td>국내영업부</td>
															<td>전무</td>															
														</tr>
													</tbody>

													<tbody>
														<tr color="red">
															<th></th>
															<td>20001101</td>
															<td>박용덕</td>
															<td>국내영업부</td>
															<td>부장</td>															
														</tr>
													</tbody>
													
													<tbody>
														<tr color="red">
															<th></th>
															<td>20020603</td>
															<td>이준상</td>
															<td>총무부</td>
															<td></td>															
														</tr>
													</tbody>													
												</table>
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
				<!-- end col -->
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