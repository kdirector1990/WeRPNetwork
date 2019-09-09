<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->
</head>

<body>

	<!-- end page title -->
	<c:if test="${selectCnt == 0}">
		<script type="text/javascript">
			alert("안 됨");
		</script>
	</c:if>

	<c:if test="${deletesale == 0}">
		<script type="text/javascript">
			alert("삭제 안 됨");
		</script>
	</c:if>



	<div class="col-lg-6">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<c:if test="${deletesale !=0 }">
						<c:if test="${saleplanCnt != 0 }">
							<form method="post">
								<input type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }">
								<%-- <input type = "hidden" name = "pageNum" value="#{pageNum }"> --%>
								<table class="table table-striped mb-0">
									<tr>
										<th style="width: 215px;">품번</th>
										<td><input type="hidden" class="input"
											name="saleplan_code" value="${dto.saleplan_code}">${dto.saleplan_code}
											</td>

										<th>품명</th>
										<td><input class="input" type="text" name="saleplan_name"
											value=""></td>

									</tr>

									<tr>
										<th>계획 수량</th>
										<td><input class="input" type="text"
											name="saleplan_amount" value="${dto.saleplan_amount }"></td>
									
									
										<th>예상 수량</th>
										<td><input class="input" type="text"
											name="ef_amount" value="${dto.ef_amount }"></td>

										

									</tr>

									<tr>
										<th>에상 금액</th>
										<td><input class="input" type="text" name="ef_price"
											value="${dto.ef_price}"></td>

										<th>단위</th>
										<td><input class="input" type="text" name="sp_unit" value="${dto.sp_unit }">
										</td>
									</tr>

									<tr>
										<th>시작 기간</th>
										<td><input class="input" type="date" name="s_plan_start"
											value="${dto.s_plan_start }"></td>

										<th>종료 기간</th>
										<td><input class="input" type="date" name="s_plan_end"
											value="${dto.s_plan_end }"></td>
									</tr>
									
									<tr>
										<th>비고</th>
										<td colspan="3"><textarea class="input" rows="7" cols="150"></textarea></td>
									</tr>

									<tr>
										<th><input class="inputButton" type="submit" value="수정"
											formaction="ST_sale_Plan_modifyPro"> <input
											class="inputButton" type="submit" value="삭제"
											formaction="ST_sale_Plan_deletePro"> <input
											class="inputButton" type="button" value="수정 취소" onClick="window.location.reload()">
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


	<!-- ============================================================== -->
	<!-- End Page content -->
	<!-- ============================================================== -->

	<%@ include file="../setting2.jsp"%>

</body>


</html>