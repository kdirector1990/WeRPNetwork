<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/erp/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
	        function subjectlist(subjectcode) {
	           	var popupX = Math.ceil((window.screen.width - 363)/2);
	           	var popupY = Math.ceil((window.screen.height - 528)/2);
	       		var url = "FT_Subject_list?key=" + $("*[name=SubjectCode" + subjectcode + "]").val() + "&keyname=" + subjectcode;
	       		window.open(url, "subject_list", "menubar=no, width=363px, height = 528px, left="+ popupX + ", top="+ popupY);
	       		
	       	}
	       	
	       	function accountlist(accountcode) {
	           	var popupX = Math.ceil((window.screen.width - 363)/2);
	           	var popupY = Math.ceil((window.screen.height - 528)/2);
	       		var url = "FT_account_list?key=" + $("*[name=AccCode" + accountcode + "]").val() + "&keyname=" + accountcode;
	       		window.open(url, "account_list", "menubar=no, width=363px, height = 528px, left=" + popupX + ", top=" + popupY);
	       		
	       	}
	       	
	       	function ajaxload() {
        		var obj = new Object();
        		var jsonData;
        		
        		if(!$(".chitState").val()) {
        			$(".chitState").focus();
        			return false;
        		} else if(parseInt($(".firstdate").val()) > parseInt($(".lastdate").val())){
        			alert("두 날짜의 사이값이 존재하도록 해주세요");
        			$(".firstdate").focus();
        			return false;
        		} else if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
	        		obj.scode = $("#SubjectCode").val();
	        		obj.acode = $("#AccCode").val();
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
										$(".chit-table-bordered-primary tbody").append('<tr>' +
	                                        '<td scope="row">' + data[i].customer_code + '</td>' +
	                                        '<td>' + data[i].customer_name + '</td>' +
	                                        '<td>' + data[i].license_number + '</td>' +
	                                        '<td>' + data[i].before_value + '</td>' +
	                                        '<td>' + data[i].debtor_value + '</td>' +
	                                        '<td>' + data[i].creditor_value + '</td>' +
	                                        '<td>' + (parseInt(data[i].before_value) + parseInt(data[i].debtor_value) - parseInt(data[i].creditor_value)) + '</td>' +
	                                        '<td>' + data[i].deal_state + '</td>' +
	                                        '<td>' + statename + '</td>' +
	                                        '<td>' + data[i].bs_master + '</td>' +
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
                                                    <span class="d-none d-sm-block">잔액</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">        
                                                    <span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
                                                    <span class="d-none d-sm-block">원장</span>
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
					                                            	<td>계정과목</td>
					                                                <td><input type="text" class="" id = "SubjectCode" style = "width: 100px;">&nbsp;<a href = "#" onclick="subjectlist('');"><i class="dripicons-zoom-in"></i></a>
                                                					<input type="text" class="" id = "SubjectName" readonly style = "width: 100px;"></td>
					                                                
					                                                <td>기표기간</td>
					                                                <td><input type="date" class="firstdate" value = "2011-01-01"> ~ <input type="date" class="lastdate" value = "2011-12-31"></td>
					                                                
					                                            	<td>거래처</td>
					                                            	<td><input type="text" class="" id = "AccCode" style = "width: 100px;" onkeydown = "ajaxload();">&nbsp;<a href = "#" onclick="accountlist('');"><i class="dripicons-zoom-in"></i></a>
                                                					<input type="text" class="" id = "AccName" readonly style = "width: 100px;"></td>
					                                            </tr>
					                                        </table>
				    
				                                        <div class="table-responsive">
				                                            <table class="table mb-0">
				                                                <thead class="thead-light">
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
				                                                <tbody>
				                                                	<c:forEach var="item" items="${AccountBook}">
				                                                		<tr>
						                                                    <td scope="row">${item.customer_code}</td>
						                                                    <td>${item.customer_name}</td>
						                                                    <td>${item.license_number}</td>
						                                                    <td>${item.BeforePrice}</td>
						                                                    <td>${item.debtor_value}</td>
						                                                    <td>${item.creditor_value}</td>
						                                                    <td>${item.BeforePrice + item.debtor_value - item.creditor_value}</td>
						                                                    <td>${item.deal_state}</td>
						                                                    <td>${item.deal_name}</td>
						                                                    <td>${item.bs_master}</td>
					                                                    </tr>
				                                                	</c:forEach>
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
					                                            	<td>계정과목</td>
					                                                <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                            	<td>거래처</td>
					                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                            </tr>
					                                            
						                                        </table>
					    
					                                        <div class="table-responsive">
					                                            <table class="table mb-0">
					                                                <thead class="thead-light">
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
					                                                <tbody>
					                                                    <c:forEach var="item" items="${AccountBook}">
					                                                		<tr>
							                                                    <td scope="row">${item.journal_date}<</td>
							                                                    <td>${item.journal_abstract}</td>
							                                                    <td>${item.debtor_value}</td>
							                                                    <td>${item.creditor_value}</td>
							                                                    <td>${item.BeforePrice + item.debtor_value - item.creditor_value}</td>
						                                                    </tr>
					                                                	</c:forEach>
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