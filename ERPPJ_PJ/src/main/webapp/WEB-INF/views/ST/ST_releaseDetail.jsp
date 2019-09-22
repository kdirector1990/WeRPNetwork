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


		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<div class="table-responsive">
								<c:if test="${deleteRelease != 0 }">
									<c:if test="${updateRelease != 0 }">
										<form method="post">
											<input type="hidden" name="${_csrf.parameterName }"
												value="${_csrf.token }">
											<%-- <input type = "hidden" name = "pageNum" value="#{pageNum }"> --%>
											<table class="table m-0 table-bordered">
												<tr>
													<th style="width: 215px;">출고 코드</th>
													<td><input type="hidden" class="form-control" name="sar_code"
														value="${rto.sar_code }">${rto.sar_code }</td>
													
													<th>품명</th>
													<td>
														<div style="display: inline-block;">
															<input class="form-control" type="text"
																name="detail_ac_code" value="${rto.detail_ac_code }"
																id="product_codeP" onclick="ProductName()"
																style="width: 120px; float: left;"> <input
																class="form-control" type="text" name="product_name"
																value="${rto.product_name }" id="product_nameP"
																style="width: 120px; float: right;">
														</div>
													</td>

										</tr>
												
												<tr >
													<th >출고처</th>
													<td style="width: 500px;"><div class="col-md-10">
													<div style="display: inline-block;">
													<input type="text" class="form-control" name="customer_code"
													 id = "customer_codeP" onclick="customerNameList()"style="width: 140px; float: left;" value="${rto.customer_code }">
													 
													<input type="text" name="release_name" class="form-control"
															id="customer_nameP" value="${rto.release_name }"style="width: 140px; float: right;">
													</div>
													</div></td>
													
													<th>출고 수량</th>
													<td><input class="form-control" type="text"
														name="release_count" value="${rto.release_count}"></td>
												</tr>
		
												<tr>
													<th>입고처</th>
													<td><div class="col-md-10">
													<div style="display: inline-block;">
													<input type="text" class="form-control" name="customer_code"
													 id = "customer_codeM" onclick="customerNameList3()" style="width: 140px; float: left;" value="${rto.customer_code }">
													 
													<input type="text" name="stored_name" class="form-control"
															id="customer_nameM" value="${rto.stored_name }" style="width: 140px; float: right;">
													</div>
													</div></td>
													
													<th>입고 수량</th>
													<td><input class="form-control" type="text"
														name="stored_count" value="${rto.stored_count}"></td>
												
												</tr>
		
												<tr>
													<th>등록일</th>
													<td><input class="form-control" type="hidden" name="release_date"
														value="${rto.release_date }">${rto.release_date }</td>
												
													<th>담당자</th>
													<td><div style="display: inline-block;">
													<input class="form-control" type="text" name="username" value="${rto.username }"
														onclick="usernameList()" id="username" style="width: 120px; float: left;">
													<input class="form-control" type="text" name="e_name" value="${rto.e_name }"
													id="e_name"  style="width: 120px; float: right;"></div></td>
		
													
												</tr>
		
												<tr>
													<th>단가</th>
													<td><input type="text" class="form-control" name="unit_cost"
														value="${rto.unit_cost}" style="width: 230px;"></td>
													
													
													<th>구분</th>
													<td>
													<select class="form-control" name="sar_type">
														<option value = "1">1. 입고</option>
														<option value="2">2. 판매</option>
														<option value="3">3. 재입고</option>
													</select>
													</td>
													
												</tr>
		
												<tr>
													<th colspan="3"><input class="inputButton" type="submit" value="수정"
														formaction="ST_release_modifyPro"> 
														<input class="inputButton" type="submit" value="삭제"
														formaction="ST_release_deletePro"> 
														<input class="inputButton" type="button" value="수정 취소" onClick="window.location.reload()"> 
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

	<%@ include file="../setting2.jsp"%>

</body>


</html>