<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->

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
								<h4 class="page-title">결산자료입력</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title mb-3">Default Tabs</h4>

									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link" id="home-tab"
											data-toggle="tab" href="#home" role="tab"
											aria-controls="home" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-home"></i></span>
												<span class="d-none d-sm-block">계정설정</span>
										</a></li>
										<li class="nav-item"><a class="nav-link active"
											id="profile-tab" data-toggle="tab" href="#profile" role="tab"
											aria-controls="profile" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">결산자료</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 계정설정 -->
										<div class="tab-pane" id="home" role="tabpanel"
											aria-labelledby="home-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div align="right">
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">새로작성</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">분개</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">계정생성</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">감가상각</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">적요등록</button>
															<br>
														</div>
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<!-- <tr>
				                                                    <th scope="col">#</th>
				                                                    <th scope="col">First</th>
				                                                    <th scope="col">Last</th>
				                                                    <th scope="col">Handle</th>
				                                                    </tr> -->

																	<tr>
																		<th rowspan="2">코드</th>
																		<th rowspan="2">구분</th>
																		<th>결산계정</th>
																		<th>상대계정</th>
																		<th rowspan="2">비고</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>

																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- 결산자료 -->
										<div class="tab-pane show active" id="profile" role="tabpanel"
											aria-labelledby="profile-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div align="right">
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">새로작성</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">분개</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">계정생성</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">감가상각</button>
															<button type="button"
																class="btn btn-outline-dark waves-effect waves-light">적요등록</button>
															<br>
														</div>
														<table id="datatable"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<tr>
																<td>회계단위</td>
																<td><input type="text" class="">&nbsp;<a
																	href="#"><i class="dripicons-zoom-in"></i></a></td>

																<td>기간</td>
																<td><input type="text" class="">&nbsp;~&nbsp;<input
																	type="text" class=""></td>
															</tr>
														</table>

														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th>날짜</th>
																		<th>적요란</th>
																		<th>차변</th>
																		<th>대변</th>
																		<th>잔액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<th scope="row">2018/12/20</th>
																		<td>[전이월]</td>
																		<td>2,390,167,000</td>
																		<td>1,939,534,000</td>
																		<td>450,633,000</td>
																	</tr>

																	<tr>
																		<th scope="row">2018/12/20</th>
																		<td>판관비_복리후생비</td>
																		<td></td>
																		<td>1,900,000</td>
																		<td></td>
																	</tr>

																	<tr>
																		<th scope="row">2018/12/20</th>
																		<td>판관비_복리후생비</td>
																		<td></td>
																		<td>1,900,000</td>
																		<td></td>
																	</tr>

																	<tr>
																		<th></th>
																		<td>[월계]</td>
																		<td></td>
																		<td>1,000,000</td>
																		<td></td>
																	</tr>

																	<tr>
																		<th></th>
																		<td>[누계]</td>
																		<td>2,930,000,000</td>
																		<td>100,000,000</td>
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
					</div>
				</div>
				<!-- end container-fluid -->

			</div>
			<!-- end content -->



			<%@ include file="../footer.jsp"%>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

</body>
</html>