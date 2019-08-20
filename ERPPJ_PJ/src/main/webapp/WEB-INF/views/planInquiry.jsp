<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            
            <%@ include file="sidebar.jsp" %>

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form Validation</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">기획서조회</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div align="right">
	    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
    									<hr>
    									</div>
    									<form>
	    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
	                                            <tr>
		                                            <td>검색</td>
	                                                <td>
	                                                	<select class="form-control">
				                                            <option>선택</option>
			                                                <option value="">작성자</option>
			                                                <option value="">책임자</option>
			                                                <option value="">기획명</option>
				                                        </select>
			                                        </td>
			                                        
			                                        <td></td>
			                                        <td>
	                                                	<input type="text" class="form-control">
                                                	</td>
                                                	
                                                	<td>
	                                                	<a href="#">&nbsp;<i class="fas fa-search"></i></a>
	                                                </td>
	                                                
	                                                <td>기간</td>
	                                                <td>
		                                                <div class="form-group mb-0">
                                                            <div>
                                                                <div class="input-daterange input-group" data-provide="datepicker">
                                                                    <input type="text" class="form-control" name="start" />
                                                                    <div class="input-group-append">
                                                                        <span class="input-group-text bg-primary text-white b-0">to</span>
                                                                    </div>
                                                                    <input type="text" class="form-control" name="end" />
                                                                </div>
                                                            </div>
                                                        </div>
	                                                </td>
                                                </tr>
	                                        </table>
                                       	 
	                                        <hr>
                                     			<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
				                                        <div class="table-responsive">
				                                            <table class="table mb-0">
				                                                <thead class="thead-light">
				                                                    <tr>
				                                                    	<th>No</th>
				                                                    	<th>기획명</th>
				                                                    	<th>지획제안자</th>
				                                                    	<th>책임자</th>
				                                                    	<th>기획등록일</th>
				                                                    	<th>시작예정일</th>
				                                                    	<th>종료예정일</th>
				                                                    	<th>기획상태</th>
				                                                    	<th>기획목표</th>
				                                                    	<th>상세 기획안 파일</th>
						                                            </tr>
				                                                </thead>
				                                                <tbody>
				                                                    <tr>
				                                                    <!-- 내용 -->
				                                                    	<td>1</td>
				                                                    	<td>팀플젝Werp</td>
				                                                    	<td>ㅡㅡ</td>
				                                                    	<td>ㅡㅡ</td>
				                                                    	<td>ㅡㅡ</td>
				                                                    	<td>ㅡㅡ</td>
				                                                    	<td>ㅡㅡ</td>
				                                                    	<td>ㅡㅡ</td>
				                                                    	<td>ㅡㅡ</td>
				                                                    	<td>파일로보기보기</td>
				                                                    </tr>
				                                                </tbody>
				                                            </table>
				                                        </div>
				                                     </div>
				                                   </div>
				                                   </div>
			                           	 	 </form>
                                         </div>
                                      </div>
                                  </div>
                               </div>
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

        <%@ include file="setting2.jsp" %>
        
    </body>
</html>