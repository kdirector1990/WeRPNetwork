<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Responsive Table css -->
        <link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css" rel="stylesheet" type="text/css" />
    </head>
    <script src="/erp/resources/assets/js/request.js"></script>
	<script type="text/javascript">
	    function ST_releaseDetailForm(url) {
	    	sendRequest(callback, "ST_releaseDetail", "post", "${_csrf.parameterName }=${_csrf.token }&sar_code="+url);
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
										<li class="breadcrumb-item active">견적 현황</li>
									</ol>
								</div>
								<h4 class="page-title">견적 현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
										<form id="select_user_time">
											<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
											<table class="col-12">
													<tr class="form-group row">
														<th class="col-md-1 col-form-label">거래처</th>
															<td class="col-md-2 input-group">
																<input type="text" name="" class="form-control">
															</td>
													
														<th class="col-md-1 col-form-label">담당자</th>
															<td class="col-md-2 input-group">
																<input type="text" name="" class="form-control">
															</td>
														<th class="col-md-1 col-form-label">품명</th>
															<td class="col-md-2 input-group">
																<input type="text" name="" class="form-control">
															</td>
														<td class="col-md-2 input-group"><button type="button" class="btn btn-primary waves-effect waves-light" onclick = "searchWork();">검색</button></td>
													</tr>	
												</table>
											</form>
										</div>
									</div>
								<!-- end card -->
							</div>
							<!-- end col -->
						</div>
						<!-- end row -->
					
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body">
										<div class="responsive-table-plugin">
                                            <div class="table-rep-plugin">
                                                <div class="table-responsive" data-pattern="priority-columns">
                                                    <table id="tech-companies-1" class="table m-0 table-bordered table-hover">
                                                        <thead class="bg-primary text-white">
														<tr>
															<th>입출고 코드</th>
															<th>출고 거래처명</th>
															<th>등록일</th>
															<th>출고 수량</th>
															<th>입고처</th>
															<th>입고 수량</th>
															<th>담당자</th>
															<th>구분</th>
															<th>단가</th>
															<th>합계액</th>
														</tr>
													</thead>
                                                        <tbody>
														<c:if test="${cnt > 0}">
															<c:forEach var="rto" items="${rtos}">
																<tr onclick="ST_releaseDetailForm('${rto.sar_code }');">
																	<td>${rto.sar_code }</td> <!-- 입출고 코드 -->
																	<td>${rto.release_name }</td><!-- 출고처 -->
																	<td>${rto.release_date }</td> <!-- 등록일 -->
																	<td>${rto.release_count }</td><!-- 출고 수량 -->
																	<td>${rto.stored_name }</td><!-- 입고처 -->
																	<td>${rto.stored_count }</td>
																	<td>${rto.username }</td><!--담당자  -->
																	<td>${rto.sar_type }</td>
																	<td>${rto.unit_cost }</td><!-- 단가 -->
																	<td></td><!-- 합계액 -->
																</tr>
															</c:forEach>
														</c:if>
													</tbody>
                                                    </table>
                                                </div> <!-- end .table-responsive -->
        
                                            </div> <!-- end .table-rep-plugin-->
                                        </div> <!-- end .responsive-table-plugin-->
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

			<%@ include file="../footer.jsp" %>

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