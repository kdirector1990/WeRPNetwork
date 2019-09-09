<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
</head>

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사정보</a></li>
                                            <li class="breadcrumb-item active">책정임금현황</li>
                                        </ol>
								</div>
								<h4 class="page-title">책정임금현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
			

			<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-body table-responsive">
							<table class = "col-12" id="datatable"
								style="border-collapse: collapse; border-spacing: 0; width: 100%;">
								<tr class="form-group row">
									<th class="col-md-1 col-form-label">부서</th>
									<td class="col-md-2 input-group">
											<input type="text" class="form-control" name="e_name" placeholder = "부서명">
											</td>
									<td class="col-md-1 col-form-label">&nbsp;</td>			
									<th class="col-md-1 col-form-label">사원검색</th>
										<td class="col-md-2 input-group">
											<input type="text" class="form-control" name="e_name" placeholder = "한글이름">
											</td>	
									<td><button type="button" class="btn btn-primary waves-effect waves-light" id = "search">검색</button></td>		
								</tr>
							</table>
							                    	</div>
                             </div>
		                   </div> 
                         </div>
                         
                      <div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:15%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:15%;">
                                            <col style = "width:15%;">
                                            <col style = "width:15%;">
                                 <thead>
									<tr>
										<th>사원번호</th>
										<th>사원명</th>
										<th>부서</th>
										<th>직급</th>
										<th>입사일</th>
										<th>기본급</th>
										<th>급호수당</th>
										<th>연장수당</th>
									</tr>
								</thead>
								<tbody id = "result"></tbody>

							</table>

						</div>
					</div>
				</div>
			</div></div>



			<%@ include file="../footer.jsp" %>
		
		</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
        <!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>

</body>
</html>