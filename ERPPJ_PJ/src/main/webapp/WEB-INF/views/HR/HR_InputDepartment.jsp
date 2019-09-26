<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
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
											href="javascript: void(0);">부서</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">부서관리</a></li>
									</ol>
								</div>
								<h4 class="page-title">부서 등록</h4>
							</div>
						</div>
					</div>
					<!-- 페이지 내용 입력 공간 -->
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<form action="HR_inputDepartmentPro" class="form-horizontal"
										id="department" method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div class="card-body">
											<h4 class="header-title">새 부서 등록</h4>
											<h4 class="header-title">&nbsp;</h4>
											<div class="form-group row">
												<label class="col-md-1 col-form-label" for="simpleinput">부서
													코드<span class="text-danger">*</span>
												</label>
												<div class="col-md-4">
													<input type="text" class="form-control"
														id="department_code" name="department_code"
														placeholder="부서 코드">
												</div>
												<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
												<label class="col-md-1 col-form-label" for="simpleinput">부서명<span
													class="text-danger">*</span></label>
												<div class="col-md-4">
													<input type="text" class="form-control"
														id="department_name" name="department_name"
														placeholder="부서명">
												</div>
											</div>

											<div class="form-group text-right mb-0">
												<button
													class="btn btn-primary waves-effect waves-light mr-1"
													type="submit">Submit</button>
												<button type="reset" class="btn btn-secondary waves-effect">
													Cancel</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

					<!-- 페이지 내용 입력 공간 종료 -->

					<%@ include file="../footer.jsp"%>

				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Page content -->
			<!-- ============================================================== -->

		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
</body>
</html>