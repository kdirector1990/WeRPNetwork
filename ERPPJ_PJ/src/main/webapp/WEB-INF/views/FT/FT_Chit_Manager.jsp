<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/erp/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	var frontcursor;
        	var updatekey = 0;
        	var selectval;
        	function focuse(s) {
        		$(".chit-table-bordered-primary tbody *").focus(function() {
        			$(".chit-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
           			subcount = 1;
           			var obj = new Object();
	        		var jsonData;
	        		
	        		// 자바스크립트 객체 생성
	        		obj.chkno = $("input[name=no" + cnt + "]").val();
	        		
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_chitDataLoad?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   $(".chit-table-bordered-primary tbody").html("");
	                    	   alert(data);
	                    	   alert(data.length);
	                    	   if(data != null){
								for(var i = 0; i < data.length; i++){
									var RLtype;
									var price;
									if(data[i].debtor_value == 0){
										RLtype = "대변";
									} else {
										RLtype = "차변";
									}
									
									if(data[i].debtor_value == 0){
										price = data[i].creditor_value;
									} else {
										price = data[i].debtor_value;
									}
									
									if(data[i].l_count_value == 0){
										count = data[i].r_count_value;
									} else {
										count = data[i].l_count_value;
									}
									$(".chit-table-bordered-primary tbody").append('<tr>' +
	                                    '<td>' +
	                                    '<input type="text" onfocus = "focuse(' + i + ');" name = "date' + i + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "' + $("#day").val() + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "key' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].journal_code + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "number' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].journal_number + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" id = "first' + i + '" name = "RLstate' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + RLtype + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "SubjectCode' + i + '" class="form-control" onclick = "subjectlist(' + i + ')" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].detail_ac_code + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "SubjectName' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].account_name + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "AccCode' + i + '" class="form-control" onclick = "accountlist(' + i + ')" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].customer_code + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "AccName' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].customer_name + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "price' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + price + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "count' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + count + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "text' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "' + data[i].journal_abstract + '" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><input type = "text" name = "writer' + i + '" value = "' + data[i].last_modi_user + '" onfocus = "focuse(' + i + ');" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
	                                    '<td><select class="form-control" id = "enter' + i + '" onfocus = "focuse(' + i + ');" name = "type' + i + '" style = "width: 100%; -webkit-appearance: none; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();">' +
	                                    '<option value="0">== 선택 ==</option>' +
	                                    '<option value="1">일반</option>' +
	                                    '<option value="2">매입</option>' +
	                                    '<option value="3">매출</option>' +
	                                    '<option value="4">결산</option>' +
	                               		'</select></td>' +
	                                    '<td><input type="text" onfocus = "focuse(' + i + ');" name = "updateday' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + data[i].last_update + '"></td>' +
	                                '</tr>');
									$( "select[name=type" + i + "] option:eq(" + data[i].jr_state + ")" ).prop("selected","selected");
								}
	                    	   }
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
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
        	
        	function chkformal(dd) {
        		var obj = new Object();
        		var jsonData;
                 
              	// 자바스크립트 객체 생성
         		obj.savingsName = $("input[name=date" + cc + "]").val();
         		obj.AccCode = $("input[name=no" + cc + "]").val();
         		
         		// json 객체를 String 객체로 변환 -- 
         		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
         		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
         		jsonData = JSON.stringify(obj);
         		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
         		
         		$.ajax({
                        type : "POST",
                        url : "/erp/FT_SavingsInsert?${_csrf.parameterName }=${_csrf.token }",
                        data : jsonData,
                        contentType : 'application/json;charset=UTF-8',
                        success : function(data) {
                        	
                        },
                        error : function(e) {
                               alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                        }
                });
        	}
        </script>
        <!-- Table datatable css -->
        <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            
            <%@ include file="../sidebar.jsp" %>

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Codefox</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Datatables</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">전표승인해제</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
						<form name = "chitManager" method="get">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <div align="right" style = "margin-bottom: 30px;">
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light" onclick = "chkformal();">승인처리</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">전표검색</button>
    									<br>
    									</div>
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                            	<td>전표유형&emsp;&emsp;<select class="" style = "width: 100px; -webkit-appearance: none;">
	                                                <option value="0">0. 전체</option>
	                                                <option value="1">1. 일반</option>
	                                                <option value="2">2. 매입</option>
	                                                <option value="3">3. 매출</option>
	                                                <option value="4">4. 결산</option>
			                                    </select>&emsp;&emsp;&emsp;전표상태&emsp;&emsp;<select class="" style = "width: 100px; -webkit-appearance: none;">
	                                                <option value="1">미결</option>
	                                                <option value="0">승인</option>
	                                                <option value="">전체</option>
		                                       	</select></td>
                                            </tr>
                                            <tr>
                                                <td>결의기간&emsp;&emsp;<input type="date" class="" readonly style = "width: 100px;"> ~
                                                <input type="date" class="" readonly style = "width: 100px;">
                                                </td>
                                            </tr>
                                        </table>
                                        
                                       <div class="table-responsive" style = "margin: 15px 0px 50px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:5%;">
                                                <col style = "width:10%;">
                                                <col style = "width:5%">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <thead>
                                                    <tr>
		                                                <th style = "text-align: center;"><img src = "/erp/resources/img/checked.png" width = "20px" height = "20px" name = "all_Check" style = "align: center;" onclick = "allCheck(this.name);"></th>
		                                                <th>결의일자</th>
		                                                <th>번호</th>
		                                                <th>승인자</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                        	<c:forEach var="i" begin="0" end="10" step="1">
			                                            <tr>
			                                                <td align = "center" ondblclick="javascript: chitManager.action = 'FT_insertChit?keynum=${i}' chitManager.submit();"><input type="checkbox" onfocus = "focuse(this.name);" name = "checkbox" class="form-control" data-toggle="input-mask" style = "width: 20px; border:0px;" value = "${i}" readonly onkeydown = "enter(this.tagName, this.name);"></td>
			                                                <td><input type="text" onfocus = "focuse(this.name);" name = "date${i}" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit?keynum=${i}'; chitManager.submit();"></td>
			                                                <td><input type="text" onfocus = "focuse(this.name);" name = "no${i}" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit?keynum=${i}'; chitManager.submit();"></td>
			                                                <td><input type="text" onfocus = "focuse(this.name);" name = "confirmname${i}" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit?keynum=${i}'; chitManager.submit();"></td>
			                                            </tr>
		                                            </c:forEach>
		                                        </tbody>
                                            </table>
                                        </div>
                                        
                                        <div class="table-responsive" style = "margin: 0px 0px 50px">
                                            <table class="table m-0 chitsub-table-colored-bordered chitsub-table-bordered-primary table-bordered">
                                                <col style = "width:5%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 5%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
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
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
                

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                2016 - 2019 &copy; Codefox theme by <a href="">Coderthemes</a>
                            </div>
                            <div class="col-md-6">
                                <div class="text-md-right footer-links d-none d-sm-block">
                                    <a href="#">About Us</a>
                                    <a href="#">Help</a>
                                    <a href="#">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        
        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
    </body>
</html>