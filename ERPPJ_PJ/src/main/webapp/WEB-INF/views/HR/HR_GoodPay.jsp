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
									<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>일괄등록</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>일괄인상</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>호봉복사</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light">코드설정</button>
								</div>
								<h4 class="page-title">근태결과입력</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

			<div class="row">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered mb-0">
									<thead>
										<tr>
											<th scope="col" colspan="2">대 상 직 급</th>																						
										</tr>
										
										<tr>
											<th scope="col">코 드</th>
											<th scope="col">직 급</th>
										</tr>
									</thead>									
								</table>							
							</div>
							
							<div class="table-responsive">
								<table class="table table-bordered mb-0">
									<thead>
										<tr>
											<th scope="col" colspan="2">호봉이력</th>																						
										</tr>
										
										<tr>
											<th scope="col">적용시작연월</th>
											<th scope="col">적용종료연월</th>
										</tr>
									</thead>									
								</table>							
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered mb-0">
									<thead>
										<tr>
											<th rowspan="2" align="center">호 봉</th>
											<th colspan="3" align="center">호 봉 테 이 블</th>
											<th rowspan="2" align="center">합 계</th>																						
										</tr>
										
										<tr>
											<th scope="col" align="center">기 본 급</th>
											<th scope="col" align="center">급 호 수 당</th>
											<th scope="col" align="center">연 장 수 당</th>
										</tr>
									</thead>									
								</table>							
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