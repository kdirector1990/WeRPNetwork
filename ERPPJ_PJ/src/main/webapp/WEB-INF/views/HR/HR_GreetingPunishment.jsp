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
									<button type="button" class="btn btn-outline-primary waves-effect waves-light">사원검색</button>
								</div>
								<h4 class="page-title">인사고과/상벌현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
				</div>
			</div>

			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">
								<table>
									<tr>
										<th>고과명</th>
										<td><select class="" name="" onchange="">
												<option></option>																							
											</select> &nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>&nbsp;&nbsp;&nbsp;</td>
										
										<th>사업장</th>
										<td><select class="" name="" onchange="">
												<option></option>																						
											</select> &nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>&nbsp;&nbsp;&nbsp;</td>
									</tr>
									
									<tr>
										<th>사원카드</th>
										<td><select class="" name="" onchange="">
												<option></option>																						
											</select> &nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>&nbsp;&nbsp;&nbsp;</td>
										
										<th>퇴사자</th>
										<td><select class="" name="" onchange="">
												<option></option>
												<option value="">0. 제외</option>
												<option value="">1. 포함</option>																						
											</select> &nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>&nbsp;&nbsp;&nbsp;</td>
										
										<th>고과일자</th>
										<td><input type="text" class="" value="____/__/__">&nbsp;
											~ &nbsp;
											<input type="text" class="" value="____/__/__">
										<a href="#"><i class="dripicons-calendar"></i></a>&nbsp;</td>
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
											<th>고과명</th>
											<th>평가시작일</th>
											<th>평가종료일</th>
											<th>고과일자</th>
											<th>고과자</th>
											<th>반영율</th>
											<th>점수</th>
											<th>등급</th>
											<th>비고</th>
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

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

		<%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
</body>
</html>