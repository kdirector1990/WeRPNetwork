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
								<h4 class="page-title">인사발령공고</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->



					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<div align="right">
										<br>
									</div>
									<table class="col-12" id="datatable"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr class="form-group row">
											<td class="col-md-1 col-form-label">발령호수</td>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="사원코드">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
										</tr>
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">발령구분</th>
											<td class="col-md-2 input-group"><select
												class="form-control select2" name="" onchange="">
													<option value=""></option>
											</select></td>
											<th class="col-md-1 col-form-label">발령일자
											</td>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="발령호수">
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div></td>
											<th class="col-md-1 col-form-label">제목</th>
											<td class="col-md-2 input-group"><input type="text"
												class="form-control" name="" placeholder="제목"></td>
										</tr>
									</table>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-xl-6">
								<div class="card">
									<div class="card-body">
										<table id="datatable"
											class="table table-striped table-bordered dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<thead>
												<tr>
													<th rowspan="2">NO</th>
													<th colspan="4">발령대상자</th>
												</tr>
												<tr>
													<th>사번</th>
													<th>성명</th>
													<th>부서</th>
													<th>직책</th>
												</tr>
											</thead>

										</table>
									</div>
								</div>
							</div>
							<!-- end col -->

							<div class="col-xl-6">
								<div class="card">
									<div class="card-body">
										<table id="datatable"
											class="table table-striped table-bordered dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<thead>
												<tr>
													<th rowspan="2">NO</th>
													<th colspan="4">발령내역</th>
												</tr>
												<tr>
													<th>발령내역</th>
													<th>현정보</th>
													<th>발령후정보</th>
													<th>비고</th>
												</tr>
											</thead>

										</table>



									</div>
								</div>

							</div>
							<!-- end col -->
						</div>
					</div>

					<div class="row">
						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr>
											<td>비고</td>
											<td><textarea class="" rows="10" cols="40"
													name="content" style="width: 500px"
													placeholder="글내용을 입력하세요 !" word-break:break-all>
									</textarea></td>
										</tr>

									</table>
								</div>
							</div>
						</div>
						<!-- end col -->

						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">


									</table>
								</div>
							</div>

						</div>
						<!-- end col -->
					</div>


					<%@ include file="../footer.jsp"%>
				</div>
			</div>
		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<!-- Right Sidebar -->
	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

</body>
</html>