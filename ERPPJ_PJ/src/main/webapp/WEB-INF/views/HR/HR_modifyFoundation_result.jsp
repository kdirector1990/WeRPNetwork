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

</head>
<body>
	<div class="col-sm-12">
		<form action="HR_inputFoundation?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal"
			id="foundation" method="post" enctype="multipart/form-data">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}">

			<div class="card-body table-responsive">
				<h4 class="header-title">기초 정보</h4>
				<h4 class="header-title">&nbsp;</h4>
				<div class="form-group row">
					<label class="col-md-1 col-form-label" for="simpleinput">사진등록<span class="text-danger">*</span></label>
						<div class="col-md-4">
							<input type="file" class="dropify" name="e_picture" />
						</div>
					<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
					<div class="col-md-6">
						<div class="form-group row">
							<label class="col-lg-2 col-form-label"
								for="simpleinput">성명<span class="text-danger">*</span></label>
							<div class="col-lg-8">
								<input type="text" class="form-control" name="e_name" id = "e_name"
									placeholder="한글이름">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label"
								for="simpleinput">성별<span class="text-danger">*</span></label>
							<div class="col-md-3  col-form-label">
								<div>
									<div
										class="custom-control custom-radio custom-control-inline mb-2">
										<input type="radio" id="customRadioInline1"
											name="e_gender" class="custom-control-input"
											value="1" checked> <label
											class="custom-control-label"
											for="customRadioInline1" id = "g_male">남성</label>
									</div>
									<div
										class="custom-control custom-radio custom-control-inline mb-2">
										<input type="radio" id="customRadioInline2"
											name="e_gender" class="custom-control-input"
											value="2"> <label
											class="custom-control-label"
											for="customRadioInline2" id = "g_female">여성</label>
									</div>
								</div>
							</div>
							<label class="col-md-2 col-form-label"
								for="simpleinput">내/외국인<span
								class="text-danger">*</span></label>
							<div class="col-md-4  col-form-label">
								<div>
									<div
										class="custom-control custom-radio custom-control-inline mb-2">
										<input type="radio" id="customRadioInline7"
											name="e_type" class="custom-control-input"
											value="local" checked> <label
											class="custom-control-label"
											for="customRadioInline7" id = "local">내국인</label>
									</div>
									<div
										class="custom-control custom-radio custom-control-inline mb-2">
										<input type="radio" id="customRadioInline8"
											name="e_type" class="custom-control-input"
											value="foreign"> <label
											class="custom-control-label"
											for="customRadioInline8" id = "foreign">외국인</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label"
								for="simpleinput">주민등록번호<span
								class="text-danger">*</span></label>
							<div class="col-md-8">
								<input type="text" class="form-control" name="e_code"
									placeholder="주민등록번호" size="13">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label"
								for="simpleinput">전화번호<span
								class="text-danger">*</span></label>
							<div class="col-md-8">
								<input type="text" class="form-control" name="e_hp"
									placeholder="전화번호" size="13">
							</div>
						</div>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-1 col-form-label" for="simpleinput">주민등록주소<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<input type="text" class="form-control"
							name="e_address1" placeholder="주민등록주소" size="13">
					</div>
					<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
					<label class="col-md-1 col-form-label" for="simpleinput">상세주소<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<input type="text" class="form-control"
							name="e_address2" placeholder="상세주소" size="13">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-1 col-form-label" for="simpleinput">우편번호<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<input type="text" class="form-control"
							name="e_mailcode" placeholder="우편번호">
					</div>
					<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
					<label class="col-md-1 col-form-label" for="simpleinput">nfc코드<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<input type="text" class="form-control"
							name="e_nfcCodeNFC" placeholder="nfc코드">
					</div>
				</div>

				<div class="form-group row">
					<label class="col-md-1 col-form-label" for="simpleinput">부서<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<select class="form-control select2"
							name="department_code" id = "department_code" onchange="">
								<option value="">부서를 선택하세요</option>
							<c:forEach var="dep" items="${dep}">
								<option value="${dep.department_code}">${dep.department_name}</option>
							</c:forEach>
						</select>
					</div>
					<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
					<label class="col-md-1 col-form-label" for="simpleinput">직책<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<select class="form-control select2"
							name="position_code" id = "position_code" onchange="">
							<option value="">직책을 선택하세요</option>
							<c:forEach var="poi" items="${poi}">
								<option value="${poi.position_code}">${poi.position_name}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-md-1 col-form-label" for="simpleinput">직급<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<select class="form-control select2" name="rank_code" id = "rank_code"
							onchange="">
							<option value="">직급을 선택하세요</option>
							<c:forEach var="rank" items="${rank}">
								<option value="${rank.rank_code}">${rank.rank_name}(${rank.rank_code})</option>
							</c:forEach>
						</select>
					</div>
					<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
					<label class="col-md-1 col-form-label" for="simpleinput">호봉<span
						class="text-danger">*</span></label>
					<div class="col-md-4">
						<input type="text" class="form-control" id = "level_step"
							name="level_step" placeholder="호봉">
					</div>
				</div>
				<div class="form-group text-right mb-0">
					<button
						class="btn btn-primary waves-effect waves-light mr-1" id = "submit"
						type="submit">Submit</button>
					<button type="reset"
						class="btn btn-secondary waves-effect">Cancel</button>
				</div>
			</div>
		</form>
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