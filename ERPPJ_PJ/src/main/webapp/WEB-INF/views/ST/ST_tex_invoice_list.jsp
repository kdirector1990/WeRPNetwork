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
									<!--  <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Codefox</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">UI Kit</a></li>
                                            <li class="breadcrumb-item active">Images</li>
                                        </ol> -->
								</div>
								<h2 class="page-title">세금계산서 발행 대장</h2>
							</div>
						</div>
					</div>
					<!-- end page title -->



					<!-- end row-->

					<!-- ===== MEDIA ==== -->
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
									<div class="table-responsive">
										<table id="datatable"
											style="border-collapse: 10px; border-spacing: 10px; width: 100%; padding: 10px;">
											<tr>
												<td>사업장</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a></td>

												<td>부서</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a>
												<td>담당자 <input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a>
												</td>
											</tr>

											<tr>
												<td>발행기간</td>
												<td><input type="date" id="userdate" name="userdate"
													value="sysdate">&nbsp;~&nbsp;<input type="date"
													id="userdate" name="userdate" value="sysdate"></td>
												<td>납품처</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a></td>

												<td>거래구분 <input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a></td>
											</tr>

											<tr>
												<td><select class="" name="">
														<option value="">0.계산서 번호</option>
														<option value="">1. 비 고</option>
												</select></td>
												<td><input type="text" class=""></td>
											</tr>
										</table>
									</div>
								</div>



								<div class="card-body">
									<div class="table-responsive">

										<table class="table m-0">
											<thead>
												<tr>
													<th>계산서 번호</th>
													<th>발행일자</th>
													<th>고객</th>
													<th>사업자 번호</th>
													<th>거래구분</th>
													<th>과세구분</th>
													<th>권</th>
													<th>호</th>
													<th>출력 회수</th>
													<th>공급가</th>
													<th>부가세</th>
													<th>합계액</th>
													<th>비고</th>
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
													<td></td>
													<td></td>
													<td></td>
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
					<!-- end row -->

					<!-- Media alignment -->



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

	<!-- Vendor js -->
	<script src="/erp/resources/assets/js/vendor.min.js"></script>

	<!-- Bootstrap select plugin -->
	<script
		src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

	<!-- App js -->
	<script src="/erp/resources/assets/js/app.min.js"></script>

</body>
</html>