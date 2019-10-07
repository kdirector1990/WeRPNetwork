<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Responsive Table css -->
<link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css"
	rel="stylesheet" type="text/css" />
</head>

<script type="text/javascript">
     function ProductName() {
 		window.open("ST_searchProductname", "ProductName_list", "menubar=no, width=480px, height = 600px location=no,status=no,scrollbars=yes");
 	}
     
     function usernameList() {
 		window.open("ST_searchUsername", "username_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
 	}   
     
   function customerNameList() {
  		window.open("ST_searchCustomername2", "customer_list", "menubar=no, width=1000px, height = 600px, location=no, status=nos, top = 200, left = 500");
  	} 
  
   function customerNameList3() {
	window.open("ST_searchCustomername3", "customer_list", "menubar=no, width=1000px, height = 600px, location=no, status=nos, top = 200, left = 500");
} 
   
   function saleListName() {
		window.open("ST_searchsaleList", "searchsaleList", "menubar=no, width=600px, height = 600px, location=no, status=nos, top = 200, left = 500");
	} 
</script>

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
											href="javascript: void(0);">영업</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">영업 관리</a></li>
										<li class="breadcrumb-item active">출고 등록</li>
									</ol>
								</div>
								<h4 class="page-title">출고 등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									

									<form class="form-horizontal" action="ST_release_writePro"
										method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div class="row">
											<div class="col-xl-6">
												<div class="form-group row">
													<label class="col-md-2 col-form-label">판매대장코드</label>
													<input class="form-control" type="text" name="customer_name" id="customerNameP" onclick="saleListName()"
																style="width : 200px;"> 
													<input class="form-control" type="text" name="salelist_code" id="saleListCodeP"style="width : 200px;"  readonly> 			
												</div>
											
											
												<div class="form-group row">
													<label class="col-md-2 col-form-label">품번</label>
													<input class="form-control" type="text" name="detail_ac_code" 
																id="product_codeP" onclick="ProductName()"
																style="width : 400px;"> 
												</div>
												
											
												<div class="form-group row">
													<label class="col-md-2 col-form-label">출고처</label>
													<div style="display: inline-block;">
														<input type="text" class="form-control" name="customer_code2"
													 id = "search_release_code" onclick="customerNameList()"style="width: 200px; float: left;">&nbsp;
													 
													<input type="text" name="release_name" class="form-control"
															id="release_name" style="width: 200px; float: right;">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label">입고처</label>
													<div style="display: inline-block;">
														<input type="text" class="form-control" name="customer_code"
													 id = "customer_codeM" onclick="customerNameList3()"style="width: 200px; float: left;">&nbsp;
													 
													<input type="text" name="stored_name" class="form-control"
															id="customer_nameM" style="width: 200px; float: right;">
													</div>
													
												</div>
												
												<div class="form-group row">
													<label class="col-md-2 col-form-label">단가</label>
														<input type="number" name="unit_cost" class="form-control" style="width: 400px;" step="10000">
												</div>

											</div>

											<div class="col-xl-6">
											
											<div class="form-group row">
												<label class="col-md-2 col-form-label">품명</label>
												<input class="form-control" type="text" name="product_name"
													id="product_nameP" style="width : 370px; float: right;">
									
											</div>
													
												

												<div class="form-group row">
													<label class="col-md-2 col-form-label">출고 수량</label>
													<div class="col-md-10">
														<input type="number" name="release_count" id = "release_countP"
															class="form-control" style="width: 370px;" value="0">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label">입고 수량</label>
													<div class="col-md-10">
														<input type="number" class="form-control" style="width: 370px;"
															name="stored_count" value="0">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-md-2 col-form-label">구분</label>
													<div class="col-md-10">
														<select class="form-control" name="sar_type" style="width: 370px;">
															<option value="1">1. 입고</option>
															<option value="2" selected="selected">2. 출고(판매)</option>
														</select>
													</div>
												</div>
												
												<div class="form-group row">
													<label class="col-md-2 col-form-label">가격</label>
													<div class="col-md-10">
														<input type="number" class="form-control" style="width: 370px;" step = "10000"
															name="price" id = "priceP">
													</div>
											</div>
												
												
												
												
											</div>
											<!-- end col -->


											<div class="form-group mb-0">
												<div>
													<button type="submit" class="btn btn-primary waves-effect waves-light mr-1">
														Submit</button>
													<button type="reset" class="btn btn-secondary waves-effect waves-light">
														Cancel</button>
												</div>
											</div>
											<!-- end row -->
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- end col -->
					</div>
					<!-- end row -->







					<!-- end row -->

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


</body>
</html>