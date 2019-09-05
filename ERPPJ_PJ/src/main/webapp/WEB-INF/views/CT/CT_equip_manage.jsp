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
                                        <h4 class="header-title">전산 설비 관리</h4>
                                        <div align="right">
    									<button type="button" id="btnTCT" class="btn btn-outline-dark waves-effect waves-light">수정</button>
    									<button type="button"  class="btn btn-outline-dark waves-effect waves-light">폐기</button>
    									<br>
    									</div>
    									<hr>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
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
                                            	<td>CT001</td>
                                            	<td>계정코드</td>
                                            	<td>CES</td>
                                                <td>보유</td>
                                                <td>2017-04-13</td>
                                                <td>전산</td>
                                                <td>창원공장</td>
                                                <td>8000000</td>
                                                <td>2100</td>
                                                <td>N</td>
                                                <td></td>
                                            </tr>
                                            
                                            <tr>
                                            	<td>CT002</td>
                                            	<td>계정코드</td>
                                            	<td>COT</td>
                                                <td>대여</td>
                                                <td>2017-04-17</td>
                                                <td>인사</td>
                                                <td>본사</td>
                                                <td>2000000</td>
                                                <td>1200</td>
                                                <td>Y</td>
                                                <td>유형자산</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        
                                        <div class="result">
                                        <br>
                                        <table id="datatable2" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
		                                        <col style = "width:12%">
	                                            <col style = "width:13%;">
	                                            <col style = "width:7%">
	                                            <col style = "width:7%;">
	                                            <col style = "width:8%;">
	                                            <col style = "width:11%;">
	                                            <col style = "width:9%;">
	                                            <col style = "width:13%;">
	                                            <col style = "width:10%;">
	                                            <col style = "width:10%;">
                                            <thead>
                                            <tr>
                                            	<th>설비코드</th>
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
   	   		var rowDate = new Array();
   	   		var tdArr = new Array();
   	   		var checkbox = $('input[name="CT_code"]:checked');
	   		checkbox.each(function(i){
	   			var tr = checkbox.parent().parent().eq(i);
	   			var td = tr.children();
	   			
	   			rowDate.push(tr.text());
	   			
	   			var CT_code = td.eq(1).text();
	   			var ceq_code = td.eq(2).text();
	   			var ceq_name = td.eq(3).text();
	   			var ceq_type = td.eq(4).text();
	   			var date = td.eq(5).text();
	   			var ceq_deparment_code = td.eq(6).text();
	   			var ceq_location = td.eq(7).text();
	   			var ceq_prime_cost = td.eq(8).text();
	   			var ceq_durable = td.eq(9).text();
	   			var ceq_depreciation = td.eq(10).text();
	   			var ceq_depreciation_type = td.eq(11).text();
	   			
	   			var yyyy = date.substr(0, 4);
	   			var mm = date.substr(5, 2);
	   			var dd = date.substr(8, 2);
	   			var ceq_date = new Date(yyyy, mm-1, dd);
	   			
	   			tdArr.push(CT_code);
	   			tdArr.push(ceq_code);
	   			tdArr.push(ceq_name);
	   			tdArr.push(ceq_type);
	   			tdArr.push(date);
	   			tdArr.push(ceq_deparment_code);
	   			tdArr.push(ceq_location);
	   			tdArr.push(ceq_prime_cost);
	   			tdArr.push(ceq_durable);
	   			tdArr.push(ceq_depreciation);
	   			tdArr.push(ceq_depreciation_type);
	   			
	   			$('.result').show();
	   			
	   			$('#datatable2 > tbody:last').append(
	   					'<tr><td>' +tdArr[0] +'</td>'+
	   					'<td><input type="text" name="ceq_code" value="' +tdArr[1]+'"></td>' +
	   					'<td><input type="text" name="ceq_name" value="' +tdArr[2]+'"</td>' +
	   					'<td><select name = "ceq_type">' +
		   					'<option value="' +tdArr[3]+'" checked>'+tdArr[3]+
		   					'<option value="1">보유'+
		   					'<option value="2">대여'+
	   					'</select></td>' +
	   					 '<td><input type="date" name = "ceq_acquire_date" value="'+tdArr[4]+'"></td>' +
	   					'<td><select name = "ceq_deparment_code">' +
	   						'<option value="'+ tdArr[5] +'">'+ tdArr[5] +
		   					'<option value="1">인사</option>' +
	                        '<option value="2">영업</option>' +
	                        '<option value="3">재무</option>' +
	                        '<option value="4">전산</option>' +
	                        '<option value="5">제조</option>' +
                        '</select></td>' +
                        '<td><input type="text" name="ceq_location" value="' + tdArr[6] +'"></td>' +
                        '<td><input type="number" name="ceq_prime_cost" value="' + tdArr[7] +'"></td>' +
                        '<td><input type="number" name="ceq_durable" value="' + tdArr[8]+'"></td>' +
                        '<td><select name="ceq_depreciation">' +
                        	'<option value="' + tdArr[9] +'">'+ tdArr[9] +
                        	'<option value="1">Y</option>' +
                   			'<option value="2">N</option>' +
                   		'</select>' +
                   		'<td><input type="text" name = "ceq_depreciation_type" value="'+ tdArr[10] + '"></td>' + 
                   		'</tr>'); 
	   		});
	   		
	    	/* $('input[name="CT_code"]:checkbox:checked').each(function(){items.push($(this).val());});
	    	var tmp = items.join(',');
	    	$('.result').show();
	    	alert(tmp) 
	    	$('#datatable2 > tbody:last').append('<tr><td></td><td>'+tmp+'</td></tr>');*/
	    } 
	    else{
	    	alert("수정할 목록을 선택해주세요.")
	    }
  	 });
    
    
    	    
    </script>
    </body>
</html>