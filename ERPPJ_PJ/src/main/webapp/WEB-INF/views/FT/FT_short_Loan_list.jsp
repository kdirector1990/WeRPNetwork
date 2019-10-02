<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->
<link
	href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<!-- 페이지 내용 입력 공간 -->
			<div class="containerfluid">
				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">재무</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">부채목록</a></li>
									<li class="breadcrumb-item active">단기 대여금 목록</li>
								</ol>
							</div>
							<h4 class="page-title">단기 대여금 목록</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">
								<table id="datatable"
									class="table table-striped table-bordered dt-responsive nowrap">
									<col style="width: 10%;">
	                                <col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<col style="width: 10%;">
									<thead>
										<tr>
											<th>단기대여금코드</th>
											<th>단기대여금명</th>
											<th>거래처코드</th>
	                                        <th>거래처명</th>
											<th>사원번호</th>
											<th>사원이름</th>
											<th>대여금액</th>
											<th>대여일</th>
											<th>만기일</th>
											<th>이자율</th>
										</tr>
									</thead>
	  
	                                <tbody>
	                                    <c:set var="cnt" value="0"/>  
	                                    <c:if test="${loan != null}">                             
	                                    	<c:forEach var="lo" items="${loan}">
	                                      		<tr>																			
	                                               <td>${lo.loanCode}</td>
	                                               <td>${lo.loanName}</td>
	                                               <td>${lo.customer_code}</td>
	                                               <td>${lo.customer_name}</td>
	                                               <td>${lo.username}</td>
	                                               <td>${lo.ename}</td>
	                                               <td><fmt:formatNumber value="${lo.loan_s_price}" pattern="#,###"/></td>
	                                               <td>${lo.loan_s_date.substring(0,10)}</td>
	                                               <td>${lo.loan_s_expriration.substring(0,10)}</td>
	                                               <td>${lo.loan_s_interest}</td>
	                                           </tr>
	                                           <c:set var="cnt" value="${cnt+1}"/>
	                                      	</c:forEach>
                                  		</c:if>
                                  		<c:if test="${loan == null}">
	                                		<c:forEach var = "depo" begin="1" end="100">
	                                    		<tr>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
													<td>${depo}</td>
	                                       			<c:set var="cnt" value="${cnt+1}"/>
	                                       		</tr>
	                                   		</c:forEach>
	                               		</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 페이지 내용 입력 공간 종료 -->

			<%@ include file="../footer.jsp"%>

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
	<!-- Datatable plugin js -->
	<script
		src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

	<script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
	<script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
	<script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

	<script src="/erp/resources/assets/js/pages/datatables.init.js"></script>

</body>
</html>