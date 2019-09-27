<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.result {
	display: none;
}
</style>
<%@ include file="../setting.jsp"%>
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<h4 class="page-title">자재관리</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">

								<h4 class="header-title">자재관리</h4>

								<hr>
								<table id="datatable"
									class="table m-0 table-bordered table-hover"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead class="bg-primary text-white">
										<tr>
											<th>자재입출고코드</th>
											<th>자재관리코드</th>
											<th>자재명</th>
											<th>단위</th>
											<th>구입일</th>
											<th>단가</th>
											<th>수량</th>
											<th>비고</th>
										</tr>
									</thead>


									<tbody>
										<c:forEach var="list" items="${dto}">
											<tr>
												<td>${list.m_io_code}</td>
												<td>${list.material_code}</td>
												<td>${list.material_name}</td>
												<td>${list.material_unit}</td>
												<td>${list.m_io_regdate}</td>
												<td>${list.m_price}</td>
												<td>${list.m_amount}</td>
												<td><a href="https://ropsten.etherscan.io/search?f=0&q=${list.m_note}">임시데이터</a></td>
												
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->

		<%@ include file="../footer.jsp"%>


		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

	<!-- Datatable plugin js -->
	<script
		src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

	
    </script>
</body>
</html>
