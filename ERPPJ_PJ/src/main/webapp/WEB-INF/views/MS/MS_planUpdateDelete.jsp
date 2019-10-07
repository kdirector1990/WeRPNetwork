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
			<form id= "datatable2" action="MS_updatePlanPro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data" >
				<table class="table table-bordered"
					style="height: 550px;">
					<tbody>
						<!--  있으면 -->
						<tr>
							<th>기획서 코드</th>
							<td><input type="text" name="plan_code" class="form-control" value="${dto.plan_code}" readonly></td>
						</tr>
						<tr>
							<th>기획명</th>
							<td><input type="text" name="plan_name" class="form-control" value="${dto.plan_name}"></td>
						</tr>
						<tr>
							<th>기획제안자</th>
							<td><input type="text" name="username" class="form-control" value="${dto.username}"></td>
						</tr>
						<tr>
							<th>책임자</th>
							<td><input type="text" name="position_code" class="form-control" value="${dto.position_code}"></td>
						</tr>
						<tr>
							<th>기획등록일</th>
							<td><input type="text" name="plan_regdate" class="form-control" value="${dto.plan_regdate}" readonly></td>
						</tr>
						<tr>
							<th>시작예정일</th>
							<td><input type="text" name="plan_startdate" class="form-control" data-provide="datepicker" data-date-autoclose="true" value="${dto.plan_startdate}"></td>
						</tr>
						<tr>
							<th>종료예정일</th>
							<td><input type="text" name="plan_enddate" class="form-control" data-provide="datepicker" data-date-autoclose="true" value="${dto.plan_enddate}"></td>
						</tr>
						<tr>
							<th>기획상태</th>
							<td>
							<select name="plan_state" class="form-control" id="selectbox" required >
									<option value="${dto.plan_state}">${dto.plan_state}</option>
									<option value="기획단계" >기획단계</option>
									<option value="준비중">준비중</option>
									<option value="진행중">진행중</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>기획목표</th>
							<td><input type="text" name="plan_objective" class="form-control" value="${dto.plan_objective}"></td>
						</tr>
						<tr>
							<th>상세 기획안 파일</th>
							<td><input type="file" name="plan_proposal" class="form-control" value="/erp/resources/ms_file/${dto.plan_proposal}"> 
							<br><p>현재 파일명 : ${dto.plan_proposal}</p>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="form-group text-right mb-0">
					<button type="submit" id="btnRe" class="btn btn-success waves-effect waves-light">수정</button>
					<button type="button" id="btnDel" class="btn btn-danger waves-effect waves-light" onclick="deletePlan();">폐기</button>
					<button type="button" class="btn btn-dark waves-effect waves-light">목록보기</button>
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

