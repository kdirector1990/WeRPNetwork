<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type="text/javascript">
	function search_bs() {
		var param = new Object();
		var jsonData;

		param.fiscalyear = $("#fiscalyear").val();

		jsonData = JSON.stringify(param);

		$
				.ajax({
					url : '${pageContext.request.contextPath}/FT_search_BS?${_csrf.parameterName}=${_csrf.token }',
					type : 'POST',
					data : jsonData,
					dataType : "json",
					contentType : "application/json;charset=UTF-8",
					success : function(bs_map) { 
						var assets = bs_map.assets_list;
						var liab = bs_map.liab_list;
					 	var capit = bs_map.capit_list;
						
						$('#bs_result').empty();
						
						var assets_left_total = 0;
						var assets_right_total = 0;
						$('#bs_result').append('<tr><td style="width: 20%;"></td><td style="width: 20%;"></td><td align=center style="width: 20%;"><h4>1. 자산</h4></td><td style="width: 20%;"></td><td style="width: 20%;"></td></tr>');
						for (var i = 0; i < assets.length; i++) {
							var left_val = assets[i].debtor_total-assets[i].creditor_total;
							var right_val = assets[i].creditor_total-assets[i].debtor_total;
							$('#bs_result').append(
									
							'<tr>'+
								'<td align=right >'+ left_val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
								'<td align=right>'+ assets[i].debtor_total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
								'<td align=center>'+ assets[i].account_name+'</td>'+
								'<td align=right>'+ assets[i].creditor_total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
								'<td align=right>'+ '0' +'</td>' +
							'</tr>'); 
							assets_left_total += left_val;
							assets_right_total += right_val;
						}
						var liab_left_total = 0;
						var liab_right_total = 0;
						$('#bs_result').append('<tr><td></td><td></td><td align=center><h4>2. 부채</h4></td><td></td><td></td></tr>');
						for (var i = 0; i < liab.length; i++) {
							var left_val = liab[i].debtor_total-liab[i].creditor_total;
							var right_val = liab[i].creditor_total-liab[i].debtor_total;
							$('#bs_result').append(
									
							'<tr>'+
								'<td align=right>'+ '0' +'</td>'+
								'<td align=right>'+ liab[i].debtor_total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
								'<td align=center>'+ liab[i].account_name +'</td>'+
								'<td align=right>'+ liab[i].creditor_total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
								'<td align=right>'+ right_val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>' +
							'</tr>'); 
							liab_left_total += left_val;
							liab_right_total += right_val;
						}
						
						$('#bs_result').append('<tr><td></td><td></td><td align=center><h4>3. 자본금</h4></td><td></td><td></td></tr>');
						 
							var income = (assets_left_total-liab_right_total)-capit[0].creditor_total;
							var left_val = capit[0].debtor_total-capit[0].creditor_total;
							var right_val = capit[0].creditor_total-capit[0].debtor_total+income;
							$('#bs_result').append(
									
							'<tr>'+
								'<td align=right>'+ '0' +'</td>'+
								'<td align=right>'+ capit[0].debtor_total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>'+
								'<td align=center>'+ capit[0].account_name +'</td>'+
								'<td align=right>'+ capit[0].creditor_total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+' ( '+income.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+' ) ' +'</td>'+
								'<td align=right>'+ right_val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +'</td>' +
							'</tr>'); 
						 
						

					},
					error : function() {
						alert("에러, 관리자에게 문의하세요\n에러코드: FT_BS - search_bs - ajax error")
					}
				});

	};
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
									<!-- <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Codefox</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Datatables</li>
                                        </ol> -->
								</div>
								<h4 class="page-title" style="font-size: 25px;">재무상태표</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div align="right">
										<button type="button"
											class="btn btn-outline-dark waves-effect waves-light">양식선택</button>
										<button type="button"
											class="btn btn-outline-dark waves-effect waves-light">통합계정</button>
										<button type="button"
											class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
										<hr>
									</div>
									<table id="datatable"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label" >회계년도</th>
											<td class="col-md-2 input-group"><select
												class="form-control" id="fiscalyear" onchange=""
												style="width: 200px;">
													<option value="2019">2019년_제 1기</option>
													<option value="2018">2018</option>
											</select></td>
											<th class="col-md-1 col-form-label">조회기간</th>
											<td><input
												class="form-control input-daterange-datepicker" type="text"
												name="daterange" /></td>
											<th class="col-md-1 col-form-label">단위</th>
											<td class="col-md-2 input-group"><select
												class="form-control" name="" onchange="">
													<option>전체선택</option>
													<option></option>
											</select></td>
											<td>
												<div class="input-group-append">
													<button type="button"
														class="btn btn-icon waves-effect waves-light btn-primary"
														onclick="search_bs();">
														<i class="fas fa-search"></i>
													</button>
												</div>
											</td>
										</tr>
									</table>
									<hr>

									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="home-tab" data-toggle="tab" href="#first" role="tab"
											aria-controls="home" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-home"></i></span>
												<span class="d-none d-sm-block">관리용</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-toggle="tab" href="#second" role="tab"
											aria-controls="profile" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">제출용</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="message-tab"
											data-toggle="tab" href="#third" role="tab"
											aria-controls="message" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">세목별</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 관리용 -->
										<div class="tab-pane active" id="first" role="tabpanel"
											aria-labelledby="home-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div class="table-responsive">
															<table class="table mb-0"  >
																<thead class="thead-light">
																	<tr>
																		<th style="padding-left: 50%;">잔액</th>
																		<th align=center>차변</th>
																		<th align=center>계정명</th>
																		<th align=center>대변</th>
																		<th align=center>잔액</th>
																	</tr> 
																</thead>
																<tbody id="bs_result">
																	 
																</tbody>
															</table>
															 

														</div>
														 
													</div>
												</div>
											</div>
										</div>
										<!-- 제출용 -->
										<div class="tab-pane" id="second" role="tabpanel"
											aria-labelledby="message-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th rowspan="2" colspan="2">과목</th>
																		<th colspan="2">제 16 (당)기</th>
																		<th colspan="2">제 15 (전)기</th>
																	</tr>

																	<tr>
																		<th colspan="2">금액</th>
																		<th colspan="2">금액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<td colspan="2">자산</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">1.유동자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<th colspan="2">(1)당좌자산</th>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">현금및현금성자산</td>
																		<td></td>
																		<td>-810,450,474</td>
																		<td></td>
																		<td>5,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">정기예적금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">단기매매증권</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">매출채권</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">대손충당금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">대손충당금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">소모품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">선급비용</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부가세대급금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">선납세금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(2)재고자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">상품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">제품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">원재료</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(3)임대주택자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">임대주택</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">2. 비유동자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(1)투자자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(2)유형자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">토지</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">건물</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">기계장치</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">차량운반구</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">비품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(3)무형자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">소프트웨어</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(4)기타 비유동자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">임차보증금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">자산총계</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부채</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">1. 유동부채</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">매입채무</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">지급어음</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미지급금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">예수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부가세예수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">가수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">선수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">단기차입금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미지급세금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미지급비용</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">2. 비유동부채</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">장기차입금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">퇴직 급여 충당금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부채총계</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">자 본</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">1. 자본금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">자본금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">2.자본잉여금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">3. 자본조정</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">주식 할인발행 차금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">4. 기타포괄손익누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">5.이익잉여금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">이익준비금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미처분 이익 잉여금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(단기순이익)</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">당기 : 0</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">전기 : 0</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">자본총계</td>
																		<td></td>
																		<td>5.132.111.111</td>
																		<td></td>
																		<td>5,185,295,411</td>
																	</tr>
																	<tr>
																		<td colspan="2">부재및자본총계</td>
																		<td></td>
																		<td>6,152,366,222</td>
																		<td></td>
																		<td>6,185,295,411</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- 세목별 -->
										<div class="tab-pane" id="third" role="tabpanel"
											aria-labelledby="message-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<div class="table-responsive">
															<table class="table mb-0">
																<thead class="thead-light">
																	<tr>
																		<th rowspan="2" colspan="2">과목</th>
																		<th colspan="2">제 16 (당)기</th>
																		<th colspan="2">제 15 (전)기</th>
																	</tr>

																	<tr>
																		<th colspan="2">금액</th>
																		<th colspan="2">금액</th>
																	</tr>

																</thead>
																<tbody>
																	<tr>
																		<td colspan="2">자산</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">1.유동자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<th colspan="2">(1)당좌자산</th>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">현금</td>
																		<td></td>
																		<td>-810,450,474</td>
																		<td></td>
																		<td>5,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">당좌예금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">제예금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">보통예금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">정기예적금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">단기매매증권</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">외상매출금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">대손충당금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">받을어음</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">대손충당금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">대손충당금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">소모품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">선급비용</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부가세대급금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">선납세금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(2)재고자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">상품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">제품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">원재료</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(3)임대주택자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">임대주택</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">2. 비유동자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(1)투자자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(2)유형자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">토지</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">건물</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">기계장치</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">차량운반구</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">비품</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">감가 상각 누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(3)무형자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">소프트웨어</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(4)기타 비유동자산</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">임차보증금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">자산총계</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부채</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">1. 유동부채</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">외상매입금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">지급어음</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미지급금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">예수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부가세예수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">가수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">선수금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">단기차입금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미지급세금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미지급비용</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">2. 비유동부채</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">장기차입금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">퇴직 급여 충당금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">부채총계</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">자 본</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">1. 자본금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">자본금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">2.자본잉여금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">3. 자본조정</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">주식 할인발행 차금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">4. 기타포괄손익누계액</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">5.이익잉여금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">이익준비금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">미처분 이익 잉여금</td>
																		<td></td>
																		<td>6,010,450,474</td>
																		<td></td>
																		<td>5,581,274,274</td>
																	</tr>
																	<tr>
																		<td colspan="2">(단기순이익)</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">당기 : 0</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">전기 : 0</td>
																		<td></td>
																		<td></td>
																		<td></td>
																		<td></td>
																	</tr>
																	<tr>
																		<td colspan="2">자본총계</td>
																		<td></td>
																		<td>5.132.111.111</td>
																		<td></td>
																		<td>5,185,295,411</td>
																	</tr>
																	<tr>
																		<td colspan="2">부재및자본총계</td>
																		<td></td>
																		<td>6,152,366,222</td>
																		<td></td>
																		<td>6,185,295,411</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end container-fluid -->

			</div>
			<!-- end content -->



			<%@ include file="../footer.jsp"%>

			<!-- ============================================================== -->
			<!-- End Page content -->
			<!-- ============================================================== -->
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
	<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
	<script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>


</body>
</html>