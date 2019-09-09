<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Responsive Table css -->
        <link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css" rel="stylesheet" type="text/css" />
    </head>
    <script src="/erp/resources/assets/js/request.js"></script>
	<script type="text/javascript">
	    function ST_releaseDetailForm(url) {
	    	sendRequest(callback, "ST_releaseDetail", "post", "${_csrf.parameterName }=${_csrf.token }&sar_code="+url);
	    }
	    
	    function callback() {
	    	var result = document.getElementById("result");
	    	
	    	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
	    		if(httpRequest.status == 200){	// 200 : 정상 종료
	    		 	result.innerHTML = "정상종료";
	    			
	    			var datas = httpRequest.responseText; 
	    			
	    			var bookList = "";
	    			
	    			result.innerHTML = datas;
	    		} else {
	    			result.innerHTML = "에러발생";
	    		}
	    	} 
	    	else {
	    		result.innerHTML = "상태 : " + httpRequest.readyState;
	    	}
	    }

    
    
    </script>
    

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
                                            <li class="breadcrumb-item active">출고 관리</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">출고 관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                     <div class="table-responsive">
                                         <table id="datatable" style="border-collapse:10px; border-spacing:10px; width: 100%; padding : 10px;">
                                            <tr>
                                                <td>사업장</td>
                                                <td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                </td>
                                                
                                                <td>부서</td>
                                                <td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                <td>사원
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                </td>
                                            </tr>
                                            
                                            
                                            <tr>
                                            	<td>견적기간</td>
                                            	<td>
                                            		<input type="date" id="userdate" name="userdate" value="sysdate">&nbsp;~&nbsp;<input type="date" id="userdate" name="userdate" value="sysdate">
                                            	</td>
                                            	<td>납품처</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            
                                            	<td>거래구분
                                            	<input type="text" class="">&nbsp;<a href="#"></a></td>
                                            </tr>	
                                            	
                                            <tr>
                                            	<td>환종</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class=""></td>
                                            	
                                            	<td><select class="" name="">
			                                                <option value="">0. 품번담당</option>
			                                                <option value="">1. 고객담당</option>
			                                                <option value="">2. 실적담당</option>
			                                        </select></td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            	
                                            	<td><select class="" name="">
			                                                <option value="">0. 출고번호</option>
			                                                <option value="">1. 비고 (내역)</option>
			                                                <option value="">2. 비고 (건)</option>
			                                        </select>
                                            	<input type="text" class="">&nbsp;<a href="#"></a></td>
                                            	
                                            </tr>
                                            
                                            <tr>	
                                            	<td><select class="" name="">
			                                                <option value="">0. 품번</option>
			                                                <option value="">1. 품명</option>
			                                                <option value="">2. 규격</option>
			                                                <option value="">3. 품번범위</option>
			                                                <option value="">4. 품번개별</option>
			                                        </select></td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>~<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            	<td>관리 구분</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class=""></td>
                                            	<td>프로젝트
                                            	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            	
                                            </tr>
                                        </table>
                                        </div>
                                    
                                    
                                    
                                        <div class="responsive-table-plugin">
                                            <div class="table-rep-plugin">
                                                <div class="table-responsive" data-pattern="priority-columns">
                                                    <table id="tech-companies-1" class="table table-striped">
                                                        <thead>
														<tr>
															<th>구분</th>
															<th>출고 거래처명</th>
															<th>출고 일자</th>
															<th>출고 번호</th>
															<th>납품처</th>
															<th>담당자</th>
															<th>출고 수량</th>
															<th>단가</th>
															<th>합계액</th>
														</tr>
													</thead>
                                                        <tbody>
														<c:if test="${cnt > 0}">
															<c:forEach var="rto" items="${rtos}">
																<tr>
																	<td></td> <!-- 구분 -->
																	<td><input type ="button" value="${rto.release_name }" onclick="ST_releaseDetailForm(${rto.release_name });"></td><!-- 출고 거래처명 -->
																	<td>${rto.release_date }</td> <!-- 출고 일자 -->
																	<td><input type = "button" value = "${rto.sar_code }" onclick="ST_releaseDetailForm(${rto.sar_code });"></td><!-- 출고 번호 -->
																	<td></td><!-- 납품처 -->
																	<td></td><!--담당자  -->
																	<td>${rto.release_count }</td><!-- 출고 수량 -->
																	<td>${rto.unit_cost }</td><!-- 단가 -->
																	<td></td><!-- 합계액 -->
																</tr>
															</c:forEach>
														</c:if>
													</tbody>
                                                    </table>
                                                </div> <!-- end .table-responsive -->
        
                                            </div> <!-- end .table-rep-plugin-->
                                        </div> <!-- end .responsive-table-plugin-->
                                    </div>
                                </div> <!-- end card -->
							<br>
							
							<hr>
							<br>
							<div id="result" class="card-body" style="width: 3500px;">
							<!-- 상세 페이지 출력 위치 -->

							</div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
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
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Responsive Table js -->
        <script src="/erp/resources/assets/libs/rwd-table/rwd-table.min.js"></script>

        <!-- Init js -->
        <script src="/erp/resources/assets/js/pages/responsive-table.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>