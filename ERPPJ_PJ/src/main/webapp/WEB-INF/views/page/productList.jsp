<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<<<<<<< HEAD
<%@ include file="../setting.jsp"%>
<script type="text/javascript">
function allcheck(){
	if($("#allChecked").prop("checked")){
		$(".checklist").prop("checked", true);
	}
	else{
		$(".checklist").prop("checked", false);
	}
}
     
</script>
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">..</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">..</a></li>
									<li class="breadcrumb-item active">..</li>
								</ol>
							</div>
							<h4 class="page-title">구매페이지</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<!-- 구매페이지 원재료목록  -->
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">구매페이지</h4>
								<p class="sub-header">구매페이지</p>
								<hr>
								<div class="form-horizontal">
									<form id="manageMF_plan" method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<table id="datatable"
											class="table m-0 table-bordered table-hover"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<col style="width: 5%;">
											<col style="width: 35%;">
											<col style="width: 20%">
											<col style="width: 20%;">
											<col style="width: 20%;">
											<thead class="bg-primary text-white">
												<tr>
													<th><input type="checkbox" id="allChecked" name="salesTeam" onclick="allcheck();"></th>
													<th>자재명</th>
													<th>단위</th>
													<th>가격</th>
													<th>수량</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="list" items="${dto}">
													<tr>
														<td><input type="checkbox" class="checklist" name="salesTeam" value="${list.material_code}"></td>
														<td>${list.material_name}</td>
														<td>${list.material_unit}</td>
														<td><input type="text" name="price"></td>
														 <td><input type="text" name="num" value="1" id="" class="num"/>
												</c:forEach>
											</tbody>
										</table>
										
										<hr>
										<div align="right">
											<button type="button"
												class="btn btn-dark waves-effect waves-light"
												onclick=";">구매</button>
										</div>
									</form>
								</div>

								<%-- <div class="result">
									<br>
									<form id="MF_production_plan_enrollment">
										<input type='hidden' name="${_csrf.parameterName }"
											value="${_csrf.token }"> <br>
										<table id="datatable2"
											class="table table-striped dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0;">
											<thead>
											</thead>

											<tbody>
											</tbody>
										</table>
									</form>
								</div> --%>
							</div>
						</div>
					</div>
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->

		<%@ include file="../footer.jsp"%>


		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

	<!-- Datatable plugin js -->
	<script
		src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>
=======
<%@ include file="../setting.jsp"%> 
<script type="text/javascript">
        
</script>
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
							<h4 class="page-title">기획서등록</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">등록</h4>
								<p class="sub-header">기획서 등록</p>

								<form action="MS_insertPlanPro" id="insertPlan">
									<table id="datatable"
									class="table m-0 table-bordered"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead class="">
										<tr>
											<th>제품명</th>
											<th>가격</th>
											<th>재고</th>
										</tr>
									</thead>
									
									</tbody>
								</table>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->
			 <%@ include file="../footer.jsp"%>

		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->


	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
>>>>>>> branch 'master' of https://github.com/kdirector1990/WeRPNetwork.git
</body>
</html>