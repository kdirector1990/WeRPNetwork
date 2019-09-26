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
			<form id= "datatable2">
				<table class="table table-bordered"
					style="height: 550px;">
					<tbody>
						<!--  있으면 -->
						<tr>
							<th>예산계정코드</th>
							<td><input type="text" name="plan_code" class="form-control" value="${dto.plan_code}" readonly></td>
						</tr>
						<tr>
							<th>부서코드</th>
							<td><input type="text" name="plan_name" class="form-control" value="${dto.plan_name}"></td>
						<tr>
						<tr>
							<th>부서명</th>
							<td><input type="text" name="plan_name" class="form-control" value="${dto.plan_name}"></td>
						</tr>
						<tr>
							<th>금액</th>
							<td><input type="text" name="username" class="form-control" value="${dto.username}"></td>
						</tr>
						<tr>
							<th>전결라인</th>
							<td><input type="text" name="position_code" class="form-control" value="${dto.position_code}"></td>
						</tr>
						<tr>
							<th>전결현황</th>
							<td><input type="text" name="plan_regdate" class="form-control" value="${dto.plan_regdate}" readonly></td>
						</tr>
						<tr>
							<th>예산과목명</th>
							<td><input type="text" name="plan_startdate" class="form-control" data-provide="datepicker" data-date-autoclose="true" value="${dto.plan_startdate}"></td>
						</tr>
					</tbody>
				</table>
				<div class="form-group text-right mb-0">
					<button type="button" id="btnRe" class="btn btn-outline-dark waves-effect waves-light" onclick="updatePlan();">수정</button>
					<button type="button" id="btnDel" class="btn btn-outline-dark waves-effect waves-light" onclick="deletePlan();">폐기</button>
				</div>
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

