<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
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
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">UI Kit</a></li>
										<li class="breadcrumb-item active">Images</li>
									</ol>
								</div>
								<h2 class="page-title">판매계획 대비 출고 현황</h2>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<!-- end row-->

					<!-- ===== MEDIA ==== -->
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">품목</th>
											<td class="col-md-2 input-group"><input type="text"
												name="" id="" class="form-control"></td>

											<th class="col-md-1 col-form-label">기간</th>
											<td class="col-md-2 input-group"><input type="text"
												name="" id="" class="form-control"></td>
										</tr>
									</table>
									<div align="right">
										<button type="button"
											class="btn btn-dark waves-effect waves-light">조회</button>
									</div>
									<hr>


									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="home-tab" data-toggle="tab" href="#home" role="tab"
											aria-controls="home" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-home"></i></span>
												<span class="d-none d-sm-block">품목</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-toggle="tab" href="#profile" role="tab"
											aria-controls="profile" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">품목군</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="message-tab"
											data-toggle="tab" href="#message" role="tab"
											aria-controls="message" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">월별</span>
										</a></li>
									</ul>

									<!-- 품목 -->
									<div class="tab-content">
										<div class="tab-pane" id="home" role="tabpanel"
											aria-labelledby="home-tab">
											<div class="row">
												<div class="col-lg-12">
													<div class="card">
														<div class="card-body">
															<p class="sub-header"></p>
															<table class="table m-0 table-hover table-bordered">
																<thead>
																	<tr>
																		<th>품번</th>
																		<th>품명</th>
																		<th>규격</th>
																		<th>단위</th>
																		<th>계획 수량</th>
																		<th>출고 수량</th>
																		<th>계획 금액</th>
																		<th>출고 금액</th>
																		<th>달성율</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>

											</div>

										</div>
										<!-- tab-pane -->


										<!-- 품목군 -->
										<div class="tab-pane show active" id="profile" role="tabpanel"
											aria-labelledby="profile-tab">
											<div class="row">
												<div class="col-lg-12">
													<div class="card">
														<div class="card-body">
															<p class="sub-header"></p>
															<table class="table m-0 table-hover table-bordered">
																<thead>
																	<tr>
																		<th>코드</th>
																		<th>품목군</th>
																		<th>계획수량</th>
																		<th>출고 수량</th>
																		<th>계획 금액</th>
																		<th>출고 금액</th>
																		<th>달성율</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>

											</div>
											<!-- 품목군 -->
										</div>

										<!-- 월별 -->
										<div class="tab-pane" id="message" role="tabpanel"
											aria-labelledby="message-tab">
											<div class="row">
												<div class="col-lg-12">
													<div class="card">
														<div class="card-body">
															<p class="sub-header"></p>
															<table class="table m-0 table-hover table-bordered">
																<thead>
																	<tr>
																		<th>월</th>
																		<th>계획 수량</th>
																		<th>출고 수량</th>
																		<th>계획 금액</th>
																		<th>출고 금액</th>
																		<th>달성율</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
																		<td>Table cell</td>
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
					<!-- end col -->
				</div>
				<!-- end container-fluid -->

			</div>
			<!-- end content -->



			<%@ include file="../footer.jsp"%>

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp" %>
    <%@ include file="../setting2.jsp" %>

</body>
</html>