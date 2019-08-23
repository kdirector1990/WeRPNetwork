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
                                            	<th>전산설비코드</th>
                                            	<th>계정코드</th>
                                                <th>설비명</th>
                                                <th>보유구분</th>
                                                <th>구입일</th>
                                                <th>사용부서</th>
                                                <th>위치</th>
                                                <th>매입가</th>
                                                <th>예상내용연수</th>
                                                <th>감가상각여부</th>
                                                <th>감가상각법</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                            	<td><input type="checkbox" name="CT_code" value="CT002" class="box"></td>
                                            	<td>CT001
                                            	<td>계정코드</td>
                                            	<td>CES</td>
                                                <td>보유</td>
                                                <td>2017/04/13</td>
                                                <td>전산</td>
                                                <td>창원공장</td>
                                                <td>8,000,000</td>
                                                <td>2100</td>
                                                <td>N</td>
                                                <td></td>
                                            </tr>
                                            
                                            <tr>
                                            	<td><input type="checkbox" name="CT_code" value="CT002" class="box"></td>
                                            	<td>CT002</td>
                                            	<td>계정코드</td>
                                            	<td>COT</td>
                                                <td>대여</td>
                                                <td>2017/04/17</td>
                                                <td>인사</td>
                                                <td>본사</td>
                                                <td>2,000,000</td>
                                                <td>1200</td>
                                                <td>Y</td>
                                                <td>유형자산</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        
                                        <div class="result">
                                        <br>
                                        <table id="datatable2" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
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
   	   	if($('input:checkbox[name="CT_code"]').is(":checked") == true){
   	   		var rowDate = new Array();
   	   		var tdArr = new Array();
   	   		var checkbox = $('input[name="CT_code"]:checked');
	   		checkbox.each(function(i){
	   			var tr = checkbox.parent().parent().eq(i);
	   			var td = tr.children();
	   			
	   			rowDate.push(tr.text());
	   			var CT_type = td.eq(1).text();
	   			var CT_name = td.eq(3).text();
	   			
	   			tdArr.push(CT_type);
	   			tdArr.push(CT_name);
	   			
	   			$('.result').show();
	   			$('#datatable2 > tbody:last').append('<tr><td>폐기코드</td><td>'+tdArr[0]+'</td><td>'+tdArr[1]+'</td><td><input type="date" name="trashDate" autofocus></td><td><input type="text" name="trashLocation"></td><td><input type="text" name="trashContent" size="50"></td</tr>');
	   		})
	   		
	    	/* $('input[name="CT_code"]:checkbox:checked').each(function(){items.push($(this).val());});
	    	var tmp = items.join(',');
	    	$('.result').show();
	    	alert(tmp) 
	    	$('#datatable2 > tbody:last').append('<tr><td></td><td>'+tmp+'</td></tr>');*/
	    } 
	    else{
	    	alert("폐기할 목록을 선택해주세요.")
	    }
  	 });
    
    
    	    
    </script>
    </body>
</html>