<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                                    <h4 class="page-title">주요예적금현황</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div align="right">
	    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">계정등록</button>
    									</div>
    
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
                                           	<div class="tab-pane active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                     			<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                   		<form>
					                                    	<div class="form-group mb-3">
						    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
						                                            <tr>
						                                            	<td>회계단위</td>
						                                                <td>
						                                                	<select class="form-control">
									                                            <option>선택</option>
									                                                <option value="">본사</option>
									                                        </select>
								                                        </td>
								                                        
								                                        <td>
						                                                	&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
						                                                </td>
						                                                
						                                                <td>&nbsp;계정과목</td>
						                                                <td>
						                                                	<select class="form-control">
									                                            <option>선택</option>
									                                                <option value=""></option>
									                                        </select>
						                                                </td>
						                                                
						                                                <td>기간</td>
						                                                <td>
						                                               	 	<input type="text" id="reportrange" class="form-control"/>
						                                                </td>
						                                                
						                                                <td>
						                                                	<input type="checkbox">&nbsp;잔액 '0'값 표시
					                                                	</td>
				                                                	</tr>
						                                        </table>
					                                        </div>
					                                        </form>
				                                                <hr>
				    
				                                        <div class="table-responsive">
				                                            <table class="table mb-0">
				                                                <thead class="thead-light">
				                                                    <tr>
						                                                <th>구분</th>
						                                                <th>개설점</th>
						                                                <th>계좌번호</th>
						                                                <th>개설일</th>
						                                                <th>만기일</th>
						                                                <th>시재액</th>
						                                                <th>한도액</th>
						                                                <th>만기금액</th>
						                                                <th>불입횟수</th>
						                                                <th>외화시재</th>
						                                            </tr>
				                                                </thead>
				                                                <tbody>
				                                                    <tr>
				                                                    	<td>1</td>
				                                                    	<td>2</td>
				                                                    	<td>3</td>
				                                                    	<td>4</td>
				                                                    	<td>5</td>
				                                                    	<td>6</td>
				                                                    	<td>7</td>
				                                                    	<td>8</td>
				                                                    	<td>9</td>
				                                                    	<td>10</td>
				                                                    </tr>
				                                                </tbody>
				                                            </table>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
                                          </div>
                                          <!-- 잔액 끝 -->
                                          
                                          <!-- 원장 -->
                                            <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                            	<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
				                                        		<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
						                                             <tr>
						                                             	   <td>회계단위</td>
						                                                <td>
						                                                	<select class="form-control">
									                                            <option>선택</option>
									                                                <option value="">본사</option>
									                                        </select>
								                                        </td>
								                                        
								                                        <td>
						                                                	&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
						                                                </td>
						                                                
						                                                <td>조회기간</td>
						                                                <td>
						                                               		 <input type="text" id="reportrange" class="form-control"/>
						                                                </td>
						                                                
						                                                <td>&nbsp;계정과목</td>
						                                                <td>
						                                                	<select class="form-control">
									                                            <option>선택</option>
									                                                <option value=""></option>
									                                                <option value=""></option>
									                                        </select>
						                                                </td>
						                                            </tr>
						                                            
						                                            <tr>
						                                            	<td>거래처</td>
						                                            	<td><input type="text" class="form-control" ></td>
						                                            	<td>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
						                                            	<td><input type="text" class="form-control"></td>
						                                            	<td>&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
						                                            	<td><input type="text" class="form-control"></td>
						                                            </tr>
						                                        </table>
		                                       	 <hr>
					                                    <div class="card-body table-responsive">
					                                        <div class="table-responsive">
					                                            <table class="table mb-0">
					                                                <thead class="thead-light">
					                                                    <tr>
							                                                <th>월 </th>
							                                                <th>일</th>
							                                                <th>적요 </th>
							                                                <th>차변</th>
							                                                <th>대변 </th>
							                                                <th>잔액</th>
							                                            </tr>
					                                                </thead>
					                                                <tbody>
					                                                    <tr>
					                                                    	<td>권순용</td>
					                                                    	<td>권순용</td>
					                                                    	<td>권순용</td>
					                                                    	<td>권순용</td>
					                                                    	<td>권순용</td>
					                                                    	<td>권순용</td>
					                                                    </tr>
					                                                </tbody>
					                                            </table>
					                                        </div>
					                                    </div>
					                            	 </div>
				                                  </div>
			                                    </div>
	                                         </div>
                                             <!-- 원장 끝 -->
	                                        </div>
	                                    </div>
	                                 </div>
	                               </div>
	                             <!--  -->
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