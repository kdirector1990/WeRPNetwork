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
									<button type="button" class="btn btn-outline-primary waves-effect waves-light">코드표</button>
									<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>근태코드등록</button>
								</div>
								<h4 class="page-title">인사기초코드등록</h4>
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
							<table id="datatable"
								style="border-collapse: collapse; border-spacing: 0; width: 100%;">
								<tr>
									<td>출력구분</td>
									<td>
										<select class="" name="" onchange="">										
											<option value="">0. 인사(H,R)</option>
											<option value="">1. 근태(R)</option>
											<option value="">2. 급여(P)</option>
											<option value="">3. 사회보험(I)</option>
											<option value="">4. 사원그룹(G)</option>
											<option value="">5. 사업/기타소득(B)</option>
											<option value="">6. 기타(E)</option>
											<option value="">7. 시스템설정(S)</option>
											<option value="">8. 전체</option>											
										</select></td>

									<td>검색</td>
									<td><input type="text" class="">&nbsp;&nbsp;<button type="button" class="btn btn-outline-primary waves-effect waves-light">찾기</button></td>
								</tr>								
							</table>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered mb-0">
									<thead>									
										<tr>
											<th scope="col">코 드</th>
											<th scope="col">관 리 항 목 명</th>
											<th scope="col">수 정 여 부</th>
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
											<th rowspan="2" align="center">코 드</th>
											<th colspan="3" align="center">관 리 내 역 명</th>
											<th rowspan="2" align="center">사 용 여 부</th>
											<th colspan="3" align="center">사 용 종 료 일</th>
											<th rowspan="2" align="center">비 고</th>																							
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