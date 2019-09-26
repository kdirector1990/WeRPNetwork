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
				<table class="table table-bordered">
					<tbody>
						<!--  있으면 -->
						<tr>
							<th>예산계정코드</th>
							<td><input type="text" id = "budget_code" name="budget_code" class="form-control" value="${dto.budget_code}" readonly></td>
							<th>예산과목명</th>
							<td><input type="text" id = "budget_subject" name="budget_subject" class="form-control" value="${dto.budget_subject}"></td>
						</tr>
						<tr>
							<th>부서코드</th>
							<td><input type="text" id = "department_code" name="department_code" class="form-control" value="${dto.department_code}" onclick="searchdept2();"></td>
							<th>부서명</th>
							<td><input type="text" id = "department_name" name="department_name" class="form-control" value="${dto.department_name}"></td>
						</tr>
						<tr>
							<th>금액</th>
							<td colspan = "3"><input type="text" id = "budget_amount" name="budget_amount" class="form-control" value="${dto.budget_amount}"></td>
						</tr>
						<tr>
							<th>전결라인</th>
							<td><input type="text" id = "eas_code" name="eas_code" class="form-control" value="${dto.eas_code}"></td>
							<th>전결현황</th>
							<td><input type="text" id = "e_approval_code" name="e_approval_code" class="form-control" value="${dto.e_approval_code}"></td>
						</tr>
					</tbody>
				</table>
				<div class="form-group text-right mb-0">
					<button type="button" id="btnRe" class="btn btn-outline-dark waves-effect waves-light" onclick="updatePlan();">수정</button>
					<button type="button" id="btnDel" class="btn btn-outline-dark waves-effect waves-light" onclick="deletePlan();">폐기</button>
				</div>
			</form>
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

