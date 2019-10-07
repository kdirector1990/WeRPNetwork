<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type="text/javascript">
	function ProductName() {
		window.open("ST_searchProductname", "ProductName_list",
						"menubar=no, width=480px, height = 600px location=no,status=no,scrollbars=yes");
	}
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

				<div class="container-fluid">
					<!-- Start Content-->

					<!-- end row -->
					<div class="row">
						<div class="col-sm-12" style="padding: 20px 0px 0px 0px;">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title">판매계획 등록</h4>

									<form class="form-horizontal" action="ST_sale_plan_writePro"
										method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div class="row">
											<div class="col-xl-6" style="height: 400px;">
												<div class="form-group row">
													<label class="col-md-2 col-form-label">품번</label>
													<div class="col-md-10">
														<input type="text" name="detail_ac_code"
															class="form-control" id="product_codeP"
															style="width: 370px;" onclick="ProductName();">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">예상 수량</label>
													<div class="col-md-10">
														<input type="number" name="ef_amount" class="form-control"
															value="0" style="width: 370px;">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">기간 시작</label>
													<div class="col-md-10">
													<div style="display: inline-block;">
														<i class="mdi mdi-calendar" style="float: right;"><input type="date" name="s_plan_start" class="form-control" style="width: 370px; float: left;"
															placeholder="mm/dd/yyyy" >
														</i>
													</div>
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">기간 종료</label>
													<div class="col-md-10">
													<div style="display: inline-block;">
														<i class="mdi mdi-calendar" style="float: right;"><input type="date" name="s_plan_end" class="form-control" style="width: 370px; float: left;"
															placeholder="mm/dd/yyyy">
														</i>
													</div>
													</div>
												</div>


												


											</div>

											<div class="col-xl-6">
												<div class="form-group row">
													<label class="col-md-2 col-form-label">품명</label>
													<div class="col-md-10">
														<input type="text" name="product_name"
															class="form-control" id="product_nameP" value=""
															style="width: 370px;">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">단위</label>
													<div class="col-md-10">
														<input type="text" name="sp_unit" class="form-control"
															placeholder="" style="width: 370px;">
													</div>
												</div>


												<div class="form-group row">
													<label class="col-md-2 col-form-label">예상 금액</label>
													<div class="col-md-10">
														<input type="text" name="ef_price" class="form-control"
															value="" style="width: 370px;">
													</div>
												</div>
												
											</div>
											<!-- end col -->
											
										
											<div class="form-group row" style="margin-top: -190px; margin-left: 200px;">
											<div>
													<label class="col-md-2 col-form-label">비고</label>
													<div class="col-md-10">
														<textarea class="form-control" rows="8" cols="220" name="sp_note" id="example-textarea"></textarea>
													</div>
												</div>
											</div>
											
										
											<!-- end row -->

										</div>
											

											<div class="form-group mb-0">
												<div class="form-group row">
													<button type="submit"
														class="btn btn-primary waves-effect waves-light mr-1">
														Submit</button>
													<button type="reset"
														class="btn btn-secondary waves-effect waves-light">
														Cancel</button>
												</div>
											</div>
									</form>
								</div>
							</div>
							<!-- end col -->
						</div>


					</div>
					<!-- end col -->
				</div>
				<!-- end col -->
			</div>


			<%@ include file="../footer.jsp"%>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
	<!-- Vendor js -->

	<!-- Bootstrap select plugin -->
	

	<!-- Table Editable plugin-->
	<script
		src="/erp/resources/assets/libs/jquery-tabledit/jquery.tabledit.min.js"></script>

	<!-- Table editable init-->
	<script src="/erp/resources/assets/js/pages/tabledit.init.js"></script>

	<!-- App js -->
	<script src="/erp/resources/assets/js/app.min.js"></script>

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

	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>

</body>
</html>