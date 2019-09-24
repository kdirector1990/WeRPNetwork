<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type="text/javascript">
        function ProductName() {
       		window.open("ST_searchProductname", "ProductName_list", "menubar=no, width=480px, height = 600px location=no,status=no,scrollbars=yes");
       	}
        
        function customerNameList() {
    		window.open("ST_searchCustomername2", "customer_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
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

					<div class="row">
						<div class="col-sm-12" style="padding: 20px 0px 0px 0px;">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title">견적 등록</h4>
									<p class="sub-header"></p>

									<form class="form-horizontal" action="ST_estimate_writePro"
										method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div class="row">
											<div class="col-xl-6" style="height: 400px;">

												<div class="form-group row">
													<label class="col-md-2 col-form-label">품번</label>
													<div class="col-md-10">
														<input type="text" name="detail_ac_code"
															class="form-control" style="width: 350px;"
															onclick="ProductName()" id="product_codeP">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">거래처 코드</label>
													<div class="col-md-10">
														<input type="text" name="customer_code"
															class="form-control" style="width: 350px;"
															onclick="customerNameList()" id="customer_codeP">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">수량</label>
													<div class="col-md-10">
														<input type="text" name="ep_amount" class="form-control"
															placeholder="" style="width: 350px;">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">납품 예정일</label>
													<div class="col-md-10">
														<input type="date" name="ep_deliver_date"
															placeholder="mm/dd/yyyy" style="size: 100px;"> <i
															class="mdi mdi-calendar"></i>
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label"
														for="example-textarea">비고</label>
													<div class="col-md-10">
														<textarea class="" rows="7" cols="200"
															id="example-textarea"></textarea>
													</div>
												</div>


											</div>

											<div class="col-xl-6">
    

												<div class="form-group row">
													<label class="col-md-2 col-form-label">품명</label>
													<div class="col-md-10">
														<input type="text" name="product_name"
															class="form-control" style="width: 350px;"
															id="product_nameP">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">거래처</label>
													<div class="col-md-10">
														<input type="text" name="customer_name"
															class="form-control" id="customer_nameP"
															style="width: 350px;">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">공급가</label>
													<div class="col-md-10">
														<input type="text" name="ep_price" class="form-control"
															value="" style="width: 350px;">
													</div>
												</div>

											</div>
											<!-- end col -->



											<div class="form-group mb-0">
												<div>
													<button type="submit"
														class="btn btn-primary waves-effect waves-light mr-1">
														Submit</button>
													<button type="reset"
														class="btn btn-secondary waves-effect waves-light">
														Cancel</button>
												</div>
											</div>

											<!-- end row -->

										</div>
									</form>
								</div>
							</div>
							<!-- end col -->
						</div>






					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
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