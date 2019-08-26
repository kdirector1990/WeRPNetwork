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
								<h4 class="page-title">인사발령리포트</h4>
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
									id="individual-tab" data-toggle="tab" href="#individual"
									role="tab" aria-controls="individual" aria-selected="false">
										<span class="d-block d-sm-none"><i
											class="fa fa-individual"></i></span> <span class="d-none d-sm-block">개인별</span>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									id="Classification-tab" data-toggle="tab" href="#Classification"
									role="tab" aria-controls="Classification" aria-selected="true">
										<span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
										<span class="d-none d-sm-block">발령구분별</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="appointment-tab"
									data-toggle="tab" href="#appointment" role="tab"
									aria-controls="appointment" aria-selected="false"> <span
										class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
										<span class="d-none d-sm-block">발령호수별</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="history-tab"
									data-toggle="tab" href="#history" role="tab"
									aria-controls="history" aria-selected="false"> <span
										class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
										<span class="d-none d-sm-block">발령내역별</span>
								</a></li>
							</ul>

							<div class="card-body table-responsive">
								<div align="right">
									<br>
								</div>
								<table id="datatable"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<tr>
										<td>사원코드</td>
										<td><select class="">
												<option value=""></option>
										</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>

										<td>발령일자</td>
										<td><input type="text" class="" value="">&nbsp; ~
											&nbsp; <input type="text" class="" value=""> <a
											href="#"><i class="dripicons-calendar"></i></a>&nbsp;</td>
									</tr>

									<tr>
										<td>발령구분</td>
										<td><select class="">
												<option value=""></option>
										</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>

										<td>발령호수</td>
										<td><select class="">
												<option value=""></option>
										</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>

										<td>발령내역</td>
										<td><select class="">
												<option value=""></option>
										</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
									</tr>
								</table>
							</div>
						</div>
					</div>

					<div class="tab-content">
						<!-- 개인별 -->
						<div class="tab-pane show active" id="individual" role="tabpanel"
							aria-labelledby="individual-tab">
							<input type="hidden" name="${_csrf.parameterName }"
								value="${_csrf.token }">
							<div class="col-sm-12">
								<div class="card-body table-responsive">
									<div class="table-responsive" style="margin: 15px 0px 50px">
										<table
											class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
											<thead>
												<tr>
													<th>사원코드</th>
													<th>사원명</th>
													<th>발령호수</th>
													<th>제목</th>
													<th>발령구분</th>
													<th>발령일자</th>
													<th>적용일자</th>
													<th>발령내역</th>
													<th>현정보</th>
													<th>발령전정보</th>
													<th>발령후정보</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>

						<!-- 발령구분별 -->
						<div class="tab-pane" id="Classification" role="tabpanel"
							aria-labelledby="Classification-tab">
							<div class="col-sm-12">
								<div class="card-body table-responsive">
									<div class="table-responsive" style="margin: 15px 0px 50px">
										<table
											class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
											<thead>
												<tr>
													<th>발령구분</th>
													<th>발령호수</th>
													<th>제목</th>
													<th>발령일자</th>
													<th>적용일자</th>
													<th>사원코드</th>
													<th>사원명</th>
													<th>발령내역</th>
													<th>현정보</th>
													<th>발령전정보</th>
													<th>발령후정보</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>

						<!-- 발령호수별 -->
						<div class="tab-pane" id="appointment" role="tabpanel"
							aria-labelledby="appointment-tab">
							<div class="col-sm-12">
								<div class="card-body table-responsive">
									<div class="table-responsive" style="margin: 15px 0px 50px">
										<table
											class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
											<thead>
												<tr>
													<th>발령호수</th>
													<th>발령구분</th>
													<th>제목</th>
													<th>발령일자</th>
													<th>적용일자</th>
													<th>사원코드</th>
													<th>사원명</th>
													<th>발령내역</th>
													<th>현정보</th>
													<th>발령전정보</th>
													<th>발령후정보</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 발령내역별 -->
						<div class="tab-pane" id="history" role="tabpanel"
							aria-labelledby="history-tab">
							<div class="col-sm-12">
								<div class="card-body table-responsive">
									<div class="table-responsive" style="margin: 15px 0px 50px">
										<table
											class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
											<thead>
												<tr>
													<th>발령내역</th>
													<th>발령호수</th>
													<th>발령구분</th>
													<th>제목</th>
													<th>발령일자</th>
													<th>적용일자</th>
													<th>사원코드</th>
													<th>사원명</th>
													<th>현정보</th>
													<th>발령전정보</th>
													<th>발령후정보</th>
												</tr>
											</thead>
										</table>
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

	
	</div>

	<%@ include file="../footer.jsp" %>

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