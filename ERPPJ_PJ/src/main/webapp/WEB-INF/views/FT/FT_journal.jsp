<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	var frontcursor;
        	var updatekey = 0;
        	var selectval;
        	var d = new Date();
			$(function(){
				if((d.getMonth() + 1) < 10){
	        		$(".lastdate").val(d.getFullYear()+'-0'+(d.getMonth() + 1)+'-'+d.getDate());
	        		$(".firstdate").val(d.getFullYear()+'-0'+(d.getMonth() + 1)+'-'+d.getDate());
				} else {
	        		$(".lastdate").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
	        		$(".firstdate").val(d.getFullYear()+'-'+(d.getMonth() + 1)+'-'+d.getDate());
				}
			});
        	function start() {
    			$(".chit-table-bordered-primary tbody *").css("background-color", "#fff");
    			$(".chit-table-bordered-primary tbody *").parent().css("background-color", "#fff");
        	}
        	
        	function focuse(s) {
        		$(".chit-table-bordered-primary tbody *").focus(function() {
        			$(".chit-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "#fff");
        			$(this).parent().css("background-color", "#fff");
        		});
        	}
        	
        	function enter(cc, dd) {
        		if(cc == "INPUT") {
        			var swit = 0;
        			var nowme = $("*[name=" + dd + "]").parent();
        			if(window.event.which == 13){
    					nowme.next().children().focus();
    					return false;
            		} else if(window.event.which == 9) {
            			if($("*[name=" + dd + "]").parent().parent().parent().parent().attr("class") == "table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered"){
                			frontcursor = dd;
            				$(".chitsub-table-bordered-primary tbody #firstsub").focus();
            				$(".chitsub-table-bordered-primary tbody #firstsub").parent().prev().children().focus();
            			} else if($("*[name=" + dd + "]").parent().parent().parent().parent().attr("class") == "table m-0 chitsub-table-colored-bordered chitsub-table-bordered-primary table-bordered"){
            				$("*[name=" + frontcursor + "]").focus();
            				$("*[name=" + frontcursor + "]").parent().prev().children().focus();
            			}
            				
            		} else if(window.event.which == 37) {
            			for(var i = 0; i < $("*[name=" + dd + "]").parent().prevAll().children().length; i++){
        					nowme.prev().children().focus();
        					return false;
        				}
            		} else if(window.event.which == 38) {
            			$("*[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) - 1) + "]").focus();
            		} else if(window.event.which == 39) {
        				for(var i = 0; i < $("*[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme.next().children().focus();
        					return false;
        				}
            		} else if(window.event.which == 40) {
            			$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) + 1) + "]").focus();
            		}
        		} else if(cc == "SELECT"){
        			if(window.event.which == 9) {
            			$("select[name=" + dd + "]").parent().prev().children().focus();
            		}
        		}
        	}
        	
        	function ajaxload() {
	        		var obj = new Object();
	        		var jsonData;
	        		
	        		if(window.event.which == 13){
	        			if(!$("#usercode").val()) {
	        				alert("작성자 검색 해주세요!");
	        				return false;
	        			} else if(parseInt($(".firstdate").val()) > parseInt($(".lastdate").val())){
		        			alert("두 날짜의 사이값이 존재하도록 해주세요");
		        			$(".firstdate").focus();
		        			return false;
		        		}
	        			
		        		// 자바스크립트 객체 생성
		        		obj.usercode = $("#usercode").val();
		        		obj.firstday = $(".firstdate").val();
		        		obj.lastday = $(".lastdate").val();
		        		
		        		// json 객체를 String 객체로 변환 -- 
		        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
		        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
		        		jsonData = JSON.stringify(obj);
		        		$(".chit-table-bordered-primary tbody").html("");
		        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
		        		$.ajax({
		                       type : "POST",
		                       url : "/erp/FT_journalList?${_csrf.parameterName }=${_csrf.token }",
		                       data : jsonData,
		                       contentType : 'application/json;charset=UTF-8',
		                       success : function(data) {
		                    	   if(data != null){
		                    		   var rightacc;
		                    		   var leftacc;
		                    		   var rightprice;
		                    		   var leftprice;
										for(i = 0; i < data.length; i++){
			                    		   if(data[i].debtor_value == 0){
			                    			   rightacc = data[i].account_name;
			                    			   leftacc = "";
			                    			   rightprice = data[i].creditor_value;
			                    			   leftprice = "";
			                    		   } else {
			                    			   rightacc = "";
			                    			   leftacc = data[i].account_name;
			                    			   rightprice = "";
			                    			   leftprice = data[i].debtor_value;
			                    		   }
											$(".chit-table-bordered-primary tbody").append('<tr>' +
	                                        		'<td><input type="text" onfocus = "focuse(this.name);" value = "' + data[i].journal_date + '" name = "WriteDate' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + data[i].journal_number + '" name = "WriteNo' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);"></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + leftprice + '" name = "LeftPrice' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + leftacc + '" name = "LeftSubject' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + rightacc + '" name = "RightSubejct' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + rightprice + '" name = "RightPrice' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + data[i].journal_abstract + '" name = "Briefs' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + data[i].customer_code + '" name = "AccCode' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                                '<td><input type="text" onfocus = "focuse(this.name);" value = "' + data[i].customer_name + '" name = "AccName' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly></td>' +
	                                            '</tr>');
										}
			                    	   }
		                       },
		                       error : function(e) {
		                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
		                       }
		        		});
	        		}
        	}
        	
        	function userslist() {
            	var popupX = Math.ceil((window.screen.width - 363)/2);
            	var popupY = Math.ceil((window.screen.height - 528)/2);
        		var url = "FT_users_list?key=" + $("#usercode").val();
        		window.open(url, "users_list", "menubar=no, width=363px, height = 528px, left=" + popupX + ", top=" + popupY);
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
<link 
	href="/erp/resources/assets/libs/datatables/dataTables.colVis.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
</head>

<body onload="start();">

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
								<h4 class="page-title">분개장</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<form name="chitManager" method="post">
						<input type="hidden" name="${_csrf.parameterName }"
							value="${_csrf.token }">
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body table-responsive">
										<table id="datatable"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<tr>
												<td>기표기간</td>
												<td><input type="date" class="firstdate"> ~ <input type="date"
													class="lastdate"></td>
												<td>작성자</td>
												<td><input type="text" class="" id="usercode"
													style="width: 100px;" onkeyup="ajaxload();">&nbsp;<a
													href="#" onclick="userslist();"><i
														class="dripicons-zoom-in"></i></a> <input type="text" class=""
													id="username" readonly style="width: 100px;"></td>
											</tr>
										</table>

										<div class="table-responsive" style="margin: 15px 0px 15px">
											<table id="datatable"
												class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered"
												style="border-collapse: collapse; border-spacing: 0; width: 100%;">
												<col style="width: 10%">
												<col style="width: 5%">
												<col style="width: 10%">
												<col style="width: 10%">
												<col style="width: 10%">
												<col style="width: 10%">
												<col style="width: 10%">
												<col style="width: 10%">
												<col style="width: 10%">
												<col style="width: 10%">
												<col style="width: 5%">
												<thead>
													<tr>
														<th colspan="2">구분[기표]</th>
														<th colspan="2">차변</th>
														<th colspan="2">대변</th>
														<th rowspan="2">적요</th>
														<th colspan="2">거래처</th>
													</tr>
													<tr>
														<th>년/월/일</th>
														<th>번호</th>
														<th>금액</th>
														<th>계정과목</th>
														<th>계정과목</th>
														<th>금액</th>
														<th>코드</th>
														<th>거래처명</th>
													</tr>
												</thead>


												<tbody>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
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

	<!-- Vendor js -->
	<!-- <script src="/erp/resources/assets/js/vendor.min.js"></script> -->

	<!-- Bootstrap select plugin -->
	<!-- <script
		src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script> -->

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

	<!-- App js -->
	<script src="/erp/resources/assets/js/app.min.js"></script>

</body>
</html>