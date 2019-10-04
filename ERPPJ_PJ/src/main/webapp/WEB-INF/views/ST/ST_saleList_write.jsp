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
        
        function CustomerName() {
    		window.open("ST_searchCustomername", "CustomerName_list", "menubar=no, width=1000px, height = 600px location=no,status=no,scrollbars=yes");
    	}
        </script>

</head>

<body>

	<!-- Begin page -->
	<div id="wrapper">
		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content">

			<!-- end row -->
			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body">
							<h4 class="header-title">판매 등록</h4>
							<p class="sub-header"></p>

							<form class="form-horizontal" action="ST_saleList_writePro"
								method="post">
								<input type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }">
								<div class="row">
									<div class="col-xl-6" style="height: 400px;">

										<div class="form-group row">

											<label class="col-md-2 col-form-label">품명</label>
											<div class="col-md-10">
											<div style="display: inline-block;">
											<input class="form-control" type="text" name="detail_ac_code" value="${sto.detail_ac_code }"
												id="product_codeP" onclick="ProductName()" style="width: 173px; float: left;">&nbsp;
											<input class="form-control" type="text" name="product_name" value="${sto.product_name }"
												id="product_nameP"  style="width: 173px; float: right;"></div>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-md-2 col-form-label">단위</label>
											<div class="col-md-10">
												<input type="text" name="unit" class="form-control" value=""
													style="width: 350px;">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-md-2 col-form-label">가격</label>
											<div class="col-md-10">
												<input type="text" name="price" class="form-control"
													style="width: 350px;">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-md-2 col-form-label">출고 여부</label>
											<div class="col-md-10">
												<select class="form-control select" name="release_state"
													onchange="" style="width: 350px;">
													<option value="1">출고</option>
													<option value="2">미출고</option>
												</select>
											</div>
										</div>



										<div class="form-group row">
											<label class="col-md-2 col-form-label" for="example-textarea">비고</label>
											<div class="col-md-10">
												<textarea class="" rows="7" cols="200" name="note"></textarea>
											</div>
										</div>

									</div>

									<div class="col-xl-6">

										<div class="form-group row">
											<label class="col-md-2 col-form-label">출고 요청일</label>
											<div class="col-md-10">
												<input type="date" name="release_o_date"
													class="form-control" value="" style="width: 350px;">
											</div>
										</div>

										<div class="form-group row">
											<label class="col-md-2 col-form-label">수량</label>
											<div class="col-md-10">
												<input type="text" name="amount" class="form-control"
													placeholder="" style="width: 350px;">
											</div>
										</div>


										<div class="form-group row">
											<label class="col-md-2 col-form-label">거래처명</label>
											<div class="col-md-10">
											<div style="display: inline-block;">
											<input type="text" class="form-control" name="customer_code"
											 id = "customer_codeP" onclick="CustomerName()" style="width: 173px; float: left;">&nbsp;
											 
											<input type="text" name="customer_code" class="form-control"
													value=""  id="customer_nameP"
													onclick="CustomerName()" style="width: 173px; float: right;">
											</div>
											</div>
										</div>


										<div class="form-group row">
											<label class="col-md-2 col-form-label">거래 상태</label>
											<div class="col-md-10">
												<input type="text" name="deal_state" class="form-control"
													id="deal_stateP" value="" style="width: 350px;">
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
				</div>
			</div>
			<!-- end col -->


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