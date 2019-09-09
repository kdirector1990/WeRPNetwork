<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Responsive Table css -->
<link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css"
	rel="stylesheet" type="text/css" />
</head>

<body>

	<!-- Begin page -->
	<div id="wrapper">

		<c:if test="${updateRelease == 0}">
			<script type="text/javascript">
				alert("안 됨");
			</script>
		</c:if>
		
		<c:if test="${deleteRelease == 0}">
			<script type="text/javascript">
				alert("안 됨");
			</script>
		</c:if>



		<div class="col-lg-6">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
						<c:if test="${deleteRelease != 0 }">
							<c:if test="${updateRelease != 0 }">
								<form method="post">
									<input type="hidden" name="${_csrf.parameterName }"
										value="${_csrf.token }">
									<%-- <input type = "hidden" name = "pageNum" value="#{pageNum }"> --%>
									<table class="table table-striped mb-0">
										<tr>
											<th>출고 코드</th>
											<td><input type="hidden" class="input" name="sar_code"
												value="${rto.sar_code }">${rto.sar_code }</td>

											<th>출고 거래처명</th>
											<td><input class="input" type="text" name="release_name"
												value="${rto.release_name }"></td>
										</tr>

										<tr>
											<th>출고 일자</th>
											<td><input class="input" type="text" name="release_date"
												value=""></td>

											<th>출고처</th>
											<td><input class="input" type="text" name="" value=""></td>

										</tr>

										<tr>
											<th>담당자</th>
											<td><input class="input" type="text" name="" value=""></td>

											<th>출고 수량</th>
											<td><input class="input" type="text"
												name="release_count" value="${rto.release_count}"></td>
										</tr>

										<tr>
											<th>단가</th>
											<td><input type="text" class="input" name="unit_cost"
												value="${rto.unit_cost}"></td>


											<th>합계액</th>
											<td><input type="text" class="input" name=" " value=""></td>
										</tr>

										<tr>
											<th><input class="inputButton" type="submit" value="수정"
												formaction="ST_release_modifyPro"> <input
												class="inputButton" type="submit" value="삭제"
												formaction="ST_release_deletePro"> <input
												class="inputButton" type="reset" value="수정 취소"> <input
												class="inputButton" type="button" value="목록보기"
												onClick="window.location.reload()">
											<td></td>
											<td></td>
											<td></td>
										</tr>

									</table>
								</form>
							</c:if>
						</c:if>
					</div>
			</div>
		</div>
	</div>
	<!-- end content -->
	</div>

	<%@ include file="../setting2.jsp"%>

</body>


</html>