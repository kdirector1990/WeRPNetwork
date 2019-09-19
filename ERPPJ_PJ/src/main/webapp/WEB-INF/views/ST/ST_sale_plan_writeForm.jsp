<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 <head>
	<%@ include file="../setting.jsp" %>
    </head>

<body>

<%-- 	<!-- end page title -->
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
 --%>

	<div class="row">
		<div class="col-sm-12">
			<div class="card">
				<div class="card-body">
					<div class="table-responsive">
						<c:if test="${deletesale !=0 }">
							<c:if test="${saleplanCnt != 0 }">
								<form method="post">
									<input type="hidden" name="${_csrf.parameterName }"
										value="${_csrf.token }">
									<%-- <input type = "hidden" name = "pageNum" value="#{pageNum }"> --%>
									<table class="table table-bordered mb-0">
										<tr>
											<th>품번</th>
											<td><input class="input" type="text"
												name="detail_ac_code" value="${dto.detail_ac_code}"
												id="product_codeP" onclick="ProductName();"></td>

											<th>품명</th>
											<td><input class="input" type="text" name="product_name"
												value="${dto.product_name}" id="product_nameP"></td>

											<td class="display:none;"><input type="hidden"
												name="saleplan_code" value="${dto.saleplan_code}"></td>
										</tr>

										<tr>
											<th>예상 수량</th>
											<td><input class="input" type="text" name="ef_amount"
												value="${dto.ef_amount }"></td>

											<th>에상 금액</th>
											<td><input class="input" type="text" name="ef_price"
												value="${dto.ef_price}"></td>
										</tr>

										<tr>
											<th>단위</th>
											<td><input class="input" type="text" name="sp_unit"
												value="${dto.sp_unit }"></td>

											<th>시작 기간</th>
											<td><input class="input" type="date" name="s_plan_start"
												value="${dto.s_plan_start }"></td>
										</tr>

										<tr>
											<th>종료 기간</th>
											<td><input class="input" type="date" name="s_plan_end"
												value="${dto.s_plan_end }"></td>
											<td></td>
										</tr>

										<tr>
											<th>비고</th>
											<td colspan="3"><textarea class="input" rows="7"
													cols="150" name="sp_note">${dto.sp_note }</textarea></td>
										</tr>

										<tr>
											<th><input class="inputButton" type="submit" value="수정"
												formaction="ST_sale_Plan_modifyPro"> <input
												class="inputButton" type="submit" value="삭제"
												formaction="ST_sale_Plan_deletePro"> <input
												class="inputButton" type="button" value="수정 취소"
												onClick="window.location.reload()">
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
	<!-- ============================================================== -->
	<!-- End Page content -->
	<!-- ============================================================== -->

	<%@ include file="../setting2.jsp"%>

</body>


</html>