<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Table datatable css -->
        
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
                                    <h4 class="page-title">판매 계획 관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Default Tabs</h4>
    
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-home"></i></span>
                                                    <span class="d-none d-sm-block">기초 계획</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">        
                                                    <span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
                                                    <span class="d-none d-sm-block">수정 계획</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                        	<!-- 기초 계획 -->
                                           	<div class="tab-pane" id="home" role="tabpanel" aria-labelledby="home-tab">
                                     			<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div align="left">
						    									환종<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class="">
						    									환율 <input type="text" class="">&nbsp;<button type="button" class="btn btn-outline-dark waves-effect waves-light">일괄 수정</button>
						    									
					    										<br>
					    									</div>
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
						                                                <th rowspan="2">품번</th>
						                                                <th rowspan="2">품명</th>
						                                                <th>규격</th>
						                                                <th>단위 (관리)</th>
						                                                <th rowspan="2">계획 수량</th>
						                                                <th>환종</th>
						                                                <th>환율</th>
						                                                <th>예상 단가</th>
						                                                <th>예상 금액</th>
						                                                <th>예상 원화 금액</th>
						                                                <th>비고</th>
						                                            </tr>
						                                            
				                                                </thead>
				                                                <tbody>
				                                                    <tr>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    </tr>
				                                                </tbody>
				                                            </table>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
                                          </div>
                                          
                                          <!-- 결산자료 -->
                                            <div class="tab-pane show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                                <div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div align="right">
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">새로작성</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">분개</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">계정생성</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">감가상각</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">적요등록</button>
					    									<br>
					    									</div>
						    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
						                                             <td>회계단위</td>
					                                                <td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                                
					                                                <td>기간</td>
					                                                <td>
					                                                <input type="text" class="">&nbsp;~&nbsp;<input type="text" class="">
					                                                </td>
						                                        </table>
					    
					                                        <div class="table-responsive">
					                                            <table class="table mb-0">
					                                                <thead class="thead-light">
					                                                    <tr>
							                                                <th>날짜</th>
							                                                <th>적요란</th>
							                                                <th>차변</th>
							                                                <th>대변</th>
							                                                <th>잔액</th>
							                                            </tr>
							                                            
					                                                </thead>
					                                                <tbody>
					                                                    <tr>
					                                                    <th scope="row">2018/12/20</th>
					                                                    <td>[전이월]</td>
					                                                    <td>2,390,167,000</td>
					                                                    <td>1,939,534,000</td>
					                                                    <td>450,633,000</td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    <th scope="row">2018/12/20</th>
					                                                    <td>판관비_복리후생비</td>
					                                                    <td></td>
					                                                    <td>1,900,000</td>
					                                                    <td></td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    <th scope="row">2018/12/20</th>
					                                                    <td>판관비_복리후생비</td>
					                                                    <td></td>
					                                                    <td>1,900,000</td>
					                                                    <td></td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    <th></th>
					                                                    <td>[월계]</td>
					                                                    <td></td>
					                                                    <td>1,000,000</td>
					                                                    <td></td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    <th></th>
					                                                    <td>[누계]</td>
					                                                    <td>2,930,000,000</td>
					                                                    <td>100,000,000</td>
					                                                    <td></td>
					                                                    </tr>
					                                                </tbody>
					                                            </table>
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
                                             </div>
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

        <%@ include file="../setting2.jsp" %>
        
    </body>
</html>