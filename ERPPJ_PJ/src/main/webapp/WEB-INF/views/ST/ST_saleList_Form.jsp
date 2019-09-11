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
			<div class="card-body" style="width: 1500px;">
				<div class="table-responsive">
					<c:if test="${deletesale !=0 }">
						<c:if test="${saleplanCnt != 0 }">
							<form method="post">
								<input type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }">
								<%-- <input type = "hidden" name = "pageNum" value="#{pageNum }"> --%>
								<table class="table table-striped mb-0">
									<tr>
										<th>판매 코드</th>
										<td><input type="hidden" class="input"
											name="" value="">
											</td>

										<th>제품명</th>
										<td><input class="input" type="text" name=""
											value=""></td>
										
										<th>담당자</th>
										<td><input class="input" type="text"
											name="" value=""></td>	
											

									</tr>

									<tr>
									
										<th>등록일</th>
										<td><input class="input" type="text"
											name="" value=""></td>

										<th>출고 요청일</th>
										<td><input class="input" type="text" name=""
											value=""></td>
											
										<th>단위</th>
										<td><input class="input" type="text" name=""
											value=""></td>	
										

									</tr>

									<tr>
										
										<th>가격</th>
										<td><input class="input" type="text" name="" value="">
										</td>
										
										<th>거래처</th>
										<td><input class="input" type="text" name=""
											value="${dto.s_plan_start }"></td>
										
										<th>출고여부</th>
										<td><input class="input" type="text" name=""
											value=""></td>
									</tr>

									<tr>
										
									<tr>
										<th>비고</th>
										<td colspan="5"><textarea class="input" rows="7" cols="150" name = "" ></textarea></td>
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