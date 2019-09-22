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
        var count = 0;
    	
    	
    	
    	function enterinsert() {
   			
   			$(".chit-table-bordered-primary tbody").append('<tr id = "tr'+count+'">' +   					
                    '<td><input type="text" name = "position_record_code'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" ></td>'+
                    '<td><input type="text" name = "'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" ></td>'+
                    '<td><input type="text" name = "record_title'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" ></td>'+
                    '<td><input type="text" name = "record_division'+count+'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" ></td>'+
                    '<td><input type="text" class="form-control" placeholder="mm/dd/yyyy" name = "record_date'+count+'" data-provide="datepicker" data-date-autoclose="true"></td>'+
                   '</tr>');
                count = count + 1;
                
      		
    	}
    	
    	function enterdelete() {
    		count = count - 1;
    		
   			$("#tr"+count).remove();

    	}
    	
    </script>
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
	href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
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
									<button type="button"
										class="btn btn-outline-primary waves-effect waves-light"
										disabled>사원추가</button>
								</div>
								<h4 class="page-title">인사발령등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->



					<div class="row">
						<div class="col-sm-12">
							<form name="HR_record_input" action="HR_recordinput" method="post">
								<input type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }">
								<div class="card">								
									<div class="card-body">
										<div class="form-group text-right mr-1">
											<button class="btn btn-primary waves-effect waves-light mr-1"
												type="button" onclick="enterinsert();">추가</button>
											<button class="btn btn-primary waves-effect waves-light mr-1"
												type="button" onclick="enterdelete();">삭제</button>
										</div>

										<div class="table-responsive" style="margin: 15px 0px 50px">
											<table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
												<col style="width: 5%;">
												<col style="width: 25%">
												<col style="width: 25%;">
												<col style="width: 25%;">
												<col style="width: 20%;">

												<thead>
													<tr>
														<th>NO</th>
														<th>발령호수</th>
														<th>제목</th>
														<th>발령구분</th>
														<th>발령일자</th>
													</tr>
												</thead>

												<tbody id="result">
												</tbody>
											</table>
										</div>
									</div>
									<div class="form-group text-right mr-1">
										<button class="btn btn-primary waves-effect waves-light mr-1"
											type="submit">입력</button>
										<button type="reset"
											class="btn btn-secondary waves-effect waves-light mr-1">Cancel</button>
									</div>								
								</div>
							</form>
						</div>
					</div>


					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h4 class="header-title">발령공고</h4>									

									<div class="row">
										<div class="col-xl-6">
											<form action="HR_APinput" class="form-horizontal" method="post">
												<input type="hidden" name="${_csrf.parameterName }"	value="${_csrf.token }">												
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">공고명</label>
													<div class="col-md-10">
														<input type="text" id="simpleinput" class="form-control"
															name="ap_name">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">공고내용</label>
													<div class="col-md-10">
														<input type="text" id="ap_content" class="form-control"
															name="ap_content">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">공고등록일</label>
													<div class="col-md-10">
														<input type="date" name="ap_reg_date"
															placeholder="mm/dd/yyyy" style="size: 100px;"> <i
															class="mdi mdi-calendar"></i>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label" for="simpleinput">공고시행일</label>
													<div class="col-md-10">
														<input type="date" name="ap_est_date"
															placeholder="mm/dd/yyyy" style="size: 100px;"> <i
															class="mdi mdi-calendar"></i>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-md-2 col-form-label"
														for="example-textarea">공고상태</label>
													<div class="col-md-10">
														<select class="form-control select2" name="ap_status"
															onchange="">
															<option value="1">1. 공고예정</option>
															<option value="2">2. 공고중</option>
															<option value="3">3. 시행완료</option>
															<option value="4">4. 시행취소</option>
															<option value="5">5. 삭제</option>
														</select>
													</div>
												</div>

												<div class="form-group mb-0">
													<input type="submit" class="btn btn-success" value="공고등록">
												</div>
											</form>
										</div>

										<div class="col-xl-6">
											<form class="form-horizontal">

												<div class="card">
													<div class="card-body table-responsive">
														<br>
														<table id="datatable"
															class="table table-striped table-bordered dt-responsive nowrap"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<thead>
																<tr>
																	<th></th>
																	<th>사원코드</th>
																	<th>사원명</th>
																	<th>부서</th>
																	<th>직책</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<th></th>
																	<td>20000601</td>
																	<td>이수희</td>
																	<td>국내영업부</td>
																	<td>전무</td>
																</tr>
															</tbody>

															<tbody>
																<tr>
																	<th></th>
																	<td>20001101</td>
																	<td>박용덕</td>
																	<td>국내영업부</td>
																	<td>부장</td>
																</tr>
															</tbody>

															<tbody>
																<tr>
																	<th></th>
																	<td>20020603</td>
																	<td>이준상</td>
																	<td>총무부</td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>

											</form>
										</div>
										<!-- end col -->
									</div>
									<!-- end row -->

								</div>
							</div>
						</div>
						<!-- end col -->
					</div>


					<%@ include file="../footer.jsp"%>
				</div>
			</div>
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