<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>

<script type="text/javascript">
	//검색창 포커스	 
	function searchNameFocus() {
		document.searchName.e_name.focus();
	}

	// 결과
	function load1(e_name) {
		var url = document.searchName.e_name.value;

		sendRequest(loadBook_callback, "MS_searchUsername_result", "post",
				"e_name=" + url);
	}

	function loadFoundation_callback() {
		var result = document.getElementById("result");

		if (httpRequest.readyState == 4) { //4 : completed => 전체 데이터가 취득 완료된 상태
			if (!document.searchName.e_name.value) {
				alert("사원이름을 입력하세요!");
				location.reload();
				document.searchName.e_name.focus();
				return false;
			}

			if (httpRequest.status == 200) { // 200 : 정상 종료
				result.innerHTML = "정상종료";
				// 응답 결과가 html이면 responseText로 받고, XML이면 responseXML로 받는다.

				var datas = httpRequest.responseText;

				result.innerHTML = datas;

			} else {
				result.innerHTML = "에러발생";

			}

		} else {
			//result.innerHTML = "상태 : " + httpRequest.readyState;
		}
	}

	function setName(username) {
		opener.document.getElementById("usernameP").value = username;

		//test alert
		alert(username);

		$("#usernameP", opener.document).val(username); //jquery 이용
		$(opener.document).find("#usernameP").val(username); //find를 이용한 jquery
		self.close();

	}
</script>
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
										<li class="breadcrumb-item active">Dashboard</li>
									</ol>
								</div>
								<h4 class="page-title">인사정보현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body table-responsive">
										<div align="right">
											<br>
										</div>
										<table id="datatable-buttons"
											class="table table-striped table-bordered dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">

											<thead>
												<tr>
													<th>사원번호</th>
													<th>사원명</th>
													<th>성별</th>
													<th>주민번호</th>
													<th>연락처</th>
													<th>우편번호</th>
													<th>주소</th>
													<th>내/외국인구별</th>
													<th>nfc코드</th>
													<th>부서</th>
													<th>직급</th>
													<th>직책</th>
													<th>호봉</th>
													<th>입사일</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="fd" items="${vo}">
													<tr color="red">
														<td
															onclick="window.location='HR_modifyFoundation?username=${fd.username}'">${fd.username}</td>
														<td>${fd.e_name}</td>
														<td>${fd.e_gender}</td>
														<td>${fd.e_code}</td>
														<td>${fd.e_hp}</td>
														<td>${fd.e_mailcode}</td>
														<td>${fd.e_address}</td>
														<td>${fd.e_type}</td>
														<td>${fd.e_nfcCodeNFC}</td>
														<td>${fd.department_code}</td>
														<td>${fd.rank_code}</td>
														<td>${fd.position_code}</td>
														<td>${fd.level_step}</td>
														<td>${fd.start_date}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>

										<div align="right">
											<br>
										</div>

										<div class="form-group text-right mb-0">
											<button class="btn btn-primary waves-effect waves-light mr-1"
												type="button" onclick="">수정</button>
											<button type="reset" class="btn btn-secondary waves-effect"
												type="button" onclick="">삭제</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


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