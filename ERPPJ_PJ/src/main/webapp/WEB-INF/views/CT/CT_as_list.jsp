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
            <div class="content-page">
			<!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->           
            
                <!-- 페이지 내용 입력 공간 -->
            
                
                <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">A/S관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">A/S등록</h4>
                                        
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>수리의뢰코드</th>
                                                <th>장비관리번호</th>
                                                <th>장비명</th>
                                                <th>의뢰인</th>
                                                <th>의뢰일</th>
                                                <th>완료요구일</th>
                                                <th>고장내용</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                            	<td>CT_R004
                                                <td>CT004</td>
                                                <td>Geth</td>
                                                <td>10001</td>
                                                <td>2019/08/14</td>
                                                <td>2019/08/17</td>
                                                <td>블록체인 극혐</td>
                                            </tr>
                                           
                                            </tbody>
                                        </table>
                                          
                                          <br>
                                          
                                          <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>수리의뢰코드</th>
                                                <th>작업자</th>
                                                <th>접수일</th>
                                                <th>완료일</th>
                                                <th>작업내용</th>
                                                <th>수리구분코드</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <form action="" method="post">
                                            <tr>
                                            	<td>CT_R004</td>
                                                <td><input type="text" name="" size="10"></td>
                                                <td>2019년 07월 12일</td>
                                                <td><input type="date" name=""></td>
                                                <td><input type="text" name=""></td>
                                                <td>
                                                <select class="form-control select2">
		                                            <option>선택</option>
		                                                <option value="">내부수리(I)</option>
		                                                <option value="">외부수리(O)</option>
		                                                <option value="">수리불가(X)</option>
		                                        </select>
		                                        </td>
                                                
                                            </tr>
                                            </form>
                                            </tbody>
                                        </table>
                                        
                                        <div align="right">
	    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">등록</button>
	    									<br>
    									</div>
                                                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
                
               
               
               <!-- 페이지 내용 입력 공간 종료 -->
               
                <%@ include file="../footer.jsp" %>

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
    </body>
</html>