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
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Codefox</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">원가보고서</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div align="right">
										<button type="button"
											class="btn btn-outline-dark waves-effect waves-light">통합계정</button>
										<button type="button"
											class="btn btn-outline-dark waves-effect waves-light">제목편집</button>
										<button type="button"
											class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
										<hr>
									</div>
									<table id="datatable"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr>
											<td>회계단위</td>
											<td><select class="form-control select2">
													<option>선택</option>
													<option value="">전체</option>
													<option value="">본사</option>
											</select></td>

											<td>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
											</td>

											<td>기간</td>
											<td><input type="text" class="">&nbsp;~&nbsp;<input
												type="text" class=""></td>

											<td>단위</td>
											<td><select class="form-control select2">
													<option>선택</option>
													<option value="">0. 원</option>
													<option value="">1. 천원</option>
													<option value="">2. 백만원</option>
											</select></td>
										</tr>
									</table>
									<hr>

									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link" id="home-tab"
											data-toggle="tab" href="#first" role="tab"
											aria-controls="home" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-home"></i></span>
												<span class="d-none d-sm-block">관리용</span>
										</a></li>
										<li class="nav-item"><a class="nav-link active"
											id="profile-tab" data-toggle="tab" href="#second" role="tab"
											aria-controls="profile" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">제출용</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="message-tab"
											data-toggle="tab" href="#third" role="tab"
											aria-controls="message" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">세목별</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 관리용 -->
										<div class="tab-pane" id="first" role="tabpanel"
											aria-labelledby="home-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th rowspan="2">과목</th>
																		<th>제 16 (당)기</th>
																		<th>제 15 (전)기</th>
																	</tr>

																	<tr>
																		<th>금액</th>
																		<th>금액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<!--  -->
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 제출용 -->
										<div class="tab-pane" id="second" role="tabpanel"
											aria-labelledby="message-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th rowspan="2">과목</th>
																		<th>제 16 (당)기</th>
																		<th>제 15 (전)기</th>
																	</tr>

																	<tr>
																		<th>금액</th>
																		<th>금액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<!--  -->
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- 세목별 -->
										<div class="tab-pane" id="third" role="tabpanel"
											aria-labelledby="message-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th rowspan="2">과목</th>
																		<th>제 16 (당)기</th>
																		<th>제 15 (전)기</th>
																	</tr>

																	<tr>
																		<th>금액</th>
																		<th>금액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<!--  -->
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