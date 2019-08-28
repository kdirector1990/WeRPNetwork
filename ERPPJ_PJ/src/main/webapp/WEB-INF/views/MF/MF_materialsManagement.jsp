<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	.result{
		display: none;
	}
</style>
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
                                    <h4 class="page-title">자재관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">자재관리</h4>
                                        <div align="right">
    									<button type="button" id="btnTCT" class="btn btn-outline-primary waves-effect waves-light">수정</button>
    									<button type="button"  class="btn btn-outline-primary waves-effect waves-light">삭제</button>
    									<br>
    									</div>
    									<hr>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>선택</th>
                                            	<th>자재관리코드</th>
                                            	<th>계정코드</th>
                                                <th>자재명</th>
                                                <th>단위</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                            	<td><input type="checkbox" name="CT_code" value="CT001" class="box"></td>
                                            	<td>0000</td>
                                            	<td>MF1111</td>
                                            	<td>자재</td>
                                                <td>?원?</td>
                                            </tr>
                                            
                                            <tr>
                                            	<td><input type="checkbox" name="CT_code" value="CT002" class="box"></td>
                                            	<td>0000</td>
                                            	<td>MF1111</td>
                                            	<td>자재</td>
                                                <td>?원?</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        
                                        <div class="result">
                                        <br>
                                        <table id="datatable2" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>선택</th>
                                            	<th>자재관리코드</th>
                                            	<th>계정코드</th>
                                                <th>자재명</th>
                                                <th>단위</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            
                                            
                                            </tbody>
                                        </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
          
                <%@ include file="../footer.jsp" %>


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

    <%@ include file="../rightbar.jsp" %>
    <%@ include file="../setting2.jsp" %>
    
    <!-- Datatable plugin js -->
    <script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
    <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>
        
    <script type="text/javascript">
    
    var items = [];
    
    
    $('#btnTCT').click(function(){
   	   	if($('input:checkbox[name="CT_code"]').is(":checked") == true){
   	   		/*  */
	    } 
	    else{
	    	alert("수정할 목록을 선택해주세요.")
	    }
  	 });
    
    
    	    
    </script>
    </body>
</html>