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
                                    <h4 class="page-title">수리일지 등록</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">수리의뢰</h4>
                                        <div align="right">
	    									<button type="button" class="btn btn-outline-dark waves-effect waves-light"><a href=CT_as_list>전산실 내부수리</a></button>
	    									<button type="button" class="btn btn-outline-dark waves-effect waves-light"><a href="CT_ComInsertForm">업체수리</a></button>
    									</div>
    									<br>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th><input type="checkbox" id="all_check"></th>
                                            	<th>수리의뢰코드</th>
                                                <th>장비관리번호</th>
                                                <th>장비구분</th>
                                                <th>장비명</th>
                                                <th>의뢰인</th>
                                                <th>의뢰일</th>
                                                <th>완료요구일</th>
                                                <th>고장내용</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                            	<td><input type="checkbox" class="r_box"></td>
                                            	<td>CT_R003
                                                <td>CT003</td>
                                                <td>제조기계</td>
                                                <td>CARD</td>
                                                <td>10003</td>
                                                <td>2019/08/14</td>
                                                <td>2019/08/17</td>
                                                <td>맛동산이 양이 너무 적네요.</td>
                                            </tr>
                                            
                                             <tr>
                                             	<td><input type="checkbox" class="r_box"></td>
                                            	<td>CT_R004</td>
                                                <td>CT004</td>
                                                <td>사무용품</td>
                                                <td>Geth</td>
                                                <td>10001</td>
                                                <td>2019/08/14</td>
                                                <td>2019/08/17</td>
                                                <td>블록체인 극혐</td>
                                            </tr>
                                           
                                            </tbody>
                                        </table>
                                                                                
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
        <script type="text/javascript">
		   $(function(){
			$("#all_check").change(function(){
				var is_check = $(this).is(":checked"); //this는 전체 선택용 체크박스
					$(".r_box").prop("checked", is_check);
				});
			});
    	</script>
    </body>
</html>