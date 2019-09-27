<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
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
											<col style="width: 25%;">
											<col style="width: 20%">
											<col style="width: 20%;">
											<col style="width: 20%;">
											<col style="width: 10%;">
											<thead class="bg-primary text-white">
												<tr>
													<th><input type="checkbox" id="allChecked" name="material_code" onclick="allcheck();"></th>
													<th>자재명</th>
													<th>단위</th>
													<th>가격</th>
													<th>수량</th>
													<th>구매처</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="list" items="${dto}">
													<tr>
														<td><input type="checkbox" class="checklist" name="material_code" value="${list.material_code}"></td>
														<td>${list.material_name}</td>
														<td>${list.material_unit}</td>
														<td><input type="text" name="price"></td>
														<td><input type="text" name="num" value="1" id="" class="num"/>
														<td>
														<select name="salesTeam">
															<option value="" disabled>선택</option>
															<option value="1팀">(주)심장</option>
															<option value="2팀">(주)북두칠성</option>
															<option value="3팀">(주)창공</option>
															<option value="4팀">(주)돼지</option>
														</select>
														</td>
													 </tr>
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
</body>
</html>