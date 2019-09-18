<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Responsive Table css -->
<link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css"
	rel="stylesheet" type="text/css" />
</head>
<script src="/erp/resources/assets/js/request.js"></script>
<script type="text/javascript">
    function salePlanWriteForm(url) {
    	sendRequest(callback, "ST_saleList_Form", "post", "${_csrf.parameterName }=${_csrf.token }&salelist_code="+url);
    }
    
    function callback() {
    	var result = document.getElementById("result");
    	
    	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
    		if(httpRequest.status == 200){	// 200 : 정상 종료
    		 	result.innerHTML = "정상종료";
    			
    			var datas = httpRequest.responseText; 
    			
    			result.innerHTML = datas;
    		} else {
    			result.innerHTML = "에러발생";
    		}
    	} 
    	else {
    		result.innerHTML = "상태 : " + httpRequest.readyState;
    	}
    }

    
    
    </script>

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
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">출고 관리</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title mb-3">판매 관리</h4>

									<table class="col-12">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">거래처</th>
											<td class="col-md-2 input-group"><input type="text"
												name="customerName" id="customerName" class="form-control">
											</td>

											<th class="col-md-1 col-form-label">담당자</th>
											<td class="col-md-2 input-group"><input type="text"
												name="username" id="username" class="form-control">
											</td>
											<th class="col-md-1 col-form-label">품명</th>
											<td class="col-md-2 input-group"><input type="text"
												name="ProductName" id="ProductName" class="form-control">
												
											<th class="col-md-1 col-form-label">출고여부</th>
											<td class="col-md-2 input-group"><input type="text"
												name="ProductName" id="ProductName" class="form-control">
											</td>
										</tr>
									</table>
									<div align="right">
										<button type="button" class="btn btn-dark waves-effect waves-light" >조회</button>
										<a onclick="window.open('ST_saleList_write', '_blank', 'width=1500 height=600')">
										<button type="button" class="btn btn-success waves-effect waves-light">추가</button></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div class="card">
										<table class="table mb-0 table-hover table-bordered"
											style="table-layout: fixed;">
											<thead class="">
												<tr>
													<th>판매 코드</th>
													<th>제품명</th>
													<th>담당자</th>
													<th>등록일</th>
													<th>출고 요청일</th>
													<th>단위</th>
													<th>수량</th>
													<th>가격</th>
													<th>거래처</th>
													<th>출고여부</th>
													<th>비고</th>
												</tr>

											</thead>
											<tbody>
												<c:if test="${cnt > 0}">
													<c:forEach var="sto" items="${stos}">
														<tr onclick="salePlanWriteForm('${sto.salelist_code}');">
															<td>${sto.salelist_code}</td>
															<td></td>
															<!-- 제품명 -->
															<td></td>
															<!-- 담당자 -->
															<td>${sto.reg_date }</td>
															<td>${sto.release_o_date }</td>
															<td>${sto.unit }</td>
															<td>${sto.amount }</td>
															<td>${sto.price }</td>
															<td>${sto.customer_code }</td>
															<td>${sto.release_state }</td>
															<td
																style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${sto.note}</td>
														</tr>
													</c:forEach>
												</c:if>
											</tbody>
										</table>
									</div>
									<!-- end .table-rep-plugin-->
								</div>
							</div>
						</div>
					</div>
					<div id="result">
						<!-- 상세 페이지 출력 위치 -->
					</div>


				</div>
				<!-- end container-fluid -->

			</div>
			<!-- end content -->

			<%@ include file="../footer.jsp"%>

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->
		<%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>


</body>
</html>