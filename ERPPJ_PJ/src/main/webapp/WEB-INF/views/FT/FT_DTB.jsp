<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/erp/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
	       	function ajaxload(cc) {
        		var obj = new Object();
        		var jsonData;
        		
        		if(parseInt($(".firstdate" + cc).val()) > parseInt($(".lastdate" + cc).val())){
        			alert("두 날짜의 사이값이 존재하도록 해주세요");
        			$(".firstdate" + cc).focus();
        			return false;
        		} else if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
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
	                       url : "/erp/FT_DTBDayList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null){
	                    		   var listL = data[0];
	                    		   var listM = data[1];
	                    		   var listS = data[2];
									for(var j = 0; j < listL.length; j++){
										$("#onepage").append('<tr>' +
	                                        '<td scope="row" style = "background-color:#D6EAF8">' + listL[j].debtorsum + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].debtorsum + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].lg_name + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum + '</td>' +
		                                '</tr>');
										for(var k = 0; k < listM.length; k++) {
											if(listL[j].lg_name == listM[k].lg_name){
												$("#onepage").append('<tr>' +
				                                        '<td scope="row" style = "background-color:#EBF5FB">' + listM[k].debtorsum + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].debtorsum + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].ag_name + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum + '</td>' +
					                                '</tr>');
											}
											for(var l = 0; l < listS.length; l++) {
												if(listM[k].ag_name == listS[l].ag_name){
													$("#onepage").append('<tr>' +
					                                        '<td scope="row">' + listS[l].debtorsum + '</td>' +
					                                        '<td>' + listS[l].debtorsum + '</td>' +
					                                        '<td>' + listS[l].accounts_name + '</td>' +
					                                        '<td>' + listS[l].creditorsum + '</td>' +
					                                        '<td>' + listS[l].creditorsum + '</td>' +
						                                '</tr>');
												}
											}
										}
										
									}
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
        		if(parseInt($(".firstdate" + cc).val()) > parseInt($(".lastdate" + cc).val())){
        			alert("두 날짜의 사이값이 존재하도록 해주세요");
        			$(".firstdate" + cc).focus();
        			return false;
        		} else if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
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
	                       url : "/erp/FT_DTBMonthList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null){
	                    		   var listL = data[0];
	                    		   var listM = data[1];
	                    		   var listS = data[2];
									for(var j = 0; j < listL.length; j++){
										$("#twopage").append('<tr>' +
	                                        '<td scope="row" style = "background-color:#D6EAF8">' + listL[j].debtorsum + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].debtorsum + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].lg_name + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum + '</td>' +
	                                        '<td style = "background-color:#D6EAF8">' + listL[j].creditorsum + '</td>' +
		                                '</tr>');
										for(var k = 0; k < listM.length; k++) {
											if(listL[j].lg_name == listM[k].lg_name){
												$("#twopage").append('<tr>' +
				                                        '<td scope="row" style = "background-color:#EBF5FB">' + listM[k].debtorsum + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].debtorsum + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].ag_name + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum + '</td>' +
				                                        '<td style = "background-color:#EBF5FB">' + listM[k].creditorsum + '</td>' +
					                                '</tr>');
											}
											for(var l = 0; l < listS.length; l++) {
												if(listM[k].ag_name == listS[l].ag_name){
													$("#twopage").append('<tr>' +
					                                        '<td scope="row">' + listS[l].debtorsum + '</td>' +
					                                        '<td>' + listS[l].debtorsum + '</td>' +
					                                        '<td>' + listS[l].accounts_name + '</td>' +
					                                        '<td>' + listS[l].creditorsum + '</td>' +
					                                        '<td>' + listS[l].creditorsum + '</td>' +
						                                '</tr>');
												}
											}
										}
										
									}
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
                                            <li class="nav-item">
                                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
                                                    <span class="d-block d-sm-none"><i class="fa fa-home"></i></span>
                                                    <span class="d-none d-sm-block">일계</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">        
                                                    <span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
                                                    <span class="d-none d-sm-block">월계</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                        	<!-- 잔액 -->
                                           	<div class="tab-pane show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                     			<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
					                                            <tr>
					                                                <td>기표기간</td>
					                                                <td><input type="date" class="firstdate0" value = "2011-01-01" max = "9999-12-31"> ~ <input type="date" class="lastdate0" value = "2011-12-31" onkeydown = "ajaxload(0);" max = "9999-12-31"></td>
					                                            </tr>
					                                        </table>
				    
				                                        <div class="table-responsive">
				                                            <table class="table m-0 table-bordered">
				                                                <thead style = "text-align:center;">
				                                                    <tr>
						                                                <th colspan = "2" style = "background-color:#5DADE2; color:#fff;">차변</th>
						                                                <th rowspan = "2" style = "vertical-align:middle; background-color:#5DADE2; color:#fff;">계정과목</th>
						                                                <th colspan = "2" style = "background-color:#5DADE2; color:#fff;">대변</th>
						                                            </tr>
						                                            
				                                                    <tr>
						                                                <th style = "background-color:#5DADE2; color:#fff;">계</th>
						                                                <th style = "background-color:#5DADE2; color:#fff;">금액</th>
						                                                <th style = "background-color:#5DADE2; color:#fff;">금액</th>
						                                                <th style = "background-color:#5DADE2; color:#fff;">계</th>
						                                            </tr>
						                                            
				                                                </thead>
				                                                <tbody id = "onepage">
				                                                	
				                                                </tbody>
				                                            </table>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
                                          </div>
                                          
                                          <!-- 원장 -->
                                            <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                                <div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
						    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
					                                            <tr>
					                                                <td>기표기간</td>
					                                                <td><input type="month" class="firstdate1" value = "2011-01-01"> ~ <input type="month" class="lastdate1" value = "2011-12-31" onkeydown = "twoajaxload(1);"></td>
					                                            </tr>
						                                        </table>
					    
					                                        <div class="table-responsive">
					                                            <table class="table m-0 table-bordered">
					                                                <thead style = "text-align:center;">
					                                                    <tr>
							                                                <th colspan = "2" style = "background-color:#5DADE2; color:#fff;">차변</th>
							                                                <th rowspan = "2" style = "vertical-align:middle; background-color:#5DADE2; color:#fff;">계정과목</th>
							                                                <th colspan = "2" style = "background-color:#5DADE2; color:#fff;">대변</th>
							                                            </tr>
							                                            
					                                                    <tr>
							                                                <th style = "background-color:#5DADE2; color:#fff;">계</th>
							                                                <th style = "background-color:#5DADE2; color:#fff;">금액</th>
							                                                <th style = "background-color:#5DADE2; color:#fff;">금액</th>
							                                                <th style = "background-color:#5DADE2; color:#fff;">계</th>
							                                            </tr>
							                                            
					                                                </thead>
					                                                <tbody id = "twopage">
					                                                    
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

        <%@ include file="../setting2.jsp" %>
        
    </body>
</html>