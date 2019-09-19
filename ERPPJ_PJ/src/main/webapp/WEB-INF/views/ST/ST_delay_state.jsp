<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">


<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
	
	$(function() {
		$('#search')
				.click(
						function() {
							var param = {

							}
							param.pa_name = $("#pa_name").val();
							param.username = $("#username").val();
							param.e_name = $("#e_name").val();
							param.pa_date = $("#pa_date").val();

							/* alert(param.pa_name);
							alert(param.username);
							alert(param.e_name);
							alert(param.pa_date); */
				
						$.ajax({
							url : '${pageContext.request.contextPath}/ST_delay_state_result?${_csrf.parameterName}=${_csrf.token }',
							type : 'GET',
							data : param,
							success : function(data) {
								$('#result').html(data);
							},
							error : function() {
								alert("에러");
							}
						});
			});
	});
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
							<div class="page-title-box">
								<div class="page-title-right">
									<!--  <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Codefox</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">UI Kit</a></li>
                                            <li class="breadcrumb-item active">Images</li>
                                        </ol> -->
								</div>
								<h2 class="page-title">출고지연현황</h2>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<!-- end row-->

					<!-- ===== MEDIA ==== -->
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-body">
										<table class="col-12">
											<tr class="form-group row">
												<th class="col-md-1 col-form-label">거래처</th>
												<td class="col-md-2 input-group"><input type="text"
													name="" id="" class="form-control"></td>
	
												<th class="col-md-1 col-form-label">품목</th>
												<td class="col-md-2 input-group"><input type="text"
													name="" id="" class="form-control"></td>
	
												<th class="col-md-1 col-form-label">사원</th>
												<td class="col-md-2 input-group"><input type="text"
													name="" id="" class="form-control"></td>
	
												<th class="col-md-1 col-form-label">출고요청일</th>
												<td class="col-md-2 input-group"><input type="text"
													name="" class="form-control" data-provide="datepicker"
													data-date-autoclose="true"></td>
											</tr>
										</table>
										
										<div align="right">
											<button type="button" class="btn btn-primary waves-effect waves-light" id = "search">검색</button>
										</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end row -->
					
					<div id = "result">
          					<!-- 결과출력 -->
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


		<%@ include file="../rightbar.jsp"%>
		<%@ include file="../setting2.jsp"%>
</body>
</html>