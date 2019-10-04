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
        	function focuse(s) {
        		$(".chit-table-bordered-primary tbody *").focus(function() {
        			$(".chit-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
        		});
        		var obj = new Object();
        		var jsonData;
        		
        		// 자바스크립트 객체 생성
        		obj.chkno = $("input[name=no" + s + "]").val();
        		obj.year = $("input[name=date" + s + "]").val().substring(0,4);
        		obj.month = $("input[name=date" + s + "]").val().substring(5,7);
        		obj.day = $("input[name=date" + s + "]").val().substring(8,10);
        		if($("input[name=confirmname" + s + "]").val() == "null") {
        			obj.state = 1;
        		} else {
        			obj.state = 2;
        		}
        		// json 객체를 String 객체로 변환 -- 
        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
        		jsonData = JSON.stringify(obj); 
        		
        		$.ajax({
                       type : "POST",
                       url : "/erp/FT_chitDataLoad?${_csrf.parameterName }=${_csrf.token }",
                       data : jsonData,
                       contentType : 'application/json;charset=UTF-8',
                       success : function(data) {
                    	   $(".chitsub-table-bordered-primary tbody").html("");
                    	   if(data != null){
							for(var i = 0; i < data.length; i++){
								var RLtype;
								var price;
								var number;
								if(data[i].debtor_value == 0){
									RLtype = "대변";
								} else {
									RLtype = "차변";
								}
								
								if(data[i].debtor_value == 0){
                    			   number = data[i].creditor_value.replace(/\,/g,"");
                    			   price = String(number).split('').join(',').split('');

                    		       for( k=price.length-1, j=1; k>=0; k--, j++)  if( j%6 != 0 && j%2 == 0) price[k] = '';
                    		       price = price.join('');
								} else {
									number = data[i].debtor_value.replace(/\,/g,"");
                    			   price = String(number).split('').join(',').split('');

                    		       for( k=price.length-1, j=1; k>=0; k--, j++)  if( j%6 != 0 && j%2 == 0) price[k] = '';
                    		       price = price.join('');
								}
								
								if(data[i].l_count_value == 0){
									count = data[i].r_count_value;
								} else {
									count = data[i].l_count_value;
								}
								$(".chitsub-table-bordered-primary tbody").append('<tr>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "key' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].journal_code + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" id = "first' + i + '" name = "RLstate' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + RLtype + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "SubjectCode' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].detail_ac_code + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "SubjectName' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].account_name + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "AccCode' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].customer_code + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "AccName' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].customer_name + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "price' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + price + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "count' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + count + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "text' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].journal_abstract + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><input type = "text" name = "writer' + i + '" value = "' + data[i].wname + '" onfocus = "subfocuse(' + i + ');" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();"></td>' +
                                    '<td><select class="form-control" id = "enter' + i + '" onfocus = "subfocuse(' + i + ');" name = "type' + i + '" style = "width: 100%; -webkit-appearance: none; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\' chitManager.submit();">' +
                                    '<option value="0">== 선택 ==</option>' +
                                    '<option value="1">일반</option>' +
                                    '<option value="2">매입</option>' +
                                    '<option value="3">매출</option>' +
                                    '<option value="4">결산</option>' +
                               		'</select></td>' +
                                    '<td><input type="text" onfocus = "subfocuse(' + i + ');" name = "updateday' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + data[i].last_update + '"></td>' +
                                '</tr>');
								$( "select[name=type" + i + "] option:eq(" + data[i].jr_state + ")" ).prop("selected","selected");
							}
                    	   }
                       },
                       error : function(e) {
                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                       }
        		});
        	}
        	
        	function subfocuse(s) {
        		$(".chitsub-table-bordered-primary tbody *").focus(function() {
        			$(".chitsub-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
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
        	
        	function allCheck(dd) {
        		if($("img[name=" + dd + "]").attr("src") == "/erp/resources/img/checked.png"){
        			$("img[name=" + dd + "]").attr("src", "/erp/resources/img/checked2.png");
        			$("input[type='checkbox']").prop("checked", true);
        		} else {
        			$("img[name=" + dd + "]").attr("src", "/erp/resources/img/checked.png");
        			$("input[type='checkbox']").prop("checked", false);
        		}
        	}
        	
        	function chkformal() {
        		var obj = new Object();
        		var jsonData;
                
        		var dd = document.getElementsByName("check");
        		var datelist = "";
        		var nolist = "";
        		for(var i = 0; i<dd.length; i++) {
        			if(dd[i].checked){
        				datelist += $("input[name=date" + dd[i].value + "]").val() + "/";
        				nolist += $("input[name=no" + dd[i].value + "]").val() + "/";
        			}
        		}
              	// 자바스크립트 객체 생성
         		obj.dates = datelist;
         		obj.nos = nolist;
         		obj.username = ${sessionScope.username};
         		// json 객체를 String 객체로 변환 -- 
         		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
         		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
         		jsonData = JSON.stringify(obj);
         		
         		$.ajax({
                        type : "POST",
                        url : "/erp/FT_CheckFormal?${_csrf.parameterName }=${_csrf.token }",
                        data : jsonData,
                        contentType : 'application/json;charset=UTF-8',
                        success : function(data) {
                        	alert(data);
                        	location.reload();
                        },
                        error : function(e) {
                               alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                        }
                });
        	}
        	
        	function ajaxload() {
        		var obj = new Object();
        		var jsonData;
        		
        		if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
        			if(!$(".chitState").val()) {
            			$(".chitState").focus();
            			return false;
            		} else if(parseInt($(".firstdate").val()) > parseInt($(".lastdate").val())){
            			alert("두 날짜의 사이값이 존재하도록 해주세요");
            			$(".firstdate").focus();
            			return false;
            		}
	        		obj.state = $(".chitState").val();
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
	                       url : "/erp/FT_chitSelect?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null){
									for(i = 0; i < data.length; i++){
										var str;
										if(data[i].fname == null){
											str = '<input type="checkbox" onfocus = "focuse(this.name);" name = "check" class="form-control" data-toggle="input-mask" style = "width: 20px; border:0px;" value = "' + i + '" readonly onkeydown = "enter(this.tagName, this.name);">';	
										} else {
											str = '';
										}
										$(".chit-table-bordered-primary tbody").append('<tr>' +
												'<td align = "center" ondblclick="javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\'; chitManager.submit();">' + str + '</td>' +
			                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "date' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\'; javascript: chitManager.submit();" value = "' + data[i].journal_date.substring(0,10) + '"></td>' +
			                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "no'+ i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\'; javascript: chitManager.submit();" value = "' + data[i].journal_number + '"></td>' +
			                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "confirmname'+ i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = \'FT_insertChit?keynum=' + i + '\'; javascript: chitManager.submit();" value = "' + data[i].fname + '"></td>' +
		                                '</tr>');
									}
		                    	   } else {
		                    		   alert("데이터가 없습니다. 있는 기간을 선택해주세요!");
		                    	   }
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
        		}
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
								 
								<h4 class="page-title" style="font-size: 25px;">전표승인해제</h4>
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
										<div align="right" style="margin-bottom: 30px;">
											<button type="button"
												class="btn btn-outline-primary waves-effect waves-light"
												onclick="chkformal();">승인처리</button>
											<br>
										</div>
										<table id="datatable"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<tr>
												<td>전표상태&emsp;&emsp;<select class="chitState"
													style="width: 100px; -webkit-appearance: none;">
														<option value="1">미결</option>
														<option value="2">승인</option>
														<option value="0">전체</option>
												</select></td>

												<td>결의기간&emsp;&emsp;<input type="date"
													class="firstdate"> ~ <input
													type="date" class="lastdate" onkeydown="ajaxload();">
												</td>
											</tr>
										</table>

										<div class="table-responsive" style="margin: 15px 0px 50px">
											<table
												class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
												<thead>
													<tr>
														<th style="text-align: center;"><img
															src="/erp/resources/img/checked.png" width="20px"
															height="20px" name="all_Check" style="align: center;"
															onclick="allCheck(this.name);"></th>
														<th>결의일자</th>
														<th>번호</th>
														<th>승인자</th>
													</tr>
												</thead>

												<tbody>

												</tbody>
											</table>
										</div>

										<div class="table-responsive" style="margin: 0px 0px 50px">
											<table
												class="table m-0 chitsub-table-colored-bordered chitsub-table-bordered-primary table-bordered">
												<col style="width: 7%;">
												<col style="width: 6%;">
												<col style="width: 7%">
												<col style="width: 10%;">
												<col style="width: 7%;">
												<col style="width: 10%;">
												<col style="width: 10%;">
												<col style="width: 5%;">
												<col style="width: 10%;">
												<col style="width: 6%;">
												<col style="width: 8%;">
												<col style="width: 8%;">
												<thead>
													<tr>
														<th>분개코드</th>
														<th>구분</th>
														<th>계정</th>
														<th>계정명</th>
														<th>거래처</th>
														<th>거래처명</th>
														<th>금액</th>
														<th>수량</th>
														<th>적요</th>
														<th>작성자</th>
														<th>전표상태</th>
														<th>최종수정일</th>
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
</body>
</html>