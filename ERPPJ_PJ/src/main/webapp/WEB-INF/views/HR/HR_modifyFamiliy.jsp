<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
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
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">WeRP</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사정보</a></li>
										<li class="breadcrumb-item active"></li>
									</ol>
								</div>
								<h4 class="page-title">가족정보수정</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card-body table-responsive">
								<h4 class="header-title">가족 정보</h4>
								<h4 class="header-title">&nbsp;</h4>
								<div class="table-responsive" style="margin: 15px 0px 50px">
									<table
										class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
										<col style="width: 20%;">
										<col style="width: 20%;">
										<col style="width: 20%">
										<col style="width: 20%;">
										<col style="width: 20%;">
										<thead>
											<tr>
												<th>성명</th>
												<th>관계</th>
												<th>동거여부</th>
												<th>생년월일</th>
												<th>음력/양력</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td><input type="text" name="f_name0"
													class="form-control" data-toggle="input-mask"
													style="width: 100%; border: 0px;"></td>
												<td><input type="text" name="f_type0"
													class="form-control" data-toggle="input-mask"
													style="width: 100%; border: 0px;"></td>
												<td><input type="text" name="f_cohabitation0"
													class="form-control" data-toggle="input-mask"
													style="width: 100%; border: 0px;"></td>
												<td><input type="text" name="f_born0"
													class="form-control" data-toggle="input-mask"
													data-mask-format="0000/00/00" placeholder="YYYY/DD/MM"
													style="width: 100%; border: 0px;"></td>
												<td><input type="text" name="f_born_type0"
													class="form-control" data-toggle="input-mask"
													style="width: 100%; border: 0px;"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="form-group text-right mb-0">
									<button class="btn btn-primary waves-effect waves-light mr-1"
										type="button" onclick="enterinsert(0);">추가</button>
									<button class="btn btn-primary waves-effect waves-light mr-1"
										type="button" onclick="enterdelete(0);">삭제</button>
								</div>

							</div>
						</div>

					</div>




					<!-- 페이지 내용 입력 공간 종료 -->

					<%@ include file="../footer.jsp"%>
				</div>
			</div>
		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
</body>
</html>