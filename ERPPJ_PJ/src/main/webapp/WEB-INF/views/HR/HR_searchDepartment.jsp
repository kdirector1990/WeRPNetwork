<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">

<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
	$(function() {
		$('#search')
				.click(
						function() {
							var param = {

							}
							param.department_code = $("#department_code").val();
							param.department_name = $("#department_name").val();

							/* alert(param.pa_name);
							alert(param.username);
							alert(param.e_name);
							alert(param.pa_date); */
							$
									.ajax({
										url : '${pageContext.request.contextPath}/HR_searchDepartment_result?${_csrf.parameterName}=${_csrf.token }',
										type : 'GET',
										data : param,
										success : function(data) {
											$('#result').html(data);
										},
										error : function() {
											alert("에러");
										}
									});
						});
	});
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
											href="javascript: void(0);">WeRP</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사정보</a></li>
										<li class="breadcrumb-item active">인사고과/상벌현황</li>
									</ol>
								</div>
								<h4 class="page-title">부서조회</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">부서명</th>
											<td class="col-md-2 input-group"><select
												class="form-control select2" id="department_name"
												name="department_name">
													<option></option>
													<option value="1">인사</option>
													<option value="2">기획</option>
													<option value="3">영업</option>
													<option value="4">재무</option>
													<option value="5">전산</option>
													<option value="6">제조</option>
											</select></td>
											<th class="col-md-1 col-form-label">&nbsp;</th>
											<th class="col-md-1 col-form-label">부서코드 검색</th>
											<td class="col-md-1 input-group"><input type="text"
												class="form-control" name="department_code"
												id="department_code"></td>
											<td><button type="button"
													class="btn btn-primary waves-effect waves-light"
													id="search">검색</button></td>
										</tr>
									</table>


								</div>
							</div>
						</div>
					</div>

				</div>
				<div id="result"></div>

				<!-- 페이지 내용 입력 공간 종료 -->

				<%@ include file="../footer.jsp"%>

			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>

	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
</body>
</html>