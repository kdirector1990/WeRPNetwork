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
										<td><input type="hidden" class="form-control" name="ep_code"
											value="${eto.ep_code }">${eto.ep_code }</td>

										<th>거래처</th>
										<td>
										<div style="display: inline-block;">
										<input type="text" class="form-control" name="customer_code" onclick="customerNameList()" value="${eto.customer_code }" id = "search_release_code"
										style="width: 140px; float: left;">
										<input type="text" class="form-control" name="customer_name"  value="${eto.customer_name }" id = "release_name"
										style="width: 140px; float: right;">
										</div>
										</td>

										<th>담당자</th>
										<td>
										<div style="display: inline-block;">
										<input type="text" class="form-control" name="username"
											value="${eto.username }" onclick="usernameList()" id="username" style="width: 140px; float: left;">
											<input type="text" class="form-control" name="e_name"
											value="${eto.e_name }" id="e_name" style="width: 140px; float: right;">
											</div>
										</td>
									</tr>

									<tr>
										<th>품번</th>
										<td><input type="text" class="form-control" name="detail_ac_code"
											value="${eto.detail_ac_code }" onclick="ProductName()" id="product_codeP"></td>

										<th>품명</th>
										<td><input type="text" class="form-control" name="product_name"
											value="${eto.product_name }" id="product_nameP"></td>

										<th>견적 수량</th>
										<td><input type="text" class="form-control" name="ep_amount"
											value="${eto.ep_amount }"></td>
									</tr>

									<tr>
										<th>납품 예정일</th>
										<td><input class="form-control" type="date"
											name="ep_deliver_date" value="${eto.ep_deliver_date }"></td>

										<th>견적 등록일</th>
										<td><input class="form-control" type="date" name="ep_reg_date"
											value="${eto.ep_reg_date }"></td>

									</tr>

									<tr>
										<th>공급가</th>
										<td><input class="form-control" type="text" name="ep_price"
											value="${eto.ep_price }"></td>

									</tr>
									<tr>	
									<td colspan="4">
										<input class="btn btn-success waves-effect waves-light" type="submit" value="수정"
										formaction="ST_estimate_modifyPro"> 
									<input class="btn btn-danger waves-effect waves-light" type="submit" value="삭제"
										formaction="ST_estimate_deletePro"> 
									<input class="btn btn-dark waves-effect waves-light" type="button" value="목록보기"
										onClick="window.location.reload()">
										</td>
									</tr>
								</table>
									
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