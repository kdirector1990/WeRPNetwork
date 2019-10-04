<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
			var d = new Date();
			$(function(){
				if((d.getMonth() + 1) < 10){
					$(".lastdate0").val(d.getFullYear()+'-0'+(d.getMonth() + 1)+'-'+d.getDate());
					$(".firstdate0").val(d.getFullYear()+'-0'+(d.getMonth() + 1)+'-'+d.getDate());
					$(".lastdate1").val(d.getFullYear()+'-0'+(d.getMonth() + 1));
					$(".firstdate1").val(d.getFullYear()+'-0'+(d.getMonth() + 1));
				} else {
					$(".lastdate0").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
					$(".firstdate0").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
					$(".lastdate1").val(d.getFullYear()+'-'+(d.getMonth() + 1));
					$(".firstdate1").val(d.getFullYear()+'-'+(d.getMonth() + 1));
				}
			});

	       	function ajaxload(cc) {
        		var obj = new Object();
        		var jsonData;
        		
        		if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
	        		obj.firstday = $(".firstdate" + cc).val();
	        		obj.lastday = $(".lastdate" + cc).val();
	        		
	        		if(parseInt($(".firstdate" + cc).val()) > parseInt($(".lastdate" + cc).val())){
	        			alert("두 날짜의 사이값이 존재하도록 해주세요");
	        			$(".firstdate" + cc).focus();
	        			return false;
	        		}
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		$("#onepage").html("");
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_DTBDayList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null && data != ""){
	                    		   var listL = data[0];
	                    		   var listM = data[1];
	                    		   var listS = data[2];
									for(var j = 0; j < listL.length; j++){
										$("#onepage").append('<tr>' +
	                                        '<td scope="row" style = "background-color:#D6EAF8">' + listL[j].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "background-color:#D6EAF8"><b style = "font-size:20px;">' + (j+1) + '. ' + listL[j].lg_name + '</b></td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                '</tr>');
										for(var k = 0; k < listM.length; k++) {
											if(listL[j].lg_name == listM[k].lg_name){
												$("#onepage").append('<tr>' +
				                                        '<td scope="row" style = "background-color:#EBF5FB">' + listM[k].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
				                                        '<td style = "background-color:#EBF5FB"><b style = "font-size:15px;">' + listM[k].ag_name + '</b></td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                '</tr>');
											}
											for(var l = 0; l < listS.length; l++) {
												if(listM[k].ag_name == listS[l].ag_name && listL[j].lg_name == listM[k].lg_name){
													$("#onepage").append('<tr>' +
					                                        '<td scope="row">' + listS[l].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                        '<td>' + listS[l].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                        '<td>' + listS[l].accounts_name + '</td>' +
					                                        '<td>' + listS[l].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                        '<td>' + listS[l].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
						                                '</tr>');
												}
											}
										}
										
									}
		                    	} else {
		                    		alert("해당 날짜에 데이터가 없습니다.");
		                    	}
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
        		}
        	}
	       	
	       	function twoajaxload(cc) {
        		var obj = new Object();
        		var jsonData;
        		var balance = 0;
        		if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
	        		obj.firstday = $(".firstdate" + cc).val();
	        		obj.lastday = $(".lastdate" + cc).val();
	        		
	        		if(parseInt($(".firstdate" + cc).val()) > parseInt($(".lastdate" + cc).val())){
	        			alert("두 날짜의 사이값이 존재하도록 해주세요");
	        			$(".firstdate" + cc).focus();
	        			return false;
	        		} 
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		$("#twopage").html("");
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_DTBMonthList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null && data != ""){
	                    		   var listL = data[0];
	                    		   var listM = data[1];
	                    		   var listS = data[2];
									for(var j = 0; j < listL.length; j++){
										$("#twopage").append('<tr>' +
	                                        '<td scope="row" style = "background-color:#D6EAF8">' + listL[j].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "background-color:#D6EAF8"><b style = "font-size:20px;">' + (j+1) + '. ' + listL[j].lg_name + '</b></td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                '</tr>');
										for(var k = 0; k < listM.length; k++) {
											if(listL[j].lg_name == listM[k].lg_name){
												$("#twopage").append('<tr>' +
				                                        '<td scope="row" style = "background-color:#EBF5FB">' + listM[k].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
				                                        '<td style = "background-color:#EBF5FB"><b style = "font-size:15px;">' + listM[k].ag_name + '</b></td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                '</tr>');
											}
											for(var l = 0; l < listS.length; l++) {
												if(listM[k].ag_name == listS[l].ag_name && listL[j].lg_name == listM[k].lg_name){
													$("#twopage").append('<tr>' +
					                                        '<td scope="row">' + listS[l].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                        '<td>' + listS[l].debtorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                        '<td>' + listS[l].accounts_name + '</td>' +
					                                        '<td>' + listS[l].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
					                                        '<td>' + listS[l].creditorsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
						                                '</tr>');
												}
											}
										}
										
									}
		                    	} else {
		                    		alert("해당 날짜에 데이터가 없습니다.");
		                    	}
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
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
								 
								<h4 class="page-title" style="font-size: 25px;">일월계표</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">

									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="home-tab" data-toggle="tab" href="#home" role="tab"
											aria-controls="home" aria-selected="true"> <span
												class="d-block d-sm-none"><i class="fa fa-home"></i></span>
												<span class="d-none d-sm-block">일계</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-toggle="tab" href="#profile" role="tab"
											aria-controls="profile" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">월계</span>
										</a></li>
									</ul>
									<div class="tab-content">
										<!-- 잔액 -->
										<div class="tab-pane show active" id="home" role="tabpanel"
											aria-labelledby="home-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<table id="datatable"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<tr>
																<td>기표기간</td>
																<td><input type="date" class="firstdate0" max="9999-12-31"> ~ <input
																	type="date" class="lastdate0" onkeydown="ajaxload(0);" max="9999-12-31"></td>
															</tr>
														</table>

														<div class="table-responsive">
															<table class="table m-0 table-bordered">
																<thead style="text-align: center;">
																	<tr>
																		<th colspan="2"
																			style="background-color: #5DADE2; color: #fff;">차변</th>
																		<th rowspan="2"
																			style="vertical-align: middle; background-color: #5DADE2; color: #fff;">계정과목</th>
																		<th colspan="2"
																			style="background-color: #5DADE2; color: #fff;">대변</th>
																	</tr>

																	<tr>
																		<th style="background-color: #5DADE2; color: #fff;">계</th>
																		<th style="background-color: #5DADE2; color: #fff;">금액</th>
																		<th style="background-color: #5DADE2; color: #fff;">금액</th>
																		<th style="background-color: #5DADE2; color: #fff;">계</th>
																	</tr>

																</thead>
																<tbody id="onepage">

																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- 원장 -->
										<div class="tab-pane" id="profile" role="tabpanel"
											aria-labelledby="profile-tab">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-body table-responsive">
														<table id="datatable"
															style="border-collapse: collapse; border-spacing: 0; width: 100%;">
															<tr>
																<td>기표기간</td>
																<td><input type="month" class="firstdate1"> ~ <input type="month"
																	class="lastdate1" onkeydown="twoajaxload(1);"></td>
															</tr>
														</table>

														<div class="table-responsive">
															<table class="table m-0 table-bordered">
																<thead style="text-align: center;">
																	<tr>
																		<th colspan="2"
																			style="background-color: #5DADE2; color: #fff;">차변</th>
																		<th rowspan="2"
																			style="vertical-align: middle; background-color: #5DADE2; color: #fff;">계정과목</th>
																		<th colspan="2"
																			style="background-color: #5DADE2; color: #fff;">대변</th>
																	</tr>

																	<tr>
																		<th style="background-color: #5DADE2; color: #fff;">계</th>
																		<th style="background-color: #5DADE2; color: #fff;">금액</th>
																		<th style="background-color: #5DADE2; color: #fff;">금액</th>
																		<th style="background-color: #5DADE2; color: #fff;">계</th>
																	</tr>

																</thead>
																<tbody id="twopage">

																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--  -->
							</div>
						</div>
					</div>
				</div>
				<!-- end container-fluid -->

			</div>
			<!-- end content -->


			<%@ include file="../footer.jsp"%>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

</body>
</html>