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
								<h4 class="page-title">인사정보현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
				
			

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">
								<table id="datatable"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<tr>
										<th>조회조건</th>
										<td><select class="" name="" disabled>
												<option></option>
												<option value="">1. 사업장</option>
										</select>&nbsp; ~ &nbsp; <select class="" name="" disabled>
												<option></option>
										</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>

										<th>재직구분</th>
										<td><select class="" name="" disabled>
												<option></option>
										</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>

										<th>직급</th>
										<td><select class="" name="" disabled>
												<option></option>
										</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
									</tr>
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
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active" id="study-tab"
									data-toggle="tab" href="#study" role="tab"
									aria-controls="study" aria-selected="true"> <span
										class="d-block d-sm-none"><i class="fa fa-study"></i></span> <span
										class="d-none d-sm-block">교육</span>
								</a></li>
								<li class="nav-item"><a class="nav-link"
									id="presidency-tab" data-toggle="tab" href="#trip" role="tab"
									aria-controls="trip" aria-selected="true"> <span
										class="d-block d-sm-none"><i class="fa fa-user"></i></span> <span
										class="d-none d-sm-block">출장</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="message-tab"
									data-toggle="tab" href="#Passport/Visa" role="tab"
									aria-controls="Passport/Visa" aria-selected="false"> <span
										class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
										<span class="d-none d-sm-block">여권/비자</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="message-tab"
									data-toggle="tab" href="#Qualifications" role="tab"
									aria-controls="Qualifications" aria-selected="false"> <span
										class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
										<span class="d-none d-sm-block">자격/면허</span>
								</a></li>
								<li class="nav-item"><a class="nav-link" id="message-tab"
									data-toggle="tab" href="#AddedInfo" role="tab"
									aria-controls="AddedInfo" aria-selected="false"> <span
										class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
										<span class="d-none d-sm-block">추가정보</span>
								</a></li>
							</ul>
							<div class="tab-content">
								<!-- 잔액 -->
								<div class="tab-pane" id="study" role="tabpanel"
									aria-labelledby="study-tab">
									<div class="col-sm-12">
										<div class="card">
											<div class="card-body table-responsive">
												<div align="right">
													<br>
												</div>
												<table id="datatable"
													style="border-collapse: collapse; border-spacing: 0; width: 100%;">
													<tr>
														<td>기간</td>
														<td><input type="text" class="" value="____/__/__">&nbsp; ~ &nbsp;<input
															type="text" class="" value="____/__/__">
															<a href="#"><i class="dripicons-calendar"></i></a>
														</td>

														<td>교육명</td>
														<td><input type="text" class="">&nbsp;<a
															href="#"><i class="dripicons-zoom-in"></i></a><input
															type="text" class=""></td>
													</tr>
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
		

		<%@ include file="../footer.jsp" %>
		</div>
		</div>
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