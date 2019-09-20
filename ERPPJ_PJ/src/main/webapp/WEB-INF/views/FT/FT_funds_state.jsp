<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>

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
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">자금현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div align="right">
										<button type="button"
											class="btn btn-outline-primary waves-effect waves-light">계정등록</button>
									</div>

									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="home-tab" data-toggle="tab" href="#home" role="tab"
											aria-controls="home" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-home"></i></span>
												<span class="d-none d-sm-block">총괄거래현황</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-toggle="tab" href="#profile" role="tab"
											aria-controls="profile" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">어음현황</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="message-tab"
											data-toggle="tab" href="#message" role="tab"
											aria-controls="message" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">자금집행실적</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="setting-tab"
											data-toggle="tab" href="#setting" role="tab"
											aria-controls="setting" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-cog"></i></span> <span
												class="d-none d-sm-block">일일자금계획</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 총괄거래현황 -->
										<div class="tab-pane active" id="home" role="tabpanel"
											aria-labelledby="home-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body">
														<form>
															<div class="form-group mb-3">
																<table id="datatable"
																	style="border-collapse: collapse; border-spacing: 0; width: 100%;">
																	<tr class="form-group row">
																		<th class="col-md-1 col-form-label">회계단위</th>
																		<td class="col-md-2 input-group"><select
																			class="form-control" name="" onchange="">
																				<option>전체선택</option>
																				<option>1000(주)한국생상 본점</option>
																		</select>
																			<div class="input-group-append">
																				<button type="button"
																					class="btn btn-icon waves-effect waves-light btn-primary">
																					<i class="fas fa-search"></i>
																				</button>
																			</div></td>
																		<th class="col-md-1 col-form-label">조회기간</th>
																		<td><input
																			class="form-control input-daterange-datepicker"
																			type="text" name="daterange" /></td>
																		<th class="col-md-1 col-form-label">계정구분</th>
																		<td class="col-md-2 input-group"><select
																			class="form-control" name="" onchange="">
																				<option>계정별</option>
																				<option>세목별</option>
																		</select></td>
																		<th class="col-md-1 col-form-label">자금계정</th>
																		<td class="col-md-2 input-group"><select
																			class="form-control" name="" onchange="">
																				<option>계정별</option>
																				<option>세목별</option>
																		</select>
																			<div class="input-group-append">
																				<button type="button"
																					class="btn btn-icon waves-effect waves-light btn-primary">
																					<i class="fas fa-search"></i>
																				</button>
																			</div></td>
																	</tr>
																</table>
															</div>
														</form>
														<hr>

														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th>NO</th>
																		<th>구분</th>
																		<th>계좌번호</th>
																		<th>거래처</th>
																		<th>전일말잔액</th>
																		<th>차월한도</th>
																		<th>전일말가용</th>
																		<th>금일입금</th>
																		<th>금일출금</th>
																		<th>당일말자금</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>1</td>
																		<td>현금</td>
																		<td></td>
																		<td>현금</td>
																		<td>5,274,000</td>
																		<td></td>
																		<td>5,274,000</td>
																		<td>62,000,000</td>
																		<td>959,526,600</td>
																		<td>-892,252,600</td>
																	</tr>
																	<tr>
																		<td>2</td>
																		<td>소계</td>
																		<td></td>
																		<td></td>
																		<td>5,274,000</td>
																		<td></td>
																		<td>5,274,000</td>
																		<td>62,000,000</td>
																		<td>959,526,600</td>
																		<td>-892,252,600</td>
																	</tr>
																	<tr>
																		<td>3</td>
																		<td>당좌예금</td>
																		<td>8890-6984-25-55641</td>
																		<td>한아은행</td>
																		<td>5,274,000</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td>959,526,600</td>
																		<td>-892,252,600</td>
																	</tr>

																</tbody>
															</table>

															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th colspan="4">합계</th>
																		<th>0</th>
																		<th>0</th>
																		<th>0</th>
																		<th>0</th>
																		<th>0</th>
																		<th>0</th>
																	</tr>
																</thead>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 총괄거래현황 끝 -->

										<!-- 어음현황 -->
										<div class="tab-pane show" id="profile" role="tabpanel"
											aria-labelledby="profile-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body">
														<table id="datatable"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<tr class="form-group row">
																<th class="col-md-1 col-form-label">회계단위</th>
																<td class="col-md-2 input-group"><select
																	class="form-control" name="" onchange="">
																		<option>전체선택</option>
																		<option>1000(주)한국생상 본점</option>
																</select>
																	<div class="input-group-append">
																		<button type="button"
																			class="btn btn-icon waves-effect waves-light btn-primary">
																			<i class="fas fa-search"></i>
																		</button>
																	</div></td>
																<th class="col-md-1 col-form-label">조회기간</th>
																<td><input
																	class="form-control input-daterange-datepicker"
																	type="text" name="daterange" /></td>
															</tr>
														</table>
														<hr>

														<!-- 받을어음 -->
														<div class="col-lg-6">
															<div class="card">
																<div class="card-body">
																	<div class="table-responsive">
																		<table class="table table-bordered mb-0">
																			<thead class="thead-light">
																				<tr>
																					<th colspan="2">받을어음</th>
																					<th>금액</th>
																				</tr>

																				<tr>
																					<th colspan="2">전일잔액</th>
																					<th>100,000,000</th>
																				</tr>

																			</thead>
																			<tbody>
																				<tr>
																					<td>증가</td>
																					<td>00001 (주)영은실업 자가 2018013101</td>
																					<td>30,000,000</td>
																				</tr>
																			</tbody>
																			<tr>
																				<td colspan="2">금일잔액</td>
																				<td>0</td>
																			</tr>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<!-- end col-lg-6  -->

														<!-- 지급어음 -->
														<div class="col-lg-6">
															<div class="card">
																<div class="card-body">
																	<div class="table-responsive">
																		<table class="table table-bordered mb-0">
																			<thead class="thead-light">
																				<tr>
																					<th colspan="2">지급어음</th>
																					<th>금액</th>
																				</tr>

																				<tr>
																					<th colspan="2">전일잔액</th>
																					<th>100,000,000</th>
																				</tr>

																			</thead>
																			<tbody>
																				<tr>
																					<td>증가</td>
																					<td>00001 (주)영은실업 자가 2018013101</td>
																					<td>30,000,000</td>
																				</tr>
																			</tbody>
																			<tr>
																				<td colspan="2">금일잔액</td>
																				<td>0</td>
																			</tr>
																		</table>
																	</div>
																</div>
															</div>
														</div>
														<!-- end col-lg-6  -->
													</div>
												</div>
											</div>
										</div>
										<!-- 어음현황 끝 -->

										<!-- 자금집행실적 -->
										<div class="tab-pane" id="message" role="tabpanel"
											aria-labelledby="message-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body">
														<div class="form-group mb-3">
															<table id="datatable"
																style="border-collapse: collapse; border-spacing: 0; width: 100%;">
																<tr class="form-group row">
																	<th class="col-md-1 col-form-label">회계단위</th>
																	<td class="col-md-2 input-group"><select
																		class="form-control" name="" onchange="">
																			<option>전체선택</option>
																			<option>1000(주)한국생상 본점</option>
																	</select>
																		<div class="input-group-append">
																			<button type="button"
																				class="btn btn-icon waves-effect waves-light btn-primary">
																				<i class="fas fa-search"></i>
																			</button>
																		</div></td>
																	<th class="col-md-1 col-form-label">조회기간</th>
																	<td><input
																		class="form-control input-daterange-datepicker"
																		type="text" name="daterange" /></td>
																</tr>
															</table>
														</div>
														<hr>

														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th colspan="2">적요</th>
																		<th>금액</th>
																		<th>거래처명</th>
																		<th>비고</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<td>수입</td>
																		<td>현금입금</td>
																		<td>4,000,000</td>
																		<td>신안은행</td>
																		<td></td>
																	</tr>
																	<tr>
																		<td>수입</td>
																		<td>제조경비-사무용품비</td>
																		<td>350,000</td>
																		<td></td>
																		<td>일반경비</td>
																	</tr>
																	<tr>
																		<td>수입</td>
																		<td>외상매입근 발생</td>
																		<td>330,000</td>
																		<td>신안은행</td>
																		<td>일반경비</td>
																	</tr>
																	<tr>
																		<td>수입</td>
																		<td>제조경비-사무용품비</td>
																		<td>350,000</td>
																		<td></td>
																		<td>일반경비</td>
																	</tr>
																</tbody>
															</table>

															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th colspan="2">전일이월시재 : 1,340,241,536</th>
																		<th colspan="2">금일시월시재 : 1,382,265,536</th>
																	</tr>
																</thead>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 자금집행실적 끝 -->

										<!-- 일일자금계획 -->
										<div class="tab-pane" id="setting" role="tabpanel"
											aria-labelledby="setting-tab">
											<table class="col-12">
												<tr class="form-group row">
													<th class="col-md-1 col-form-label">회계단위</th>
													<td class="col-md-2 input-group"><select
														class="form-control" name="" onchange="">
															<option>전체선택</option>
															<option>1000(주)한국생상 본점</option>
													</select>
														<div class="input-group-append">
															<button type="button"
																class="btn btn-icon waves-effect waves-light btn-primary">
																<i class="fas fa-search"></i>
															</button>
														</div></td>
													<th class="col-md-1 col-form-label">조회기간</th>
													<td><input
														class="form-control input-daterange-datepicker"
														type="text" name="daterange" /></td>
												</tr>
											</table>
											<hr>

											<div class="col-lg-6">
												<div class="card">
													<div class="card-body">
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th colspan="7">수입예정</th>
																	</tr>

																	<tr>
																		<th>일자</th>
																		<th>자금과목</th>
																		<th>거래처</th>
																		<th>계좌번호</th>
																		<th>금융기관</th>
																		<th>적요</th>
																		<th>금액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>

																	<tr>
																		<td colspan="6">수입예정계</td>
																		<td>0</td>
																	</tr>

																	<tr>
																		<td colspan="6">전이월시재</td>
																		<td>1,340,241,536</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>

											<div class="col-lg-6">
												<div class="card">
													<div class="card-body">
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th colspan="7">지출예정</th>
																	</tr>

																	<tr>
																		<th>일자</th>
																		<th>자금과목</th>
																		<th>거래처</th>
																		<th>계좌번호</th>
																		<th>금융기관</th>
																		<th>적요</th>
																		<th>금액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<td>2018/05/20</td>
																		<td>원재료비</td>
																		<td>DN상사(주)</td>
																		<td></td>
																		<td></td>
																		<td>외상매입금 발생</td>
																		<td>3,300,000</td>
																	</tr>

																	<tr>
																		<td>2018/05/25</td>
																		<td>인권비</td>
																		<td>급여</td>
																		<td></td>
																		<td></td>
																		<td>급여</td>
																		<td>50,000,000</td>
																	</tr>

																	<tr>
																		<td>2018/05/20</td>
																		<td>원재료비</td>
																		<td>유신상사(주)</td>
																		<td></td>
																		<td></td>
																		<td>외상매입금 발생</td>
																		<td>3,300,000</td>
																	</tr>

																	<tr>
																		<td colspan="6">지출예정계</td>
																		<td>57,100,000</td>
																	</tr>

																	<tr>
																		<td colspan="6">당일말예정잔액</td>
																		<td>1,283,141,536</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- 일일자금계획 끝 -->
									</div>
								</div>
								<!-- end tab-content -->
							</div>
						</div>
					</div>
				</div>
				<!-- end container-fluid -->

			</div>
			<!-- end content -->


			<%@ include file="../footer.jsp"%>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
	<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
	<script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>


</body>
</html>