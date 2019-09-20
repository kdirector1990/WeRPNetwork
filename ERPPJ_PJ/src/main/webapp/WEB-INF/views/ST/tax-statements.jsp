<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
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
	href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
</head>

<script type="text/javascript">
    function multiSelect(value){

    	 if(value=="OPEN") Div.style.visibility="visible";

    	 else Div.style.visibility="hidden";

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
										<li class="breadcrumb-item active">세금 명세서 발행</li>
									</ol>
								</div>
								<h4 class="page-title">세금 명세서 발행</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<h4 class="header-title">세금 명세서 발행</h4>
									<p class="sub-header">세금 명세서 발행하는 기능입니다.</p>

									<div class="table-responsive">
										<table id="datatable"
											style="border-collapse: 10px; border-spacing: 10px; width: 100%; padding: 10px;">
											<tr>
												<td>사업장</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class=""></td>

												<td>부서</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class="">
												<td>담당자 <input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class="">
												</td>
											</tr>

											<tr>
												<td>발행기간</td>
												<td><input type="date" id="userdate" name="userdate"
													value="sysdate">&nbsp;~&nbsp;<input type="date"
													id="userdate" name="userdate" value="sysdate"></td>
												<td>납품처</td>
												<td><input type="text" class="">&nbsp;<a
													href="#"><i class="dripicons-zoom-in"></i></a><input
													type="text" class=""></td>

												<td>거래구분
													<table style="cursor: pointer"
														onClick="multiSelect('OPEN')">
														<tr>
															<td>&nbsp;&nbsp;&nbsp;<input type="button" value="▼"
																onclick=""></td>
														</tr>
													</table>
													<div id="Div"
														style="position: absolute; visibility: hidden; font-size: 12px;">
														<ul>
															<li><input type="checkbox" name="chk1" id="chk1">0.
																DOMESTIC</li>
															<li><input type="checkbox" name="chk2" id="chk2">1.
																LOCAL L/C</li>
															<li><input type="checkbox" name="chk3" id="chk3">2.
																구매승인서</li>
															<li><input type="checkbox" name="chk4" id="chk4">7.
																유상사급</li>
														</ul>
														<div style="padding-top: 3px; text-align: right">
															<input type="button" value="확인"
																onClick="multiSelect('CLOSE')">
														</div>
													</div>
												</td>
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

									<table id="datatable-buttons"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">

										<thead>
											<tr>
												<th>선택 <input type="checkbox" name="chk"></th>
												<th>순번</th>
												<th>거래처명</th>
												<th>사업자 번호</th>
												<th>대표자명</th>
												<th>등록일자</th>
												<th>사업 부문</th>
												<th>담당자</th>
												<th>부가세 처리</th>
												<th>상세</th>
											</tr>
										</thead>


										<tbody>
											<tr>
												<td><input type="checkbox" name="chk"></td>
												<td>001</td>
												<td>무한상사</td>
												<td>001-12-345678</td>
												<td>유재석</td>
												<td>2018-04-04</td>
												<td>디지털</td>
												<td>권돼지</td>
												<td>별도 10%</td>
												<td><a href="#">보기</a></td>
												<!-- json으로 밑 부분에 세금 상세 내역서를 표시하거나 새로운 페이지를 띄워서 확인할 수 있게 만들어야 할 것 같아요 -->
											</tr>

											<tr>
												<td><input type="checkbox" name="chk"></td>
												<td>002</td>
												<td>유한상사</td>
												<td>001-12-554812</td>
												<td>박명수</td>
												<td>2018-04-06</td>
												<td>개발</td>
												<td>이은미</td>
												<td>면세</td>
												<td><a href="#">보기</a></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end content -->

			</div>


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

	<!-- Datatable plugin js -->
	<script
		src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

	<script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
	<script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
	<script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

	<script src="/erp/resources/assets/js/pages/datatables.init.js"></script>

	<!-- App js -->
	<script src="/erp/resources/assets/js/app.min.js"></script>

</body>
</html>