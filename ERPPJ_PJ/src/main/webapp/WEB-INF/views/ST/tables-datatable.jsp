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
										<li class="breadcrumb-item active">거래 명세서 발행</li>
									</ol>
								</div>
								<h4 class="page-title">거래 명세서 발행</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<h4 class="header-title">거래 명세서 발행</h4>
									<p class="sub-header">거래 명세서 발행하는 기능입니다.</p>

									<table id="datatable"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr>
											<td>사업장</td>
											<td><input type="text" class="">&nbsp;<a
												href="#"><i class="dripicons-zoom-in"></i></a><input
												type="text" class=""></td>

											<td>부서</td>
											<td><input type="text" class="">&nbsp;<a
												href="#"><i class="dripicons-zoom-in"></i></a><input
												type="text" class="">
											<td>사원 <input type="text" class="">&nbsp;<a
												href="#"><i class="dripicons-zoom-in"></i></a><input
												type="text" class="">
											</td>
										</tr>

										<tr>
											<td>출고 기간</td>
											<td><input type="date" id="userdate" name="userdate"
												value="sysdate">&nbsp;~&nbsp;<input type="date"
												id="userdate" name="userdate" value="sysdate"></td>
											<td>납품처</td>
											<td><input type="text" class="">&nbsp;<a
												href="#"><i class="dripicons-zoom-in"></i></a><input
												type="text" class=""></td>
										</tr>

										<tr>
											<td>출고창고</td>
											<td><input type="text" class="">&nbsp;<a
												href="#"><i class="dripicons-zoom-in"></i></a></td>
											<td>출고구분</td>
											<td><select class="form-control select2">
													<option>전체</option>
													<option value="">--</option>
											</select></td>

											<td><select class="form-control select2">
													<option>2. 실적담당</option>
													<option value="">--</option>
											</select></td>
											<td><select class="form-control select2">
													<option></option>
													<option value="">--</option>
											</select></td>
										</tr>

										<tr>
											<td>전표구분</td>
											<td><select class="form-control select2">
													<option>전체</option>
													<option value="">--</option>
											</select></td>

										</tr>

									</table>

									<table id="datatable-buttons"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">

										<thead>
											<tr>
												<th>선택 <input type="checkbox" name="chk"></th>
												<th>출고번호</th>
												<th>출고일자</th>
												<th>거래처</th>
												<th>창고</th>
												<th>출고구분</th>
												<th>과세구분</th>
												<th>단가구분</th>
												<th>납품처</th>
												<th>담당자</th>
												<th>출력횟수</th>
												<th>비고</th>
											</tr>
										</thead>


										<tbody>
											<tr>
												<td><input type="checkbox" name="chk"></td>
												<td>001</td>
												<td>2019-08-19</td>
												<td>일자</td>
												<td>거래처1</td>
												<td>창고1</td>
												<td>출고구분1</td>
												<td>과세구분1</td>
												<th>단가구분1</th>
												<th>납품처1</th>
												<th>담당자1</th>
												<th></th>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
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