<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%> 
<script type="text/javascript">
        
</script>
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
							<h4 class="page-title">기획서등록</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">등록</h4>
								<p class="sub-header">기획서 등록</p>

								<form action="MS_insertPlanPro" id="insertPlan">
									<table id="datatable"
									class="table m-0 table-bordered"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<thead class="">
										<tr>
											<th>제품명</th>
											<th>가격</th>
											<th>재고</th>
										</tr>
									</thead>
									
									</tbody>
								</table>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->
			 <%@ include file="../footer.jsp"%>

		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->


	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
</body>
</html>