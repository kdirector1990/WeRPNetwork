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
									<button type="button"
										class="btn btn-outline-primary waves-effect waves-light">코드설정</button>
									<button type="button"
										class="btn btn-outline-primary waves-effect waves-light"
										disabled>주사업장등록</button>
								</div>
								<h4 class="page-title">인사/급여환경설정</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->


					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="standard-tab" data-toggle="tab" href="#standard"
											role="tab" aria-controls="standard" aria-selected="true">
												<span class="d-block d-sm-none"><i
													class="fa fa-study"></i></span> <span class="d-none d-sm-block">기준설정</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="total-tab"
											data-toggle="tab" href="#total" role="tab"
											aria-controls="total" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">집계항목</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 잔액 -->
										<div class="tab-pane" id="standard" role="tabpanel"
											aria-labelledby="standard-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body">
														<div align="right">
															<br>
														</div>
														<table id="datatable"
															class="table table-striped table-bordered dt-responsive nowrap"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<thead>
																<tr>
																	<th rowspan="2" align="center">구분</th>
																	<th colspan="3" align="center">인사급여환경설정</th>
																</tr>
																<tr>
																	<th>환경요소</th>
																	<th>기준</th>
																	<th>기준일(월)수</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td rowspan="9" align="center">급여계산기준</td>
																</tr>

																<tr>
																	<td>입사자 급여계산</td>
																	<td>월</td>
																	<td></td>
																</tr>

																<tr>
																	<td>수습직 지급기간</td>
																	<td></td>
																	<td></td>
																</tr>

																<tr>
																	<td>수습직 급여계산</td>
																	<td></td>
																	<td></td>
																</tr>

																<tr>
																	<td>수습직 지급율</td>
																	<td></td>
																	<td></td>
																</tr>

																<tr>
																	<td>퇴사자 급여계산</td>
																	<td>일</td>
																	<td></td>
																</tr>

																<tr>
																	<td>상여세액계산기준</td>
																	<td>당해년일</td>
																	<td></td>
																</tr>

																<tr>
																	<td>외국인비과세율</td>
																	<td></td>
																	<td></td>
																</tr>

																<tr>
																	<td>근속기간계산기준</td>
																	<td>입사일</td>
																	<td></td>
																</tr>

																<tr>
																	<td rowspan="5" align="center">근태기준설정</td>
																</tr>

																<tr>
																	<td>한달 정상일</td>
																	<td></td>
																	<td>30일</td>
																</tr>

																<tr>
																	<td>한달 정상시간</td>
																	<td></td>
																	<td>240시간</td>
																</tr>

																<tr>
																	<td>하루시간</td>
																	<td></td>
																	<td>8시간</td>
																</tr>

																<tr>
																	<td>월일수 산정</td>
																	<td>당월일</td>
																	<td></td>
																</tr>

																<tr>
																	<td rowspan="4" align="center">신고기준설정</td>
																</tr>

																<tr>
																	<td>원천세 신고유형</td>
																	<td>본점일괄신고</td>
																	<td></td>
																</tr>

																<tr>
																	<td>이행상황신고집계방식</td>
																	<td>귀속연월</td>
																	<td></td>
																</tr>

																<tr>
																	<td>지방소득세/주민세(종업원분)집계방식</td>
																	<td>지급연월</td>
																	<td></td>
																</tr>

																<tr>
																	<td align="center">사업/기타/이자배당</td>
																	<td>전표생성체크여부</td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>

										<div class="tab-pane" id="total" role="tabpanel"
											aria-labelledby="total-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body">
														<table id="datatable"
															class="table table-striped table-bordered dt-responsive nowrap"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<thead>
																<tr>
																	<th align="center">구분</th>
																	<th align="center">항목</th>
																	<th align="center">설정코드</th>
																	<th align="center">비고</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td rowspan="4" align="center">사회보험설정</td>
																</tr>

																<tr>
																	<td align="center">건강보험정산코드</td>
																	<td></td>
																	<td></td>
																</tr>

																<tr>
																	<td align="center">국민연금정산코드</td>
																	<td></td>
																	<td></td>
																</tr>

																<tr>
																	<td align="center">고용보험정산코드</td>
																	<td></td>
																	<td></td>
																</tr>

																<tr>
																	<td align="center">공제항목설정</td>
																	<td align="center">학자금상환코드</td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>

									</div>

								</div>
							</div>
						</div>
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