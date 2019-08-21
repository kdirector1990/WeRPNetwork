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
                                    <h4 class="page-title">전산 설비 관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">전산 설비 폐기</h4>
                                        <div align="right">
    									<button type="button" class="btn btn-outline-dark waves-effect waves-light">수정</button>
    									<button type="button" id="btnTCT" class="btn btn-outline-dark waves-effect waves-light">폐기</button>
    									<br>
    									</div>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>선택</th>
                                            	<th>장비코드</th>
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
                                            	<td><input type="checkbox" name="CT_code" value="CT001" class="box"></td>
                                            	<td><input type="text" value="CT001">CT001</td>
                                                <td>제조기계</td>
                                                <td>CES</td>
                                                <td>(주)쌍화탕</td>
                                                <td>18,000,000</td>
                                                <td>2017/04/13</td>
                                                <td>00/13일</td>
                                                <td>N</td>
                                            </tr>
                                            
                                            <tr>
                                            	<td><input type="checkbox" name="CT_code" value="CT002" class="box"></td>
                                            	<td>CT002</td>
                                                <td>제조기계</td>
                                                <td>EOQ</td>
                                                <td>(주)녹차</td>
                                                <td>3,000,000</td>
                                                <td>2017/04/13</td>
                                                <td>00/13일</td>
                                                <td>Y</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        
                                        <div class="result">
                                        <br>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>폐기코드</th>
                                                <th>장비코드</th>
												<th>장비명</th>
                                                <th>폐기일자</th>
                                                <th>폐기처</th>
                                                <th>폐기원인</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                            	<td>CT_001</td>
                                            	<td>CT001</td>
                                            	<td>CES</td>
                                                <td>19/05/21</td>
                                                <td>에르망디센터2차</td>
                                                <td>오작동 및 잦은 불량 수리불가</td>
                                            </tr>
                                            
                                            <tr>
                                            	<td>CT_002</td>
                                            	<td>CT002</td>
                                            	<td>EOQ</td>
                                                <td>19/07/11</td>
                                                <td>에르망디센터2차</td>
                                                <td>부품 단종 및 신모델 교체</td>
                                            </tr>
                                            
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

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

    <%@ include file="../rightbar.jsp" %>
    <%@ include file="../setting2.jsp" %>
    <script type="text/javascript">
    
    var items = [];
    
    
    $('#btnTCT').click(function(){
    	alert("킬릭");
    	if($('input:checkbox[name="CT_code"]').is(":checked") == true){
    		alert("이건됨");
    		$('input[name="CT_code"]:checkbox:checked').each(function(){items.push($(this).val());});
    		var tmp = items.join(',');
    		alert(tmp)
    	} 
    	else{
    		alert("폐기할 목록을 선택해주세요.")
    	}
    });
    
    
    	    
    </script>
    </body>
</html>