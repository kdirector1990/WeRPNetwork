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
function usernameList() {
	window.open("HR_searchUsername", "username_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}

function ap_nameList() {
	window.open("HR_searchAp_code", "ap_name_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}
    	
    </script>
<!-- Table datatable css -->
<link
	href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
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
									<button type="button"
										class="btn btn-outline-primary waves-effect waves-light"
										disabled>사원추가</button>
								</div>
								<h4 class="page-title">인사발령등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->



					<div class="row">
						<div class="col-sm-12">							
							<div class="card">
								<div class="card-body">
									<h4 class="header-title">직책변경공고등록</h4>
									<p class="sub-header"></p>

									<form class="form-horizontal" action="HR_recordinput" method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div class="row">
											<div class="col-xl-7">
												<div class="form-group row">
													<label class="col-md-1 col-form-label">사원번호</label>
													<div class="col-md-10">
														<input type="text" name="username" id="username"
															class="form-control" required placeholder="사원번호"
															onclick="usernameList()" />
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-1 col-form-label">사원명</label>
													<div class="col-md-10">
														<input type="text" name="e_name" id="e_name"
															class="form-control" required placeholder="사원명" readonly />
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-1 col-form-label">부서코드</label>
													<div class="col-md-10">
														<input type="text" name="department_code" id="department_code"
															class="form-control" required placeholder="부서" readonly />
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-1 col-form-label">직책코드</label>
													<div class="col-md-10">
														<input type="text" name="position_code" id="position_code"
															class="form-control" required placeholder="직책" readonly />
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-1 col-form-label">직급 변경일</label>
													<div class="col-md-10">
														<div class="input-group">
															<input type="date" name="record_date" class="form-control">
															<div class="input-group-append">
																<span class="input-group-text bg-primary text-white b-0"><i
																	class="mdi mdi-calendar"></i></span>
															</div>
														</div>
													</div>
												</div>

												<!-- <div class="form-group row">
													<label class="col-md-1 col-form-label">변경 후 직급 변경일</label>
													<div class="col-md-10">
														<div class="input-group">
															<input type="date" name="record_date_after" 
																class="form-control">
															<div class="input-group-append">
																<span class="input-group-text bg-primary text-white b-0"><i
																	class="mdi mdi-calendar"></i></span>
															</div>
														</div>
													</div>
												</div> -->
											</div>

											<div class="col-xl-5">
												<div class="form-group row">
													<label class="col-md-2 col-form-label">공고 코드</label>
													<div class="col-md-10">
														<input type="text" name="ap_code" id="ap_code"
															class="form-control" value="" onclick="ap_nameList()">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">공고명</label>
													<div class="col-md-10">
														<input type="text" name="ap_name" id="ap_name"
															class="form-control" required placeholder="공고명" readonly>
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">변경 후 부서</label>
													<div class="col-md-10">
														<select class="selectpicker" data-live-search="true"
															name="department_code_after" id="department_code_after"
															onchange="">
															<option value="">부서를 선택하세요</option>
															<c:forEach var="dep" items="${dep}">
																<option value="${dep.department_code}">${dep.department_name}</option>
															</c:forEach>
														</select>
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">변경 후 직책</label>
													<div class="col-md-10">
														<select class="selectpicker" data-live-search="true"
															name="position_code_after" id="position_code_after"
															onchange="">
															<option value="">직책을 선택하세요</option>
															<c:forEach var="poi" items="${poi}">
																<option value="${poi.position_code}">${poi.position_name}</option>
															</c:forEach>
														</select>
													</div>
												</div>

											</div>
											<!-- end col -->

											<div class="form-group mb-0">
												<div>
													<button type="submit"
														class="btn btn-primary waves-effect waves-light mr-1">
														등록</button>
													<button type="reset"
														class="btn btn-secondary waves-effect waves-light">
														취소</button>
												</div>
											</div>
											<!-- end row -->
										</div>
									</form>
								</div>
							</div>														
						</div>
					</div>


					<div class="row">
						<div class="col-sm-8">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title">발령공고</h4>									

									<div class="row">
										<div class="col-xl-6">
											<form action="HR_APinput" class="form-horizontal" method="post">
												<input type="hidden" name="${_csrf.parameterName }"	value="${_csrf.token }">												
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">공고명</label>
													<div class="col-md-10">
														<input type="text" id="simpleinput" class="form-control"
															name="ap_name">
													</div>
												</div>																								
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">공고시행일</label>
													<div class="col-md-10">
														<input type="date" name="ap_est_date"
															placeholder="mm/dd/yyyy" style="size: 100px;" class="form-control"> 
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label"
														for="example-textarea">공고상태</label>
													<div class="col-md-10">
														<select class="selectpicker form-control" name="ap_status" data-live-search="true"
															onchange="">
															<option value="1"> 공고예정</option>
															<option value="2"> 공고중</option>
															<option value="3"> 시행완료</option>
															<option value="4"> 시행취소</option>
															<option value="5"> 삭제</option>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">공고내용</label>
													<div class="col-md-10">
														<textarea id ="textarea" class="form-control" rows="10"
													name="ap_content"
													placeholder="글내용을 입력하세요 !" word-break:break-all></textarea>
													</div>
												</div>

												<div class="form-group mb-0">
													<input type="submit" formaction="HR_modifyFoundationPro?${_csrf.parameterName}=${_csrf.token }" class="btn btn-success" value="공고등록">
												</div>
											</form>
										</div>
										
										
										<!-- end col -->
									</div>
									<!-- end row -->

								</div>
							</div>
						</div>
						<!-- end col -->
					</div>


					<%@ include file="../footer.jsp"%>
				</div>
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