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
        	function notfocus(dd){
    			var nowme = $("*[name=" + dd + "]").parent();
        		for(var i = 0; i < $("*[name=" + dd + "]").parent().nextAll().children().length; i++){
					nowme = nowme.next();
					if(!nowme.children().attr("readonly")){
						nowme.children().focus();
						return false;
					}
				}
    			nowme = $("*[name=" + dd + "]").parent();
    			for(var i = 0; i < $("*[name=" + dd + "]").parent().prevAll().children().length; i++){
					nowme = nowme.prev();
					if(!nowme.children().attr("readonly")){
						nowme.children().focus();
						return false;
					}
				}
        	}
        	function focuse(s) {
        		var name = s;
        		$(".chit-table-bordered-primary tbody *").focus(function() {
        			$(".chit-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
        		});
        	}
        	
        	function enter(cc, dd) {
        		if(cc == "INPUT") {
        			var swit = 0;
        			var nowme = $("input[name=" + dd + "]").parent();
        			if(window.event.which == 13){
        				for(var i = 0; i < $("input[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme = nowme.next();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
            		} else if(window.event.which == 9) {
            			$("*[name=" + dd + "]").parent().prev().children().focus();	
						return false;
            		} else if(window.event.which == 37) {
            			for(var i = 0; i < $("input[name=" + dd + "]").parent().prevAll().children().length; i++){
        					nowme = nowme.prev();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
            		} else if(window.event.which == 38) {
            			$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) - 1) + "]").focus();
            		} else if(window.event.which == 39) {
        				for(var i = 0; i < $("input[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme = nowme.next();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
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
        	
        	function enterupdate(vv) {
        		var obj = new Object();
        		var jsonData;
        		frontcursor = $(".chit-table-bordered-primary tbody #enter" + vv).attr("name");
        		if(window.event.which == 9) {
        			$(".chit-table-bordered-primary tbody #enter" + vv).parent().prev().children().focus();
        		}
        		var nowme = $("#enter" + vv).parent();
				
                if(window.event.which == 37) {
                	updatekey = 1;
                	selectval = $("#enter" + vv).val();
          			for(var i = 0; i < $("#enter" + vv).parent().prevAll().children().length; i++){
    					nowme = nowme.prev();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
        		} else if(window.event.which == 38) {
                	updatekey = 1;
                	selectval = $("#enter" + vv).val();
                	$("#enter" + (vv-1)).focus();
					return false;
        		} else if(window.event.which == 39) {
        			updatekey = 1;
                	selectval = $("#enter" + vv).val();
    				for(var i = 0; i < $("#enter" + vv).parent().nextAll().children().length; i++){
    					nowme = nowme.next();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
                	$("#first" + (vv+1)).focus();
					return false;
        		} else if(window.event.which == 40) {
                	updatekey = 1;
                	selectval = $("#enter" + vv).val();
                	if($("#enter" + (vv+1)).attr("onchange") != "enterinsert(" + (vv+1) + ");"){
                    	$("#enter" + (vv+1)).focus();
                	}
					return false;
        		} else if(window.event.which == 13) {
	        		// 자바스크립트 객체 생성
	        		obj.savingsCode = $("input[name=savingsCode" + vv + "]").val();
	        		obj.savingsName = $("input[name=savingsName" + vv + "]").val();
	        		obj.AccCode = $("input[name=AccCode" + vv + "]").val();
	        		obj.AccName = $("input[name=AccName" + vv + "]").val();
	        		obj.SubjectCode = $("input[name=SubjectCode" + vv + "]").val();
	        		obj.SubjectName = $("input[name=SubjectName" + vv + "]").val();
	        		obj.AccountNo = $("input[name=AccountNo" + vv + "]").val();
	        		obj.AccountHolder = $("input[name=AccountHolder" + vv + "]").val();
	        		obj.DevPrice = $("input[name=DevPrice" + vv + "]").val();
	        		
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_SavingsUpdate?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                              // data는 서버로부터 전송받은 결과(JSON)이므로 바로 사용한다
	                             /*  if (data.answer == 'success') {
	                                      alert(data.name + '님 환영합니다.');
	                                      var map = new MapArray();
	                                      postData('/News/index.do', map);
	                              } else if (data.answer == 'fail') {
	                                      alert('아이디와 비번이 일치하지 않습니다.');
	                              } else if (data.answer == 'error') {
	                                      alert('원활한 접속이 이루어 지지 못했습니다. 관리자에게 문의하십시오.');
	                              } */
	                              alert(data);
	                              if(updatekey == 0){
	                  				$(".chitsub-table-bordered-primary tbody #firstsub").focus();
	                              } else {
	                            	 if(updatekey == 1){
	                             	 	$("#enter" + vv).val(selectval);
	                            	 } else if(updatekey == 2){
	                                 	$("#first" + (vv+1)).focus();
	                            	 }
	                            	 updatekey = 0;
	                              }
	                       },
	                       error : function(e) {
	                              alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	               });

        		}
        	}
        	
        	function enterinsert(cc) {
				var nowme = $("#enter" + cc).parent();
				
                if(window.event.which == 37) {
                	updatekey = 1;
                	selectval = $("#enter" + cc).val();
          			for(var i = 0; i < $("#enter" + cc).parent().prevAll().children().length; i++){
    					nowme = nowme.prev();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
        		} else if(window.event.which == 38) {
                	updatekey = 1;
                	selectval = $("#enter" + cc).val();
                	alert("#enter" + (cc-1));
                	$("#enter" + (cc-1)).focus();
					return false;
        		} else if(window.event.which == 39) {
        			updatekey = 1;
                	selectval = $("#enter" + cc).val();
    				for(var i = 0; i < $("#enter" + cc).parent().nextAll().children().length; i++){
    					nowme = nowme.next();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
                	$("#first" + (cc+1)).focus();
					return false;
        		} else if(window.event.which == 40) {
                	updatekey = 1;
                	selectval = $("#enter" + vv).val();
                	if($("#enter" + (vv+1)).attr("onchange") != "enterinsert(" + (vv+1) + ");"){
                    	$("#enter" + (vv+1)).focus();
                	}
					return false;
        		} else if(window.event.which == 13) {
        			var obj = new Object();
            		var jsonData;
	                 
	              	// 자바스크립트 객체 생성
	         		obj.savingsName = $("input[name=savingsName" + cc + "]").val();
	         		obj.AccCode = $("input[name=AccCode" + cc + "]").val();
	         		obj.AccName = $("input[name=AccName" + cc + "]").val();
	         		obj.SubjectCode = $("input[name=SubjectCode" + cc + "]").val();
	         		obj.SubjectName = $("input[name=SubjectName" + cc + "]").val();
	         		obj.AccountNo = $("input[name=AccountNo" + cc + "]").val();
	         		obj.AccountHolder = $("input[name=AccountHolder" + cc + "]").val();
	         		obj.DevPrice = $("input[name=DevPrice" + cc + "]").val();
	         		
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
	                               // data는 서버로부터 전송받은 결과(JSON)이므로 바로 사용한다
	                              /*  if (data.answer == 'success') {
	                                       alert(data.name + '님 환영합니다.');
	                                       var map = new MapArray();
	                                       postData('/News/index.do', map);
	                               } else if (data.answer == 'fail') {
	                                       alert('아이디와 비번이 일치하지 않습니다.');
	                               } else if (data.answer == 'error') {
	                                       alert('원활한 접속이 이루어 지지 못했습니다. 관리자에게 문의하십시오.');
	                               } */
	                               frontcursor = $(".chit-table-bordered-primary tbody #enter" + cc).attr("name");
		           	       			$(".chit-table-bordered-primary tbody #enter" + cc).attr("onkeydown", "enterupdate(" + cc + ");");
		           	       			$(".chit-table-bordered-primary tbody").append('<tr>' +
		           	       					'<td><input type="text" onfocus = "focuse(this.name);" name = "savingsCode' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
		                                       '<td><input type="text" onfocus = "focuse(this.name);" id = "first' + count + '" name = "savingsName' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                       '<td><input type="text" onfocus = "focuse(this.name);" name = "AccCode' + count + '" class="form-control" onclick = "" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                       '<td><input type="text" onfocus = "focuse(this.name);" name = "AccName' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
		           	                        '<td><input type="text" onfocus = "focuse(this.name);" name = "SubjectCode' + count + '" class="form-control" onclick = "" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		           	                        '<td><input type="text" onfocus = "focuse(this.name);" name = "SubjectName' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
		           	                        '<td><input type="text" onfocus = "focuse(this.name);" name = "AccountNo' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		           	                        '<td><input type="text" onfocus = "focuse(this.name);" name = "AccountHolder' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		           	                        '<td><input type="text" id = "enter' + count + '" onfocus = "focuse(this.name);" name = "DevPrice' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown="enterinsert(' + count + ');"></td>' +
		           	                       '</tr>');
		           	       			 $(".chit-table-bordered-primary tbody #first" + count).focus();
		           	                 count = count + 1;
	                               alert(data);
	                               $("*[name=savingsCode" + cc + "]").val(data);
	                        },
	                        error : function(e) {
	                               alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                        }
	                });
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
                                    <h4 class="page-title">적금관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                       <div class="table-responsive" style = "margin: 15px 0px 15px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <thead>
                                                    <tr>
                                                    	<th>적금코드</th>
                                                    	<th>적금명</th>
		                                                <th>거래처코드</th>
		                                                <th>거래처명</th>
		                                                <th>계정코드</th>
		                                                <th>계정명</th>
		                                                <th>계좌번호</th>
		                                                <th>예금주</th>
		                                                <th>적립금액</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <tr>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "savingsCode0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" id = "first0" name = "savingsName0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "AccCode0" class="form-control" onclick = "" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "AccName0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "SubjectCode0" class="form-control" onclick = "" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "SubjectName0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "AccountNo0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "AccountHolder0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" id = "enter0" onfocus = "focuse(this.name);" name = "DevPrice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown="enterinsert(0);"></td>
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

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="mdi mdi-close"></i>
                </a>
                <h5 class="m-0 text-white">Settings</h5>
            </div>
            <div class="slimscroll-menu">
                <hr class="mt-0">
                <h5 class="pl-3">Basic Settings</h5>
                <hr class="mb-0" />


                <div class="p-3">
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                        <label class="custom-control-label" for="customCheck1">Notifications</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck2" checked>
                        <label class="custom-control-label" for="customCheck2">API Access</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck3">
                        <label class="custom-control-label" for="customCheck3">Auto Updates</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck4" checked>
                        <label class="custom-control-label" for="customCheck4">Online Status</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck5">
                        <label class="custom-control-label" for="customCheck5">Auto Payout</label>
                    </div>
                </div>

                <!-- Timeline -->
                <hr class="mt-0" />
                <h5 class="pl-3 pr-3">Timeline</h5>
                <hr class="mb-0" />

                <div class="p-3">
                    <ul class="list-unstyled activity-widget">
                        <li class="activity-list">
                            <p class="mb-0"><small>08 July</small></p>
                            <p>Neque porro quisquam est</p>
                        </li>
                        <li class="activity-list">
                            <p class="mb-0"><small>09 July</small></p>
                            <p>Ut enim ad minima veniam quis velit esse </p>
                        </li>
                        <li class="activity-list">
                            <p class="mb-0"><small>10 July</small></p>
                            <p>Quis autem vel eum iure</p>
                        </li>
                    </ul>
                </div>

                <!-- Messages -->
                <hr class="mt-0" />
                <h5 class="pl-3 pr-3">Messages <span class="float-right badge badge-pill badge-danger">24</span></h5>
                <hr class="mb-0" />
                <div class="p-3">
                    <div class="inbox-widget">
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-1.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Chadengle</a></p>
                            <p class="inbox-item-text">Hey! there I'm available...</p>
                            <p class="inbox-item-date">13:40 PM</p>
                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-2.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Tomaslau</a></p>
                            <p class="inbox-item-text">I've finished it! See you so...</p>
                            <p class="inbox-item-date">13:34 PM</p>
                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-3.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Stillnotdavid</a></p>
                            <p class="inbox-item-text">This theme is awesome!</p>
                            <p class="inbox-item-date">13:17 PM</p>
                        </div>

                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-4.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Kurafire</a></p>
                            <p class="inbox-item-text">Nice to meet you</p>
                            <p class="inbox-item-date">12:20 PM</p>

                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-5.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Shahedk</a></p>
                            <p class="inbox-item-text">Hey! there I'm available...</p>
                            <p class="inbox-item-date">10:15 AM</p>

                        </div>
                    </div> <!-- end inbox-widget -->
                </div> <!-- end .p-3-->

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <%@ include file="../rightbar.jsp" %>
   		<%@ include file="../setting2.jsp" %>
    </body>
</html>