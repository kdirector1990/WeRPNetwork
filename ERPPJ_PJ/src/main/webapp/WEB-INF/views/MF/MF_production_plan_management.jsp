<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../setting.jsp" %>
</head>
	<body>
     	 <!-- Begin page -->
    	 <div id="wrapper">
    	 <%@ include file="../sidebar.jsp" %>
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">제조</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">생산관리</a></li>
									<li class="breadcrumb-item active">생산계획관리</li>
								</ol>
							</div>
							<h4 class="page-title">생산계획관리</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<!-- 생산 계획 등록 내용  -->
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">

								<h4 class="header-title">생산계획</h4>
								<p class="sub-header">관리</p>

								<hr>
								<table id="datatable"
									class="table m-0 table-bordered"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead class="bg-primary text-white table-hover">
										<tr>
											<th>생산계획코드</th>
											<th>BOM코드</th>
											<th>제품계정코드</th>
											<th>기간시작</th>
											<th>기간종료</th>
											<th>예상 생산 원가</th>
											<th>목표 생산 수량</th>
											<th>전결라인코드</th>
											<th>전결현황코드</th>
										</tr>
									</thead>


									<tbody>
										<c:forEach var="list" items="${dto}">
											<tr>
												<td>${list.p_pp_code}</td>
												<td>${list.bom_code}</td>
												<td>${list.product_code}</td>
												<td>${list.start_date}</td>
												<td>${list.end_date}</td>
												<td>${list.ef_cost}</td>
												<td>${list.ef_amount}</td>
												<td>${list.eas_code}</td>
												<td>${list.e_approval_code}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

								<div class="result">
									<br>
									<form id="updatePlan">
										<input type='hidden' name="${_csrf.parameterName }"
											value="${_csrf.token }"> <br>
										<table id="datatable2"
											class="table table-striped dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0;">
											<thead>
											</thead>

											<tbody>
											</tbody>
										</table>
									</form>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->

		<%@ include file="../footer.jsp" %>


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

    <%@ include file="../rightbar.jsp" %>
    <%@ include file="../setting2.jsp" %>
    
    <!-- Datatable plugin js -->
    <script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
    <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>
        
  
    </body>
</html>