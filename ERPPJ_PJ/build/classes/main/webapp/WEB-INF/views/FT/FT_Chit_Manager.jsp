<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
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
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">Example</h4>
                                        <div align="right">
    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">전표복사</button>
    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">전표검색</button>
    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">품의적요등록</button>
    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">전표양식</button>
    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">재무부서</button>
    									<br>
    									</div>
    									<hr>
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <td>회계단위</td>
                                                <td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class="">
                                                </td>
                                                
                                                <td>결의부서</td>
                                                <td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class="">
                                                	~
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class="">
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                            	<td>작성자</td>
                                            	<td>
                                            		<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class="">
                                            	</td>
                                            	
                                            	<td>전표유형</td>
                                            	<td>
                                            		<select class="form-control select2">
			                                            <option>0. 전체선택</option>
			                                                <option value="">--</option>
			                                        </select>
                                            	</td>
                                            	
                                            	<td>전표상태</td>
                                            	<td>
                                            		<select class="form-control select2">
			                                            <option>미결</option>
			                                                <option value="">--</option>
			                                        </select>
                                            	</td>
                                            	
                                            	<td>전표구분</td>
                                            	<td>
                                            		<select class="form-control select2">
			                                            <option>전체</option>
			                                                <option value="">--</option>
			                                        </select>
                                            	</td>
                                            </tr>
                                            
                                            <tr>
                                            	<td>
                                            	
                                            </tr>	
                                        </table>
                                        <hr>
                                        
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th><input type="checkbox"></th>
                                                <th>결의일자</th>
                                                <th>번호</th>
                                                <th>품의내역</th>
                                                <th>유형</th>
                                                <th>기표일</th>
                                                <th>No</th>
                                                <th>승인자</th>
                                                <th>작업자</th>
                                                <th>차변</th>
                                                <th>대변</th>
                                                <th>연동구분</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                                <td><input type="checkbox"></td>
                                                <td>2018/05/25</td>
                                                <td>0008</td>
                                                <td>판관비_통신비</td>
                                                <td>일반</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>권순용</td>
                                                <td>470,000</td>
                                                <td>470,000</td>
                                                <td></td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
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
                                            <tr>
                                            	<td>1</td>
                                                <td>차변</td>
                                                <td>81400</td>
                                                <td>통신비</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>100,000</td>
                                                <td>1</td>
                                                <td>판관비_접대비</td>
                                                <td></td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        <hr>
                                        <table>
                                        	<tr>
                                        		<td>프로젝트 <input type="text" readonly>&nbsp;<input type="text" readonly></td>
                                        		<td>사용부서 <input type="text" readonly>&nbsp;<input type="text" readonly></td>
                                        		<td>관리번호 <input type="text" readonly></td>
                                        	<br>
                                        	</tr>
                                        	
                                        	<tr>
                                        		<td>발생일자<input type="text" readonly></td>
                                        		<td>관리율 <input type="text" readonly></td>
                                        		<td>사용자 정의 <input type="text" readonly>&nbsp;<input type="text" readonly></td>
                                        		<td>사용자 정의 <input type="text" readonly>&nbsp;<input type="text" readonly></td>
                                        	</tr>
                                        	
                                        	<tr>
                                        		<td></td>
                                        		<td></td>
                                        		<td></td>
                                        		<td></td>
                                        	</tr>
                                        </table>
                                        <hr>
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

        <%@ include file="../setting2.jsp" %>
        
    </body>
</html>