<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Responsive Table css -->
<link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css"
	rel="stylesheet" type="text/css" />
</head>
<script src="/erp/resources/assets/js/request.js"></script>
<script type="text/javascript">
    function salePlanWriteForm(url) {
    	sendRequest(callback, "ST_saleList_Form", "post", "${_csrf.parameterName }=${_csrf.token }&saleplan_code="+url);
    }
    
    function callback() {
    	var result = document.getElementById("result");
    	
    	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
    		if(httpRequest.status == 200){	// 200 : 정상 종료
    		 	result.innerHTML = "정상종료";
    			
    			var datas = httpRequest.responseText; 
    			
    			result.innerHTML = datas;
    		} else {
    			result.innerHTML = "에러발생";
    		}
    	} 
    	else {
    		result.innerHTML = "상태 : " + httpRequest.readyState;
    	}
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
											href="javascript: void(0);">Codefox</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">출고 관리</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title mb-3">판매 관리</h4>

									<div class="table-responsive">
										<table id="datatable"
											style="border-collapse: 10px; border-spacing: 10px; width: 100%; padding: 10px;">
											<tr>
												<td>사원</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class=""></td>

												<td>부서</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class="">
												<td>사업장 <input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class="">
												</td>
											</tr>

											<tr>
												<td>계획년도</td>
												<td><input type="date" id="userdate" name="userdate"
													value="sysdate">&nbsp; <select class="" name="">
														<option>월</option>
														<option value="">1</option>
														<option value="">2</option>
														<option value="">3</option>
														<option value="">4</option>
														<option value="">5</option>
														<option value="">6</option>
														<option value="">7</option>
														<option value="">8</option>
														<option value="">9</option>
														<option value="">10</option>
														<option value="">11</option>
														<option value="">12</option>
												</select></td>
												<td>품목군</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class=""></td>
											</tr>
											<tr>
												<td>대분류</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class=""></td>
												<td>중분류</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class=""></td>
												<td>소분류 <input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class=""></td>
											</tr>

											<tr>
												<td><select class="" name="">
														<option>0. 품번</option>
														<option value="">1. 품명</option>
														<option value="">2. 규격</option>
												</select></td>
												<td><input type="text" class=""></td>
											</tr>
										</table>
										<br>
										<div class="col-lg-12">
											<div class="card">
												<div class="table-responsive">
													<table class="table mb-0" style="table-layout: fixed;">
														<thead class="thead-light">

															<tr>
																<th>판매 코드</th>
																<th>제품명</th>
																<th>담당자</th>
																<th>등록일</th>
																<th>출고 요청일</th>
																<th>단위</th>
																<th>수량</th>
																<th>가격</th>
																<th>거래처</th>
																<th>출고여부</th>
																<th>비고</th>
															</tr>

														</thead>
														<tbody>
															<c:if test="${cnt > 0}">
																<c:forEach var="dto" items="${dtos}">
																	<tr
																		onclick="salePlanWriteForm('${dto.saleplan_code}');">
																		<td>${dto.saleplan_code}</td>
																		<td></td>
																		<td>${dto.sp_unit }</td>
																		<td>${dto.ef_price}</td>
																		<td>${dto.ef_amount }</td>
																		<td>${dto.s_plan_start }</td>
																		<td>${dto.s_plan_end }</td>
																		<td
																			style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${dto.sp_note}</td>
																	</tr>
																</c:forEach>
															</c:if>
														</tbody>
													</table>
												</div>
											</div>
										</div>

									</div>
								</div>
								<!-- end row -->


							</div>
							<br>
							<hr>
							<br>
							<div id="result" class="card-body" style="width: 3200px;">
								<!-- 상세 페이지 출력 위치 -->

							</div>

						</div>
					</div>


					<!-- end container-fluid -->
			</div>
			<!-- end content -->



			<!-- Footer Start -->
			<footer class="footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6">
							2016 - 2019 &copy; Codefox theme by <a href="">Coderthemes</a>
						</div>
						<div class="col-md-6">
							<div class="text-md-right footer-links d-none d-sm-block">
								<a href="#">About Us</a> <a href="#">Help</a> <a href="#">Contact
									Us</a>
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- end Footer -->

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->
	</div>

	<!-- Right Sidebar -->
	<div class="right-bar">
		<div class="rightbar-title">
			<a href="javascript:void(0);" class="right-bar-toggle float-right">
				<i class="mdi mdi-close"></i>
			</a>
			<h5 class="m-0 text-white">Settings</h5>
		</div>
		<div class="slimscroll-menu">
			<hr class="mt-0">
			<h5 class="pl-3">Basic Settings</h5>
			<hr class="mb-0" />


			<div class="p-3">
				<div class="custom-control custom-checkbox mb-2">
					<input type="checkbox" class="custom-control-input"
						id="customCheck1" checked> <label
						class="custom-control-label" for="customCheck1">Notifications</label>
				</div>
				<div class="custom-control custom-checkbox mb-2">
					<input type="checkbox" class="custom-control-input"
						id="customCheck2" checked> <label
						class="custom-control-label" for="customCheck2">API Access</label>
				</div>
				<div class="custom-control custom-checkbox mb-2">
					<input type="checkbox" class="custom-control-input"
						id="customCheck3"> <label class="custom-control-label"
						for="customCheck3">Auto Updates</label>
				</div>
				<div class="custom-control custom-checkbox mb-2">
					<input type="checkbox" class="custom-control-input"
						id="customCheck4" checked> <label
						class="custom-control-label" for="customCheck4">Online
						Status</label>
				</div>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="customCheck5"> <label class="custom-control-label"
						for="customCheck5">Auto Payout</label>
				</div>
			</div>

			<!-- Timeline -->
			<hr class="mt-0" />
			<h5 class="pl-3 pr-3">Timeline</h5>
			<hr class="mb-0" />

			<div class="p-3">
				<ul class="list-unstyled activity-widget">
					<li class="activity-list">
						<p class="mb-0">
							<small>08 July</small>
						</p>
						<p>Neque porro quisquam est</p>
					</li>
					<li class="activity-list">
						<p class="mb-0">
							<small>09 July</small>
						</p>
						<p>Ut enim ad minima veniam quis velit esse</p>
					</li>
					<li class="activity-list">
						<p class="mb-0">
							<small>10 July</small>
						</p>
						<p>Quis autem vel eum iure</p>
					</li>
				</ul>
			</div>

			<!-- Messages -->
			<hr class="mt-0" />
			<h5 class="pl-3 pr-3">
				Messages <span class="float-right badge badge-pill badge-danger">24</span>
			</h5>
			<hr class="mb-0" />
			<div class="p-3">
				<div class="inbox-widget">
					<div class="inbox-item">
						<div class="inbox-item-img">
							<img src="assets/images/users/avatar-1.jpg"
								class="rounded-circle" alt="">
						</div>
						<p class="inbox-item-author">
							<a href="javascript: void(0);">Chadengle</a>
						</p>
						<p class="inbox-item-text">Hey! there I'm available...</p>
						<p class="inbox-item-date">13:40 PM</p>
					</div>
					<div class="inbox-item">
						<div class="inbox-item-img">
							<img src="assets/images/users/avatar-2.jpg"
								class="rounded-circle" alt="">
						</div>
						<p class="inbox-item-author">
							<a href="javascript: void(0);">Tomaslau</a>
						</p>
						<p class="inbox-item-text">I've finished it! See you so...</p>
						<p class="inbox-item-date">13:34 PM</p>
					</div>
					<div class="inbox-item">
						<div class="inbox-item-img">
							<img src="assets/images/users/avatar-3.jpg"
								class="rounded-circle" alt="">
						</div>
						<p class="inbox-item-author">
							<a href="javascript: void(0);">Stillnotdavid</a>
						</p>
						<p class="inbox-item-text">This theme is awesome!</p>
						<p class="inbox-item-date">13:17 PM</p>
					</div>

					<div class="inbox-item">
						<div class="inbox-item-img">
							<img src="assets/images/users/avatar-4.jpg"
								class="rounded-circle" alt="">
						</div>
						<p class="inbox-item-author">
							<a href="javascript: void(0);">Kurafire</a>
						</p>
						<p class="inbox-item-text">Nice to meet you</p>
						<p class="inbox-item-date">12:20 PM</p>

					</div>
					<div class="inbox-item">
						<div class="inbox-item-img">
							<img src="assets/images/users/avatar-5.jpg"
								class="rounded-circle" alt="">
						</div>
						<p class="inbox-item-author">
							<a href="javascript: void(0);">Shahedk</a>
						</p>
						<p class="inbox-item-text">Hey! there I'm available...</p>
						<p class="inbox-item-date">10:15 AM</p>

					</div>
				</div>
				<!-- end inbox-widget -->
			</div>
			<!-- end .p-3-->

		</div>
		<!-- end slimscroll-menu-->
	</div>
	<!-- /Right-bar -->

	<!-- Right bar overlay-->
	<div class="rightbar-overlay"></div>

	<!-- Vendor js -->
	<script src="/erp/resources/assets/js/vendor.min.js"></script>

	<!-- Bootstrap select plugin -->
	<script
		src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

	<!-- Responsive Table js -->
	<script src="/erp/resources/assets/libs/rwd-table/rwd-table.min.js"></script>

	<!-- Init js -->
	<script src="/erp/resources/assets/js/pages/responsive-table.init.js"></script>

	<!-- App js -->
	<script src="/erp/resources/assets/js/app.min.js"></script>

</body>
</html>