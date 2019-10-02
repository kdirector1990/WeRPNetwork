<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
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

<script type="text/javascript">

</script>
</head>
<body>
			<form>
				<table id="datatable" class="table table-bordered"
					style="height: 550px;">
					<tbody>
						<!--  있으면 -->
						<tr>
							<th>기획서 코드</th>
							<td>${dto.plan_code}</td>
						</tr>
						<tr>
							<th>기획명</th>
							<td>${dto.plan_name}</td>
						</tr>
						<tr>
							<th>기획제안자</th>
							<td>${dto.username}</td>
						</tr>
						<tr>
							<th>책임자</th>
							<td>${dto.position_code}</td>
						</tr>
						<tr>
							<th>기획등록일</th>
							<td>${dto.plan_regdate}</td>
						</tr>
						<tr>
							<th>시작예정일</th>
							<td>${dto.plan_startdate}</td>
						</tr>
						<tr>
							<th>종료예정일</th>
							<td>${dto.plan_enddate}</td>
						</tr>
						<tr>
							<th>기획상태</th>
							<td>${dto.plan_state}</td>
						</tr>
						<tr>
							<th>기획목표</th>
							<td>${dto.plan_objective}</td>
						</tr>
						<tr>
							<th>상세 기획안 파일</th>
							<td>${dto.plan_proposal}</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<!-- Datatable plugin js -->
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

</body>
</html>

