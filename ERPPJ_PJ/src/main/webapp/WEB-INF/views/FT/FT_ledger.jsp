<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	        		$(".lastdate1").val(d.getFullYear()+'-0'+(d.getMonth() + 1)+'-'+d.getDate());
	        		$(".firstdate1").val(d.getFullYear()+'-0'+(d.getMonth() + 1)+'-'+d.getDate());
				} else {
	        		$(".lastdate0").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
	        		$(".firstdate0").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
	        		$(".lastdate1").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
	        		$(".firstdate1").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
				}
			});

	        function subjectlist(subjectcode) {
	           	var popupX = Math.ceil((window.screen.width - 363)/2);
	           	var popupY = Math.ceil((window.screen.height - 528)/2);
	       		var url = "FT_Subject_list?key=" + $("*[name=SubjectCode" + subjectcode + "]").val() + "&keyname=" + subjectcode;
	       		window.open(url, "subject_list", "menubar=no, width=600px, height = 600px, left="+ popupX + ", top="+ popupY);
	       		
	       	}
	       	
	       	function accountlist(accountcode) {
	           	var popupX = Math.ceil((window.screen.width - 363)/2);
	           	var popupY = Math.ceil((window.screen.height - 528)/2);
	       		var url = "FT_account_list?key=" + $("*[name=AccCode" + accountcode + "]").val() + "&keyname=" + accountcode;
	       		window.open(url, "account_list", "menubar=no, width=363px, height = 528px, left=" + popupX + ", top=" + popupY);
	       		
	       	}
	       	
	       	function ajaxload(cc) {
        		var obj = new Object();
        		var jsonData;
        		
        		if(window.event.which == 13){
        			if(parseInt($(".firstdate" + cc).val()) > parseInt($(".lastdate" + cc).val())){
            			alert("두 날짜의 사이값이 존재하도록 해주세요");
            			$(".firstdate" + cc).focus();
            			return false;
            		} else if(!$("*[name=SubjectCode" + cc + "]").val()) {
            			alert("계정과목을 선택해주세요");
            			$("*[name=SubjectCode" + cc + "]").focus();
            			return false;
            		}
	        		// 자바스크립트 객체 생성
	        		obj.scode = $("*[name=SubjectCode" + cc + "]").val();
	        		obj.firstday = $(".firstdate" + cc).val();
	        		obj.lastday = $(".lastdate" + cc).val();
	        		
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		$("#onepage").html("");
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_ledgerList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null){
									for(i = 0; i < data.length; i++){
                                        var statename = "";
                                        if(data[i].deal_state == "1") {
                                        	statename = "일반"
                                        } else if(data[i].deal_state == "2") {
                                        	statename = "매입"
                                        } else if(data[i].deal_state == "3") {
                                        	statename = "매출"
                                        } else if(data[i].deal_state == "4") {
                                        	statename = "금융기관"
                                        } else if(data[i].deal_state == "5") {
                                        	statename = "카드사"
                                        }
                                        var allsum = (parseInt(data[i].before_value) + parseInt(data[i].debtor_value) - parseInt(data[i].creditor_value));
										$("#onepage").append('<tr>' +
	                                        '<td scope="row" style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].customer_code + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].customer_name + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].license_number + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].before_value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].debtor_value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].creditor_value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + allsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].deal_state + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + statename + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].bs_master + '</td>' +
		                                '</tr>');
									}
									if(data.length == 0) {
			                    		   alert("데이터가 없습니다.");
			                    	   }
		                    	   } else {
		                    		   alert("데이터가 없습니다.");
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
        			if(parseInt($(".firstdate" + cc).val()) > parseInt($(".lastdate" + cc).val())){
            			alert("두 날짜의 사이값이 존재하도록 해주세요!");
            			$(".firstdate" + cc).focus();
            			return false;
            		} else if(!$("*[name=SubjectCode" + cc + "]").val()) {
            			alert("계정과목을 선택해주세요!");
            			$("*[name=SubjectCode" + cc + "]").focus();
            			return false;
            		} else if(!$("*[name=AccCode" + cc + "]").val()) {
            			alert("거래처를 선택해주세요!");
            			$("*[name=AccCode" + cc + "]").focus();
            			return false;
            		}
	        		// 자바스크립트 객체 생성
	        		obj.scode = $("*[name=SubjectCode" + cc + "]").val();
	        		obj.acode = $("*[name=AccCode" + cc + "]").val();
	        		obj.firstday = $(".firstdate" + cc).val();
	        		obj.lastday = $(".lastdate" + cc).val();
	        		
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		$("#twopage").html("");
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_ledgerAccList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null){
									for(i = 0; i < data.length; i++){
										var dev;
										if(data[i].lg_name == "자산" || data[i].lg_name == "비용"){
											dev = parseInt(data[i].debtor_value) - parseInt(data[i].creditor_value);
										} else if(data[i].lg_name == "부채" || data[i].lg_name == "자본" || data[i].lg_name == "수익"){
											dev = parseInt(data[i].creditor_value) - parseInt(data[i].debtor_value);
										}
										balance += dev;
										$("#twopage").append('<tr>' +
	                                        '<td scope="row" style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].journal_date + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].journal_abstract + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].debtor_value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + data[i].creditor_value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                        '<td style = "padding: .85rem; vertical-align: top; border-top: 1px solid #dee2e6;">' + balance.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                '</tr>');
									}
									 if(data.length == 0) {
			                    		   alert("데이터가 없습니다.");
			                    	   }
		                    	   } else {
		                    		   alert("데이터가 없습니다.");
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
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Codefox</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">거래처원장</h4>
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
												<span class="d-none d-sm-block">잔액</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-toggle="tab" href="#profile" role="tab"
											aria-controls="profile" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">원장</span>
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
																<td>계정과목</td>
																<td><input type="text" class="" name="SubjectCode0"
																	style="width: 100px;">&nbsp;<a href="#"
																	onclick="subjectlist(0);"><i
																		class="dripicons-zoom-in"></i></a> <input type="text"
																	class="" name="SubjectName0" readonly
																	style="width: 100px;"></td>

																<td>기표기간</td>
																<td><input type="date" class="firstdate0"
																	max="9999-12-31"> ~ <input
																	type="date" class="lastdate0"
																	onkeydown="ajaxload(0);" max="9999-12-31"></td>
															</tr>
														</table>

														<div class="table-responsive">
															<table class="table mb-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered"
															style="border-collapse: collapse; border-spacing: 0;">
																<thead>
																	<tr>
																		<th>코드</th>
																		<th>거래처명</th>
																		<th>사업자번호</th>
																		<th>전기(월)이월</th>
																		<th>증가</th>
																		<th>감소</th>
																		<th>잔액</th>
																		<th>거래처분류코드</th>
																		<th>거래처분류명</th>
																		<th>대표자성명</th>
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
																<td>계정과목</td>
																<td><input type="text" class="" name="SubjectCode1"
																	style="width: 100px;">&nbsp;<a href="#"
																	onclick="subjectlist(1);"><i
																		class="dripicons-zoom-in"></i></a> <input type="text"
																	class="" name="SubjectName1" readonly
																	style="width: 100px;"></td>

																<td>기표기간</td>
																<td><input type="date" class="firstdate1"
																	> ~ <input type="date"
																	class="lastdate1"></td>

																<td>거래처</td>
																<td><input type="text" class="" name="AccCode1"
																	style="width: 100px;" onkeydown="twoajaxload(1);">&nbsp;<a
																	href="#" onclick="accountlist(1);"><i
																		class="dripicons-zoom-in"></i></a> <input type="text"
																	class="" name="AccName1" readonly style="width: 100px;"></td>
															</tr>
														</table>

														<div class="table-responsive">
															<table class="table mb-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered"
															style="border-collapse: collapse; border-spacing: 0;">
																<thead>
																	<!-- <tr>
					                                                    <th scope="col">#</th>
					                                                    <th scope="col">First</th>
					                                                    <th scope="col">Last</th>
					                                                    <th scope="col">Handle</th>
					                                                    </tr> -->

																	<tr>
																		<th>날짜</th>
																		<th>적요란</th>
																		<th>차변</th>
																		<th>대변</th>
																		<th>잔액</th>
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