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
           			$(".chitsub-table-bordered-primary tbody").html('<tr>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" id = "firstsub" name = "subnumber0" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subtype0" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "code0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subject0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountcode0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountname0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "hostno0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick = "javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "price0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subno0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "summary0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                         '<td><input type="text" onfocus = "subfocuse(this.name);" name = "document0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = \'FT_insertChit\' chitManager.submit();"></td>' +
                     '</tr>');
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
        			$("input[type='checkbox']").attr("checked", true);
        		} else {
        			$("img[name=" + dd + "]").attr("src", "/erp/resources/img/checked.png");
        			$("input[type='checkbox']").attr("checked", false);
        		}
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
						
						<form name = "chitManager" method="post">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <div align="right" style = "margin-bottom: 30px;">
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">승인처리</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">전표검색</button>
    									<br>
    									</div>
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <td>결의부서&emsp;&emsp;<input type="text" class="" readonly style = "width: 100px;">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                	<input type="text" class="" readonly style = "width: 100px;">
                                                	&emsp;&emsp;&emsp;작성자&emsp;&emsp;<input type="text" class="" readonly style = "width: 100px;">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                	<input type="text" class="" readonly style = "width: 100px;"></td>
                                            </tr>
                                            <tr>
                                            	<td>전표유형&emsp;&emsp;<select class="" style = "width: 100px; -webkit-appearance: none;">
	                                                <option value="">0. 전체</option>
	                                                <option value="일반">1. 일반</option>
	                                                <option value="매입">2. 매입</option>
	                                                <option value="매출">3. 매출</option>
	                                                <option value="수정">4. 수정</option>
	                                                <option value="결산">5. 결산</option>
			                                    </select>&emsp;&emsp;&emsp;전표상태&emsp;&emsp;<select class="" style = "width: 100px; -webkit-appearance: none;">
	                                                <option value="미결">미결</option>
	                                                <option value="승인">승인</option>
	                                                <option value="전체">전체</option>
		                                       	</select>&emsp;&emsp;&emsp;전표구분&emsp;&emsp;<select class="" style = "width: 100px; -webkit-appearance: none;">
	                                                <option value="">전체</option>
	                                                <option value="출금">출금</option>
	                                                <option value="입금">입금</option>
	                                                <option value="대체">대체</option>
	                                       		</select></td>
                                            </tr>
                                            <tr>
                                                <td>결의기간&emsp;&emsp;<input type="text" class="" readonly style = "width: 100px;"> ~
                                                	<input type="text" class="" readonly style = "width: 100px;">
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
		                                                <th>품의내역</th>
		                                                <th>유형</th>
		                                                <th>승인자</th>
		                                                <th>작업자</th>
		                                                <th>차변</th>
		                                                <th>대변</th>
		                                                <th>연동구분</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <tr>
		                                                <td align = "center" ondblclick="javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"><input type="checkbox" onfocus = "focuse(this.name);" name = "checkbox0" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 20px; border:0px;" value = "30" readonly onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "date0" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit'; chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "no0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "type0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "confirmname0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "writer0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "leftprice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "rightprice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "slee0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                            </tr>
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
		                                                <th>순번</th>
		                                                <th>구분</th>
		                                                <th>코드</th>
		                                                <th>계정과목</th>
		                                                <th>코드</th>
		                                                <th>거래처명</th>
		                                                <th>사업자(주민)번호</th>
		                                                <th>금액</th>
		                                                <th>No</th>
		                                                <th>적요명</th>
		                                                <th>증빙</th>
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