<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Table datatable css -->
        <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
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
                                        <h4 class="header-title mb-3">Default Tabs</h4>
    
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-home"></i></span>
                                                    <span class="d-none d-sm-block">잔액</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">        
                                                    <span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
                                                    <span class="d-none d-sm-block">원장</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="message-tab" data-toggle="tab" href="#message" role="tab" aria-controls="message" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
                                                    <span class="d-none d-sm-block">총괄잔액</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="setting-tab" data-toggle="tab" href="#setting" role="tab" aria-controls="setting" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-cog"></i></span>
                                                    <span class="d-none d-sm-block">총괄내용</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                        	<!-- 잔액 -->
                                           	<div class="tab-pane" id="home" role="tabpanel" aria-labelledby="home-tab">
                                     			<div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div align="right">
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">원장조회</button>
					    										<br>
					    									</div>
					    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
					                                            <tr>
					                                                <td>회계단위</td>
					                                                <td>
					                                                <select class="form-control select2">
							                                            <option>전체선택</option>
							                                                <option value="">본점</option>
							                                        </select>
					                                                </td>
					                                                <td>계정과목조회구분</td>
					                                                <td>
						                                                <input type="radio">범위
						                                                <input type="radio">개별
					                                                </td>
					                                                
					                                                <td>출력기준</td>
					                                                <td>
					                                                <select class="form-control select2">
							                                            <option>선택</option>
							                                                <option value="">1. 발생기준</option>
							                                                <option value="">2. 잔액기준</option>
							                                        </select>
					                                                </td>
					                                            </tr>
					                                            
					                                            <tr>
					                                            
					                                            	<td>계정과목</td>
					                                            	<td>
					                                            	<select class="form-control select2">
							                                            <option>선택</option>
							                                                <option value="">계정별</option>
							                                                <option value="">세목별</option>
							                                        </select>
					                                            	</td>
					                                                <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                
					                                                <td>기표기간</td>
					                                                <td>../../.. ~ ../../..</td>
					                                            </tr>
					                                            
					                                            <tr>
					                                            	<td>거래처</td>
					                                            	<td>
						                                            	<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">거래처</option>
								                                                <option value="">거래처분류</option>
								                                        </select>
					                                            	</td>
					                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                            	
					                                            	<td> <<
					                                            		<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">-</option>
								                                                <option value="">-</option>
								                                        </select>
								                                        >>
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
						                                                <th>코드</th>
						                                                <th>거래처명</th>
						                                                <th>사업자번호</th>
						                                                <th>전기(월)이월</th>
						                                                <th>증가</th>
						                                                <th>감소</th>
						                                                <th>잔액</th>
						                                                <th>거래처분류코드</th>
						                                                <th>거래처분류명</th>
						                                                <th>국가코드</th>
						                                                <th>국가명</th>
						                                                <th>대표자성명</th>
						                                            </tr>
						                                            
				                                                </thead>
				                                                <tbody>
				                                                    <tr>
				                                                    <th scope="row">0001</th>
				                                                    <td>신안은행</td>
				                                                    <td>000000</td>
				                                                    <td>0101010</td>
				                                                    <td>21,600,000</td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td>21,000,000</td>
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
                                          
                                          <!-- 원장 -->
                                            <div class="tab-pane show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                                <div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div align="right">
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">원장조회</button>
					    									<br>
					    									</div>
						    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
						                                            <tr>
					                                                <td>회계단위</td>
					                                                <td>
					                                                <select class="form-control select2">
							                                            <option>전체선택</option>
							                                                <option value="">본점</option>
							                                        </select>
					                                                </td>
					                                                <td>계정과목조회구분</td>
					                                                <td>
						                                                <input type="radio">범위
						                                                <input type="radio">개별
					                                                </td>
					                                                
					                                                <td>기표기간</td>
					                                                <td>../../.. ~ ../../..</td>
					                                            </tr>
					                                            
					                                            <tr>
					                                            
					                                            	<td>계정과목</td>
					                                            	<td>
					                                            	<select class="form-control select2">
							                                            <option>선택</option>
							                                                <option value="">계정별</option>
							                                                <option value="">세목별</option>
							                                        </select>
					                                            	</td>
					                                                <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                
					                                                <td> <<
					                                            		<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">-</option>
								                                                <option value="">-</option>
								                                        </select>
								                                        >>
					                                            	</td>
					                                            </tr>
					                                            
					                                            <tr>
					                                            	<td>거래처</td>
					                                            	<td>
						                                            	<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">거래처</option>
								                                                <option value="">거래처분류</option>
								                                        </select>
					                                            	</td>
					                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                            	
					                                            	<td> <<
					                                            		<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">-</option>
								                                                <option value="">-</option>
								                                        </select>
								                                        >>
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
                                            
                                            <!-- 총괄잔액 -->
                                            <div class="tab-pane" id="message" role="tabpanel" aria-labelledby="message-tab">
                                                <div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div align="right">
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">원장조회</button>
					    										<br>
					    									</div>
					    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
					                                             <tr>
					                                                <td>회계단위</td>
					                                                <td>
					                                                <select class="form-control select2">
							                                            <option>전체선택</option>
							                                                <option value="">본점</option>
							                                        </select>
					                                                </td>
					                                                <td>계정과목조회구분</td>
					                                                <td>
						                                                <input type="radio">범위
						                                                <input type="radio">개별
					                                                </td>
					                                                
					                                                <td>출력기준</td>
					                                                <td>
					                                                <select class="form-control select2">
							                                            <option>선택</option>
							                                                <option value="">1. 발생기준</option>
							                                                <option value="">2. 잔액기준</option>
							                                        </select>
					                                                </td>
					                                            </tr>
					                                            
					                                            <tr>
					                                            
					                                            	<td>계정과목</td>
					                                            	<td>
					                                            	<select class="form-control select2">
							                                            <option>선택</option>
							                                                <option value="">계정별</option>
							                                                <option value="">세목별</option>
							                                        </select>
					                                            	</td>
					                                                <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                
					                                                <td>기표기간</td>
					                                                <td>../../.. ~ ../../..</td>
					                                            </tr>
					                                            
					                                            <tr>
					                                            	<td>거래처</td>
					                                            	<td>
						                                            	<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">거래처</option>
								                                                <option value="">거래처분류</option>
								                                        </select>
					                                            	</td>
					                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                            	
					                                            	<td> <<
					                                            		<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">-</option>
								                                                <option value="">-</option>
								                                        </select>
								                                        >>
					                                            	</td>
					                                            </tr>
					                                        </table>
				    
				                                        <div class="table-responsive">
				                                            <table class="table mb-0">
				                                                <thead class="thead-light">
				                                                    <tr>
						                                                <th>코드</th>
						                                                <th>계정과목</th>
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
				                                                    <tr>
				                                                    <td>10000</td>
				                                                    <td>외상금매출</td>
				                                                    <td>5,000,000</td>
				                                                    <td>88,000,000</td>
				                                                    <td></td>
				                                                    <td>93,000,000</td>
				                                                    <td>1000</td>
				                                                    <td>강남구</td>
				                                                    <td>권순용</td>
				                                                    </tr>
				                                                </tbody>
				                                            </table>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
                                            </div>
                                            
                                            <!-- 총괄내용 -->
                                            <div class="tab-pane" id="setting" role="tabpanel" aria-labelledby="setting-tab">
                                                <div class="col-sm-12">
					                                <div class="card">
					                                    <div class="card-body table-responsive">
					                                        <div align="right">
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">환경설정</button>
						    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">원장조회</button>
					    										<br>
					    									</div>
					    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
					                                            <tr>
					                                                <td>회계단위</td>
					                                                <td>
					                                                <select class="form-control select2">
							                                            <option>전체선택</option>
							                                                <option value="">본점</option>
							                                        </select>
					                                                </td>
					                                                <td>계정과목조회구분</td>
					                                                <td>
						                                                <input type="radio">범위
						                                                <input type="radio">개별
					                                                </td>
					                                                
					                                            </tr>
					                                            
					                                            <tr>
					                                            
					                                            	<td>계정과목</td>
					                                            	<td>
					                                            	<select class="form-control select2">
							                                            <option>선택</option>
							                                                <option value="">계정별</option>
							                                                <option value="">세목별</option>
							                                        </select>
					                                            	</td>
					                                                <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                	<input type="text" class="" readonly>
					                                                </td>
					                                                
					                                                <td>기표기간</td>
					                                                <td>../../.. ~ ../../..</td>
					                                            </tr>
					                                            
					                                            <tr>
					                                            	<td>거래처</td>
					                                            	<td>
						                                            	<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">거래처</option>
								                                                <option value="">거래처분류</option>
								                                        </select>
					                                            	</td>
					                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                                	
					                                               	<td>
					                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
					                                                </td>
					                                            	
					                                            	<td> <<
					                                            		<select class="form-control select2">
								                                            <option>선택</option>
								                                                <option value="">-</option>
								                                                <option value="">-</option>
								                                        </select>
								                                        >>
					                                            	</td>
					                                            </tr>
					                                        </table>
				    
				                                        <div class="table-responsive">
				                                            <table class="table mb-0">
				                                                <thead class="thead-light">
				                                                    <tr>
						                                                <th>날짜</th>
						                                                <th>코드</th>
						                                                <th>계정과목</th>
						                                                <th>적요</th>
						                                                <th>차변</th>
						                                                <th>대변</th>
						                                            </tr>
						                                            
				                                                </thead>
				                                                <tbody>
				                                                    <tr>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td></td>
				                                                    <td>[전원이월]</td>
				                                                    <td>21,600,000</td>
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

        <!-- Vendor js -->
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