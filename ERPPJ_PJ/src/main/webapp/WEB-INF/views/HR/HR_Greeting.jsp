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
									<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>사원추가</button>
								</div>
								<h4 class="page-title">인사발령등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
			

			
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
			

			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<h4 class="header-title">발령등록</h4>
							<br><br>

							<div class="row">
								<div class="col-xl-6">
									<form action="HR_inputGreeting"class="form-horizontal" method="post">
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
										
										<div class="form-group mb-0">
											<input type="submit" class="btn btn-success"
												value="사원추가">
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