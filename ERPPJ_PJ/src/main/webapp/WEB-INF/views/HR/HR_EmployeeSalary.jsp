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
								<h4 class="page-title">책정임금현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
				</div>
			

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
									<td>사업장</td>
									<td><input type="text" class="" value="1000" readonly>&nbsp;<a
										href="#"><i class="dripicons-zoom-in"></i></a>
									<input type="text" class="" value="인사1급 회사본사">	
									</td>
									
									<td>부서</td>
									<td><input type="text" class="" value="1100" readonly>&nbsp;<a
										href="#"><i class="dripicons-zoom-in"></i></a>
									<input type="text" class="" value="총무부">	
									</td>
								</tr>

								<tr>
									<td>계약시작월</td>
									<td><input type="text" class="" value="">
										년&nbsp;
										<select class="" name="" onchange="">
											<option></option>
											<option value="">1월</option>
											<option value="">2월</option>
											<option value="">3월</option>
											<option value="">4월</option>
											<option value="">5월</option>
											<option value="">6월</option>
											<option value="">7월</option>
											<option value="">8월</option>
											<option value="">9월</option>
											<option value="">10월</option>
											<option value="">11월</option>
											<option value="">12월</option>
										</select>
										&nbsp;월 &nbsp; ~ &nbsp;
										
										<input type="text" class="" value="">
										년&nbsp;
										<select class="" name="" onchange="">
											<option></option>
											<option value="">1월</option>
											<option value="">2월</option>
											<option value="">3월</option>
											<option value="">4월</option>
											<option value="">5월</option>
											<option value="">6월</option>
											<option value="">7월</option>
											<option value="">8월</option>
											<option value="">9월</option>
											<option value="">10월</option>
											<option value="">11월</option>
											<option value="">12월</option>
										</select>
										&nbsp;월 
									</td>
										

									<td>퇴사자</td>
									<td>
										<select class="" name="" onchange="">
											<option></option>
											<option value="">0. 제외</option>
											<option value="">1. 포함</option>											
										</select>
										<br><br>
									</td>
								</tr>
							</table>
							
							<table id="datatable"
								class="table table-striped table-bordered dt-responsive nowrap"
								style="border-collapse: collapse; border-spacing: 0; width: 100%;">
								<br>
								<br>
								<thead>
									<tr>
										<th>NO</th>
										<th>사원코드</th>
										<th>사원명</th>
										<th>부서</th>
										<th>직책</th>
										<th>입사일</th>
										<th>직종</th>
										<th>급여형태</th>
										<th>계약시작월</th>
										<th>연봉</th>
										<th>월급</th>
										<th>일급</th>
										<th>시급</th>
									</tr>
								</thead>

							</table>

						</div>
					</div>
				</div>
			</div>



			<%@ include file="../footer.jsp" %>

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