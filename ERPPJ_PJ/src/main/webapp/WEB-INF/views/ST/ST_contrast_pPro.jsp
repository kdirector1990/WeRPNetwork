<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
           var count = 1;   
       
           function focuse() {
               $(".chit-table-bordered-primary tbody *").focus(function() {
                  $(".chit-table-bordered-primary tbody *").css("background-color", "");
                  $(this).parent().parent().children().children().css("background-color", "#D6EAF8");
                  $(this).parent().parent().children().css("background-color", "#D6EAF8");
                  $(this).css("background-color", "");
                  $(this).parent().css("background-color", "");
               });
            }
           
           function enterupdate(vv) {
              if(event.keyCode == 13) {
              }
           }
           
           function enterinsert(cc) {
              if(event.keyCode == 13) {
                 $(".chit-table-bordered-primary tbody #enter").attr("onkeyup", "enterupdate(" + cc + ");");
                 $(".chit-table-bordered-primary tbody #enter").attr("id", "enter" + cc);
                 $(".chit-table-bordered-primary tbody #first").attr("id", "first" + cc);
                 $(".chit-table-bordered-primary tbody").append('<tr>' +
                            '<td><input type="text" onfocus = "focuse();" name = "code' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "00000" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "number' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex) 10001" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "no' + count + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "amount' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>' +
                            '<td><select class="form-control" onfocus = "focuse();" name = "state' + count + '" style = "width: 100px; -webkit-appearance: none; border:0px;">' +
                            '<option value="담당자">담당자</option>' +
                             '</select></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "date' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "sysdate' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "text' + count + '" class="form-control" data-toggle="input-mask" style = "width: 200px; border:0px;"></td>' +
                           '<td><input type="text" onfocus = "focuse();" name = "slee' + count + '" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 100px; border:0px;" onkeyup="enterinsert(' + count + ');"></td>' +
                        '</tr>');
                     count = count + 1;
                  $(".chit-table-bordered-primary tbody #first").focus();
              }
           }
           
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
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Codefox</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">UI Kit</a></li>
										<li class="breadcrumb-item active">Images</li>
									</ol>
								</div>
								<h2 class="page-title">견적 대비 생산 현황</h2>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<!-- end row-->

					<!-- ===== MEDIA ==== -->

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h5 class="header-title">견적 관리</h5>
									<p class="sub-header">견적 등록 및 수정하는 기능입니다.</p>
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
										<button type="button"
											class="btn btn-dark waves-effect waves-light">조회</button>
									</div>
									<hr>

									<div class="table-responsive"
										style="height: 500px; float: left; width: 50%; padding: 10px;">
										<form action="#" class="#">
											<div class="table-responsive" style="margin: 10px 0px 10px">
												<table
													class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
													<col style="width: 70px;">
													<col style="width: 70px;">
													<col style="width: 70px;">
													<col style="width: 50px;">
													<col style="width: 50px;">
													<col style="width: 150px;">
													<col style="width: 150px;">
													<col style="width: 150px;">
													<col style="width: 150px;">

													<thead>
														<tr>
															<th>견적코드</th>
															<th>견적일자</th>
															<th>No.</th>
															<th>거래처</th>
															<th>품번</th>
															<th>품명</th>
															<th>규격</th>
															<th>단위</th>
															<th>견적수량</th>
														</tr>
													</thead>


													<tbody>
														<tr>
															<td><input type="text" onfocus="focuse();"
																name="code0" id="first" class="form-control"
																data-toggle="input-mask" data-mask-format="00000"
																placeholder="00000" style="width: 150px; border: 0px;"></td>
															<td><input type="text" onfocus="focuse();"
																name="number0" class="form-control"
																data-toggle="input-mask" data-mask-format="00000"
																style="width: 150px; border: 0px;"></td>
															<td><input type="text" onfocus="focuse();"
																name="no0" class="form-control" onclick="inin();"
																data-toggle="input-mask"
																style="width: 50px; border: 0px;"
																placeholder="ex) 10001;"></td>
															<td><input type="text" onfocus="focuse();"
																name="amount0" class="form-control"
																data-toggle="input-mask" data-mask-format="00000"
																style="width: 150px; border: 0px;"></td>
															<td><select class="form-control" onfocus="focuse();"
																name="state0"
																style="width: 100px; -webkit-appearance: none; border: 0px;">
																	<option value="미결">담당자</option>
															</select></td>
															<td><input type="text" onfocus="focuse();"
																name="date0" id="first" class="form-control"
																data-toggle="input-mask" data-mask-format="0000/00/00"
																placeholder="YYYY/DD/MM"
																style="width: 150px; border: 0px;"></td>
															<td><input type="text" onfocus="focuse();"
																name="sysdate0" id="first" class="form-control"
																data-toggle="input-mask" data-mask-format="0000/00/00"
																placeholder="YYYY/DD/MM"
																style="width: 150px; border: 0px;"></td>
															<td><input type="text" onfocus="focuse();"
																name="text0" class="form-control"
																data-toggle="input-mask"
																style="width: 200px; border: 0px;"></td>
															<td><input type="text" onfocus="focuse();"
																name="slee0" id="enter" class="form-control"
																data-toggle="input-mask"
																style="width: 100px; border: 0px;"
																onkeyup="enterinsert(0);"></td>
														</tr>
													</tbody>
												</table>
											</div>

										</form>
									</div>
									<!-- end .table-responsive-->
									<div class="row">
										<div class="col-lg-6" style="float: right;">
											<div class="card" style="width: 680px; height: 500px;">
												<div class="card-body" style="width: 500px; padding: 10px;">
													<div class="table-responsive" style="width: 630px;">
														<table class="table mb-0 table-hover table-bordered">
															<thead>
																<tr>
																	<th scope="col">주문번호</th>
																	<th scope="col">주문일자</th>
																	<th scope="col">No.</th>
																	<th scope="col">주문수량</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>

																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- end row -->
								</div>
								<!-- end card -->
							</div>
							<!-- end col -->
						</div>
						<!-- end container-fluid -->
					</div>
					<!-- end content -->

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