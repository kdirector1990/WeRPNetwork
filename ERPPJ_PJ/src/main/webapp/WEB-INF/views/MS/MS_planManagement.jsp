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
                                    <h4 class="page-title">경영지원</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                    <form action="MS_updatePlan">
                                        <h4 class="header-title">기획서 관리</h4>
                                        <div align="right">
    									<button type="button" id="btnTCT" class="btn btn-outline-dark waves-effect waves-light">수정</button>
    									<button type="button"  class="btn btn-outline-dark waves-effect waves-light">폐기</button>
    									<br>
    									</div>
    									<hr>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>선택</th>
                                            	<th>기획서 코드</th>
                                            	<th>기획명</th>
                                                <th>기획제안자</th>
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
                                           	<c:forEach var="list" items="${dto}">
	                                            <tr>
	                                            	<td><input type="checkbox" name="plan_code" value="CT001" class="box"></td>
	                                            	<td>${list.plan_code}</td>
	                                            	<td>${list.plan_name}</td>
	                                            	<td>${list.username}</td>
	                                                <td>${list.position_code}</td>
	                                                <td>${list.plan_regdate}</td>
	                                                <td>${list.plan_startdate}</td>
	                                                <td>${list.plan_enddate}</td>
	                                                <td>${list.plan_objective}</td>
	                                                <td>${list.plan_state}</td>
	                                                <td>${list.plan_proposal}</td>
	                                            </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        
                                        <div class="result">
                                        <br>
                                        <table id="datatable2" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0;">
                                            <thead>
                                            <tr>
                                            	<th>기획서 코드</th>
                                            	<th>기획명</th>
                                                <th>기획제안자</th>
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
                                            </tbody>
                                        </table>
                                        </div>
                                    </form>
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
   	   	if($('input:checkbox[name="plan_code"]').is(":checked") == true){
   	   		var rowDate = new Array();
   	   		var tdArr = new Array();
   	   		var checkbox = $('input[name="plan_code"]:checked');
	   		checkbox.each(function(i){
	   			var tr = checkbox.parent().parent().eq(i);
	   			var td = tr.children();
	   			
	   			rowDate.push(tr.text());
	   			
	   			var plan_code = td.eq(1).text();
	   			var plan_name = td.eq(2).text();
	   			var username = td.eq(3).text();
	   			var position_code = td.eq(4).text();
	   			var plan_regdate = td.eq(5).text();
	   			var plan_startdate = td.eq(6).text();
	   			var plan_enddate = td.eq(7).text();
	   			var plan_state = td.eq(8).text();
	   			var plan_objective = td.eq(9).text();
	   			var plan_proposal = td.eq(10).text();
	   			
	   			tdArr.push(plan_code);
	   			tdArr.push(plan_name);
	   			tdArr.push(username);
	   			tdArr.push(position_code);
	   			tdArr.push(plan_regdate);
	   			tdArr.push(plan_startdate);
	   			tdArr.push(plan_enddate);
	   			tdArr.push(plan_state);
	   			tdArr.push(plan_objective);
	   			tdArr.push(plan_proposal);
	   			
	   			$('.result').show();
	   			
	   			$('#datatable2 > tbody:last').append(
   					'<tr><td>' +tdArr[0] +'</td>'+
	   					'<td><input type="text" name="plan_name" value="' +tdArr[1]+'"></td>' +
	   					'<td><input type="text" name="username" value="' +tdArr[2]+'"</td>' +
	   					'<td><input type="text" "position_code" value="'+tdArr[3]+'"></td>' +
	   					 '<td>' + tdArr[4] +'</td>' +
	   					'<td><input type="date" name = "plan_startdate" value="'  + tdArr[5] +'"></td>' +
                        '<td><input type="date" name="plan_enddate" value="' + tdArr[6] +'"></td>' +
                        '<td><input type="text" name="plan_state" value="' + tdArr[7] +'"></td>' +
                        '<td><input type="text" name="plan_objective" value="' + tdArr[8]+'"></td>' +
                        '<td><select name="plan_proposal">' +
                        	'<option value="' + tdArr[9] +'">'+ tdArr[9] +
                        	'<option value="1">Y</option>' +
                   			'<option value="2">N</option>' +
                   		'</select>' + 
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