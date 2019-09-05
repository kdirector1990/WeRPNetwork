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
											href="javascript: void(0);">인사</a></li>
										<li class="breadcrumb-item active">인사/급여관리</li>
									</ol>
								</div>
								<h4 class="page-title">근태결과입력</h4>
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
									<td>귀속연월</td>
									<td><input type="text" class="" value=""> 년&nbsp;
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
									</select> &nbsp;월 &nbsp;</td>

									<td>지급일</td>
									<td><input type="text" class="">&nbsp;<a href="#"><i
											class="dripicons-zoom-in"></i></a> <input type="text" class=""
										disabled></td>
								</tr>

								<tr>
									<td>조회조건</td>
									<td><select class="" name="" onchange="">
											<option></option>
											<option value="">1. 사업장</option>
											<option value="">2. 부서</option>
											<option value="">3. 근무조</option>
											<option value="">4. 프로젝트</option>
									</select></td>

									<td>사업장</td>
									<td><select class="" name="" onchange="">
											<option></option>
											<option value="">1. 사업장</option>
											<option value="">2. 부서</option>
											<option value="">3. 근무조</option>
											<option value="">4. 프로젝트</option>
									</select>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
								</tr>
							</table>

						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="row">
					<div class="col-xl-6">
						<div class="card">
							<div class="card-body">
								<table id="datatable"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead>										
										<tr>
											<th>N O</th>
											<th><input type="checkbox" name=""></th>
											<th>사 원 코 드</th>
											<th>성 명</th>
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
											<th colspan="3">근무일별 근태집계</th>
										</tr>
										<tr>
											<th>구 분</th>
											<th>일 수</th>
											<th>시 간</th>											
										</tr>
									</thead>
								</table>
								
								<table id="datatable"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead>
										<tr>											
											<th colspan="3">총 근태일수/시간</th>
										</tr>
										<tr>
											<th>구 분</th>
											<th>일 수</th>
											<th>시 간</th>											
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
											<th colspan="3">근태결과일 근태집계</th>
										</tr>
										<tr>
											<th>구 분</th>
											<th>일 수</th>																						
										</tr>
									</thead>
								</table>							
								
							</div>
						</div>					
					</div>
					
					<div class="col-xl-6">
						<div class="card">
							<div class="card-body">
								<table id="datatable"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead>
										<tr>											
											<th colspan="4">지각조퇴/사용자정의</th>
										</tr>
										<tr>
											<th>구 분</th>
											<th>일 수</th>
											<th>시 간</th>
											<th>금 액</th>																						
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