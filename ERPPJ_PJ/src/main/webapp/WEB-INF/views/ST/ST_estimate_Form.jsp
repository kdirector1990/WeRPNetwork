<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->
</head>

<body>

	<c:if test="${updateEstimate == 0}">
		<script type="text/javascript">
			alert("수정 안 됨");
		</script>
	</c:if>
	
	<c:if test="${deleteEstimate == 0}">
		<script type="text/javascript">
			alert("삭제 안 됨");
		</script>
	</c:if>

	<div class="row">
		<div class="col-sm-12">
			<div class="card">
				<div class="card-body">
					<div class="table-responsive">
					<c:if test="${deleteEstimate !=0 }">
						<c:if test="${updateEstimate !=0 }">
							<form method="post">
								<input type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }">
								<table class="table m-0 table-bordered">
									<tr>
										<th>견적 코드</th>
										<td><input type="hidden" class="input" name="ep_code"
											value="${eto.ep_code }">${eto.ep_code }</td>

										<th>거래처</th>
										<td></td>

										<th>담당자</th>
										<td></td>
									</tr>

									<tr>
										<th>품번</th>
										<td></td>

										<th>품명</th>
										<td></td>

										<th>견적 수량</th>
										<td><input type="text" class="input" name="ep_amount"
											value="${eto.ep_amount }"></td>
									</tr>

									<tr>
										<th>납품 예정일</th>
										<td><input class="input" type="date"
											name="ep_deliver_date" value="${eto.ep_deliver_date }"></td>

										<th>견적 등록일</th>
										<td><input class="input" type="date" name="ep_reg_date"
											value="${eto.ep_reg_date }"></td>

										<th>단가</th>
										<td><input class="input" type="text" name="ep_price"
											value="${eto.ep_price }"></td>
									</tr>

									<tr>
										<th>공급가</th>
										<td></td>

										<th>부가세</th>
										<td></td>

										<th></th>
										<td></td>
									</tr>
								</table>
									<input class="inputButton" type="submit" value="수정"
										formaction="ST_estimate_modifyPro"> 
									<input class="inputButton" type="submit" value="삭제"
										formaction="ST_estimate_deletePro"> 
									<input class="inputButton" type="reset" value="수정 취소"> 
									<input class="inputButton" type="button" value="목록보기"
										onClick="window.location.reload()">
							</form>
						</c:if>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end row -->

	<%@ include file="../setting2.jsp"%>
</body>


</html>