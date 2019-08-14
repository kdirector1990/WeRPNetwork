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
                                    <h4 class="page-title">자금현황</h4>
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
                                                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
                                                    <span class="d-block d-sm-none"><i class="fa fa-home"></i></span>
                                                    <span class="d-none d-sm-block">총괄거래현황</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">        
                                                    <span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
                                                    <span class="d-none d-sm-block">어음현황</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="message-tab" data-toggle="tab" href="#message" role="tab" aria-controls="message" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
                                                    <span class="d-none d-sm-block">자금집행실적</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="setting-tab" data-toggle="tab" href="#setting" role="tab" aria-controls="setting" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-cog"></i></span>
                                                    <span class="d-none d-sm-block">일일자금계획</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                        	<!-- 총괄거래현황 -->
                                           	<div class="tab-pane" id="home" role="tabpanel" aria-labelledby="home-tab">
                                     			<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                   		<form>
					                                    	<div class="form-group mb-3">
						    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
						                                            <tr>
						                                            	<td>회계단위</td>
						                                                <td>
						                                                	<select class="form-control select2">
									                                            <option>선택</option>
									                                                <option value="">본사</option>
									                                        </select>
								                                        </td>
								                                        
								                                        <td>
						                                                	&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
						                                                </td>
						                                                
						                                                <td>기간</td>
						                                                <td>
						                                               	 	<input type="text" id="reportrange" class="form-control"/>
						                                                </td>
						                                                
						                                                <td>&nbsp;계정구분</td>
						                                                <td>
						                                                	<select class="form-control select2">
									                                            <option>선택</option>
									                                                <option value="">0.계정별</option>
									                                                <option value="">1.세목별</option>
									                                        </select>
						                                                </td>
				                                                	</tr>
				                                                	
					                                                <tr>
					                                                	<td>자금계정</td>
						                                                <td>
						                                                	<select class="form-control select2">
									                                            <option></option>
									                                                <option value=""></option>
									                                        </select>
								                                        </td>
								                                        
								                                        <td>
						                                                	&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
						                                                </td>
						                                                <td><input type="checkbox"></td>
						                                                <td>&nbsp; <p>현금 계정 거래처별 분할조회</p></td>
					                                                </tr>
						                                        </table>
					                                        </div>
					                                        </form>
				                                                <hr>
				    
				                                        <div class="table-responsive">
				                                            <table class="table mb-0">
				                                                <thead class="thead-light">
				                                                    <tr>
						                                                <th>NO</th>
						                                                <th>구분</th>
						                                                <th>계좌번호</th>
						                                                <th>거래처</th>
						                                                <th>전일말잔액</th>
						                                                <th>차월한도</th>
						                                                <th>전일말가용</th>
						                                                <th>금일입금</th>
						                                                <th>금일출금</th>
						                                                <th>당일말자금</th>
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
                                          <!-- 총괄거래현황 끝 -->
                                          
                                          <!-- 어음현황 -->
                                            <div class="tab-pane show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                            	<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
				                                        		<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
						                                             <tr>
						                                             	   <td>회계단위</td>
						                                                <td>
						                                                	<select class="form-control select2">
									                                            <option>선택</option>
									                                                <option value="">본사</option>
									                                        </select>
								                                        </td>
								                                        
								                                        <td>
						                                                	&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
						                                                </td>
						                                                
						                                                <td>기간</td>
						                                                <td>
						                                               		 <input type="text" id="reportrange" class="form-control"/>
						                                                </td>
						                                            </tr>
						                                        </table>
		                                       	 <hr>
                                                <div class="col-lg-6">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div class="table-responsive">
					                                            <table class="table mb-0">
					                                                <thead class="thead-light">
					                                                    <tr>
							                                                <th>지급어음 </th>
							                                                <th>금액</th>
							                                            </tr>
							                                            
							                                            <tr>
							                                                <th>전일잔액 </th>
							                                                <th></th>
							                                            </tr>
							                                            
					                                                </thead>
					                                                <tbody>
					                                                    <tr>
					                                                    	<td>..</td>
					                                                    	<td>..</td>
					                                                    </tr>
					                                                </tbody>
					                                                	<tr>
					                                                		<td>금일잔액</td>
					                                                		<td>0</td>
					                                                	</tr>
					                                            </table>
					                                        </div>
					                                    </div>
					                                </div>
					                            </div>
					                            
					                            <div class="col-lg-6">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div class="table-responsive">
					                                            <table class="table mb-0">
					                                                <thead class="thead-light">
					                                                    <tr>
							                                                <th>받을어음 </th>
							                                                <th>금액</th>
							                                            </tr>
							                                            
							                                            <tr>
							                                                <th>전일잔액 </th>
							                                                <th></th>
							                                            </tr>
							                                            
					                                                </thead>
					                                                <tbody>
					                                                    <tr>
					                                                    	<td>..</td>
					                                                    	<td>..</td>
					                                                    	
					                                                    </tr>
					                                                </tbody>
					                                                	<tr>
					                                                		<td>금일잔액</td>
					                                                		<td>0</td>
					                                                	</tr>
					                                            </table>
					                                        </div>
					                                    </div>
					                                </div>
					                            </div><!-- col-lg-6 끝 -->
					                            </div>
					                            </div>
					                            </div>
                                            </div>
                                             <!-- 어음현황 끝 -->
                                            
                                            <!-- 자금집행실적 -->
                                            <div class="tab-pane" id="message" role="tabpanel" aria-labelledby="message-tab">
                                                <div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                    	<form>
					                                    	<div class="form-group mb-3">
						    										<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
						                                             <tr>
						                                                <td>회계단위</td>
						                                                <td>
						                                                	<select class="form-control select2">
									                                            <option>선택</option>
									                                                <option value="">본사</option>
									                                        </select>
								                                        </td>
								                                        
								                                        <td>
						                                                	&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
						                                                </td>
						                                                
						                                                <td>기간</td>
						                                                <td>
						                                               		 <input type="text" class="form-control">
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
						                                                <th>적요</th>
						                                                <th>금액</th>
						                                                <th>거래처명</th>
						                                                <th>비고</th>
						                                            </tr>
						                                            
				                                                </thead>
				                                                <tbody>
				                                                    <tr>
					                                                    <td>ㅇㅇ</td>
					                                                    <td>100</td>
					                                                    <td>권순용집</td>
					                                                    <td>권순용</td>
				                                                    </tr>
				                                                </tbody>
				                                            </table>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
                                          </div> <!-- 자금집행실적 끝 -->
                                          
                                          <!-- 일일자금계획 -->
                                           <div class="tab-pane" id="setting" role="tabpanel" aria-labelledby="setting-tab">
                                               <table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
		                                             <tr>
		                                                <td>회계단위</td>
		                                                <td>
		                                                	<select class="form-control select2">
					                                            <option>선택</option>
					                                                <option value="">본사</option>
					                                        </select>
				                                        </td>
				                                        
				                                        <td>
		                                                	&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
		                                                </td>
		                                                
		                                                <td>기간</td>
		                                                <td>
		                                               		 <input type="text" class="form-control">
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
							                                             	<th colspan="7">수입예정</th>
							                                             </tr>
							                                                    
					                                                    <tr>
							                                                <th>일자 </th>
							                                                <th>자금과목</th>
							                                                <th>거래처</th>
							                                                <th>계좌번호</th>
							                                                <th>금융기관</th>
							                                                <th>적요</th>
							                                                <th>금액</th>
							                                            </tr>
							                                            
					                                                </thead>
					                                                <tbody>
					                                                    <tr>
					                                                    	<td>순용</td>
					                                                   	 	<td>보민</td>
					                                                    	<td>준선</td>
					                                                    	<td>선우</td>
					                                                    	<td>지원</td>
					                                                   	 	<td>진태</td>
					                                                    	<td>성미</td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    	<td colspan="6">수입예정계</td>
					                                                    	<td>0</td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    	<td colspan="6">전이월시재</td>
					                                                    	<td>0</td>
					                                                    </tr>
					                                                </tbody>
					                                            </table>
					                                        </div>
					                                    </div>
					                                </div>
					                              </div>
					                              
					                              <div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div class="table-responsive">
					                                            <table class="table mb-0">
					                                                <thead class="thead-light">
					                                                    <tr>
							                                             	<th colspan="7">지출예정</th>
							                                             </tr>
							                                                    
					                                                    <tr>
							                                                <th>일자 </th>
							                                                <th>자금과목</th>
							                                                <th>거래처</th>
							                                                <th>계좌번호</th>
							                                                <th>금융기관</th>
							                                                <th>적요</th>
							                                                <th>금액</th>
							                                            </tr>
							                                            
					                                                </thead>
					                                                <tbody>
					                                                    <tr>
					                                                    	<td>순용</td>
					                                                   	 	<td>보민</td>
					                                                    	<td>준선</td>
					                                                    	<td>선우</td>
					                                                    	<td>지원</td>
					                                                   	 	<td>진태</td>
					                                                    	<td>성미</td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    	<td colspan="6">지출예정계</td>
					                                                    	<td>0</td>
					                                                    </tr>
					                                                    
					                                                    <tr>
					                                                    	<td colspan="6">당일말예정잔액</td>
					                                                    	<td>0</td>
					                                                    </tr>
					                                                </tbody>
					                                            </table>
					                                        </div>
					                                    </div>
					                                </div>
					                              </div>
	                                            </div><!-- 일일자금계획 끝 -->  
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