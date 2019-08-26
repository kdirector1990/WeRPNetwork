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
								<h4 class="page-title">근속년수현황 </h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
			

			
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">
								<table>
									<tr>
										<th>사업장</th>
										<td><input class="input" type="text" name=""
											 value="1000" readonly>&nbsp;<a
										href="#"><i class="dripicons-zoom-in"></i></a> <input class="input" type="text"
											name="" value="인사1급 회사본사">&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<th><select class="input" name="department" onchange="">
												<option value="">0.부서</option>
												<option value="">1.직종</option>
												<option value="">2.직책</option>
										</select></th>
										<td><select class="input" name="department2" disabled>
												<option value="">1100 총무부</option>
										</select>&nbsp;<a
										href="#"><i class="dripicons-zoom-in"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<th>퇴사자</th>
										<td><select class="input" name="department" onchange="">
												<option value="">0. 제외</option>
												<option value="">1. 포함</option>												
										</select></td>
									</tr>

									<tr>
										<th>기준일</th>
										<td><input class="input" type="text" name="" value="2019/08/14">&nbsp;<a
										href="#"><i class="dripicons-zoom-in"></i></a>&nbsp;&nbsp;</td>
										<th>년수기준</th>
										<td><select class="input" name="year" onchange="">
												<option value="">1. 미만일수 버림</option>
												<option value="">2. 미만일수 올림</option>
												<option value="">3. 미만일수 표시</option>
										</select>&nbsp;&nbsp;</td>
										<th>경력포함</th>
										<td><select class="input" name="career" onchange="">
												<option value="">0. 제외</option>
												<option value="">1. 포함(근속기간'여'만)</option>
												<option value="">2. 포함(모든 경력사항)</option>
												<option value="">3. 포함(병역 복무기간)</option>
										</select>&nbsp;&nbsp;</td>
									</tr>

								</table>

								<table id="datatable"
									class="table table-striped table-bordered dt-responsive nowrap"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead>
										<tr>
											<th>NO</th>
											<th>사원코드</th>
											<th>사원명</th>
											<th>부서</th>
											<th>직책</th>
											<th>입사일</th>
											<th>년수</th>
											<th>주민번호</th>
											<th>군복무기간</th>
											<th>총근속기간</th>											
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