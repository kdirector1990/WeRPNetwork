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
            
            <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">전산설비 등록</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">등록폼</h4>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>장비구분</th>
                                                <th>장비명</th>
                                                <th>제작사</th>
                                                <th>가격</th>
                                                <th>구입일자</th>
                                                <th>정기검정일자</th>
                                                <th>장비대여 여부</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                           
                                            <tr>
                                                <td>제조기계</td>
                                                <td>CMD</td>
                                                <td>(주)누룽지</td>
                                                <td>18,000,000</td>
                                                <td>2019/04/13</td>
                                                <td>00/13일</td>
                                                <td>N</td>
                                            </tr>
                                            
                                            <tr>
                                                <td>제조기계</td>
                                                <td>ERP</td>
                                                <td>(주)둥글레</td>
                                                <td>3,000,000</td>
                                                <td>--</td>
                                                <td>00/13일</td>
                                                <td>Y</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        
                                        <div class="page-title-box">
                                    		<h4 class="page-title">대여장비</h4>
                                		</div>
                                        
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>대여장비명</th>
                                                <th>대여업체</th>
                                                <th>대여비용</th>
                                                <th>수량</th>
                                                <th>대여일자</th>
                                                <th>정기검정일자</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                            	<td>ERP</td>
                                                <td>(주)동서식품</td>
                                                <td>1,200,000</td>
                                                <td>3</td>
                                                <td>19/08/16</td>
                                                <td>00/16일</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
          
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