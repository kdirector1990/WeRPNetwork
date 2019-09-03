<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/pj/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	var frontcursor;
        	var updatekey = 0;
        	var selectval;
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
        </script>
        <!-- Table datatable css -->
        <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    </head>

    <body onload = "start();">

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
                                    <h4 class="page-title">분개장</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <div align="right">
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">정렬순서</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">조건검색</button>
    									<br>
    									</div>
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <td>기표기간</td>
                                                <td>
                                                <!-- 기간 달력 여기 넣고 -->
                                                </td>
                                                <td>결의부서</td>
                                                <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                	<input type="text" class="" readonly>
                                                </td>
                                                	
                                               	<td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                	<input type="text" class="" readonly>
                                                </td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            
                                            <tr>
                                            	<td>전표구분</td>
                                            	<td>
	                                            	<select class="form-control select2">
			                                            <option>전체선택</option>
			                                                <option value="">1.출 금</option>
			                                                <option value="">2.입 금</option>
			                                                <option value="">3.대 체</option>
			                                        </select>
                                            	</td>
                                            	
                                            	<td>전표유형</td>
                                            	<td>
	                                            	<select class="form-control select2">
			                                            <option>전체선택</option>
			                                                <option value="">1.일 반</option>
			                                                <option value="">2.매 입</option>
			                                                <option value="">3.매 출</option>
			                                                <option value="">4.수 정</option>
			                                                <option value="">5.결 산</option>
			                                        </select>
                                            	</td>
                                            	
                                            	<td>작성자&emsp;<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            	<td></td>
                                            </tr>
                                        </table>
                                        
                                        <div class="table-responsive" style = "margin: 15px 0px 15px">
	                                        <table id="datatable" class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
	                                            <col style = "width:10%">
	                                            <col style = "width:5%">
	                                            <col style = "width:10%">
	                                            <col style = "width:10%">
	                                            <col style = "width:10%">
	                                            <col style = "width:10%">
	                                            <col style = "width:10%">
	                                            <col style = "width:10%">
	                                            <col style = "width:10%">
	                                            <col style = "width:10%">
	                                            <col style = "width:5%">
	                                            <thead>
	                                            <tr>
	                                                <th colspan="2">구분[기표]</th>
	                                                <th colspan="2">차변</th>
	                                                <th colspan="2">대변</th>
	                                                <th rowspan="2">적요</th>
	                                                <th colspan="2">거래처</th>
	                                                <th colspan="2">구분[결의]</th>
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
	                                                <th>년/월/일</th>
	                                                <th>번호</th>
	                                            </tr>
	                                            </thead>
	    		
	    
	                                            <tbody>
	                                            	<tr>
	                                            		<td><input type="text" onfocus = "focuse(this.name);" name = "WriteDate0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit'; chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "WriteNo0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onkeydown = "enter(this.tagName, this.name);" ondblclick="javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "LeftPrice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "LeftSubject0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "RightSubejct0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "RightPrice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "Briefs0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "AccCode0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "AccName0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "ResolutionDate0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit'; chitManager.submit();"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "ResolutionNo0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" readonly ondblclick = "javascript: chitManager.action = 'FT_insertChit' chitManager.submit();"></td>
		                                            </tr>
	                                            
	                                            </tbody>
	                                        </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Datatable plugin js -->
        <script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

        <script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

        <script src="/erp/resources/assets/js/pages/datatables.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>