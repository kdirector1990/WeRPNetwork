<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>

</head>

<body>

	<!-- end page title -->
	<c:if test="${updateSaleList == 0}">
		<script type="text/javascript">
			alert("안 됨");
		</script>
	</c:if>

	<c:if test="${deletesaleList == 0}">
		<script type="text/javascript">
			alert("삭제 안 됨");
		</script>
	</c:if>


	<div class="row">
		<div class="col-sm-12">
			<div class="card">
				<div class="card-body">
					<div class="table-responsive">
						<c:if test="${deletesaleList !=0 }">
							<c:if test="${updateSaleList != 0 }">
								<form method="post">
									<input type="hidden" name="${_csrf.parameterName }"
										value="${_csrf.token }">
									<%-- <input type = "hidden" name = "pageNum" value="#{pageNum }"> --%>
									<table class="table table-bordered mb-0">
										<tr>
											<th>판매 코드</th>
											<td><input type="hidden" class="input"
												name="salelist_code" value="${sto.salelist_code }">${sto.salelist_code }
											</td>

											<th>제품명</th>
											<td>
											<div style="display: inline-block;">
											<input class="form-control" type="text" name="detail_ac_code" value="${sto.detail_ac_code }"
												id="product_codeP" onclick="ProductName()" style="width: 120px; float: left;">
											<input class="form-control" type="text" name="product_name" value="${sto.product_name }"
												id="product_nameP"  style="width: 120px; float: right;"></div></td>
											
											<th>담당자</th>
											<td><div style="display: inline-block;">
											<input class="form-control" type="text" name="username" value="${sto.username }"
												onclick="usernameList()" id="username" style="width: 120px; float: left;">
											<input class="form-control" type="text" name="e_name" value="${sto.e_name }"
												id="e_name"  style="width: 120px; float: right;"></div></td>


										</tr>

										<tr>

											<th>등록일</th>
											<td><input class="form-control" type="hidden" name="reg_date"
												value="${sto.reg_date }">${sto.reg_date }</td>

											<th>출고 요청일</th>
											<td><input class="form-control" type="date"
												name="release_o_date" value="${sto.release_o_date }"></td>

											<th>단위</th>
											<td><input class="form-control" type="text" name="unit"
												value="${sto.unit }"></td>


										</tr>

										<tr>

											<th>가격</th>
											<td><input class="form-control" type="text" name="price"
												value="${sto.price }"></td>

											<th>거래처</th>
											<td>
											<div style="display: inline-block;">
											<input class="form-control" type="text" name="customer_code" value="${sto.customer_code }"
												id="customer_codeP" onclick="customerNameList()" style="width: 120px; float: left;">
											<input class="form-control" type="text" name="customer_name" value="${sto.customer_name }"
												id="customer_nameP"  style="width: 120px; float: right;"></div></td>
												
											<th>출고여부</th>
											<td>
											<select class="form-control select" name = "release_state"
												style="width: 150px;">
													<option value="1">출고</option>
													<option value="2">미출고</option>
											</select>
											
											</td>
										</tr>

										<tr>
										<tr>
											<th>비고</th>
											<td colspan="5"><textarea class="form-control" rows="7"
													cols="150" name="note">${sto.note }</textarea></td>
										</tr>

										<tr>
											<th><input class="inputButton" type="submit" value="수정"
												formaction="ST_saleList_modifyPro"> <input
												class="inputButton" type="submit" value="삭제"
												formaction="ST_saleList_deletePro"> <input
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