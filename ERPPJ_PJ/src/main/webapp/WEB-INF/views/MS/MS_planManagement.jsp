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
                                    <div class="card-body">
                                    
                                        <h4 class="header-title">기획서 관리</h4>
                                        
    									<hr>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
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
                                           	<c:forEach var="list" items="${dto}">
	                                            <tr>
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
                                        <form id="updatePlan">
                                        	<input type = 'hidden' name = "${_csrf.parameterName }" value ="${_csrf.token }">
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
                                        <div align="right">
	    									<button type="button" id="btnRe" class="btn btn-outline-dark waves-effect waves-light" onclick="updatePlan();">수정</button>
	    									<button type="button" id="btnDel" class="btn btn-outline-dark waves-effect waves-light" onclick="deletePlan();">폐기</button>
    									</div>
                                        </form>
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
     $("#datatable tr").click(function(){
    	 
			if($(".plantr") != null){
				$(".plantr").remove();
			}
			
			var tdArr = new Array();	// 배열 선언
			
			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();
			
			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i){
				tdArr.push(td.eq(i).text());
			});
			
			// td.eq(index)를 통해 값을 가져올 수도 있다.
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
				'<tr class="plantr">'+'<input type = "hidden" name = "plan_code" value = "'+tdArr[0]+'">'+'<td>' +tdArr[0] +'</td>'+
					'<td><input type="text" name="plan_name" value="' +tdArr[1]+'"></td>' +
					'<td><input type="text" name="username" value="' +tdArr[2]+'"</td>' +
					'<td><input type="text" name="position_code" value="'+tdArr[3]+'"></td>' +
					'<td><input type="text" name="plan_regdate" readonly value="' + tdArr[4] +'"></td>' +
					'<td><input type="text" name = "plan_startdate" data-provide="datepicker" data-date-autoclose="true" value="'  + tdArr[5] +'"></td>' +
                    '<td><input type="text" name="plan_enddate" data-provide="datepicker" data-date-autoclose="true" value="' + tdArr[6] +'"></td>' +
                    '<td><input type="text" name="plan_state" value="' + tdArr[7] +'"></td>' +
                    '<td><input type="text" name="plan_objective" value="' + tdArr[8]+'"></td>' +
                    '<td><input type="text" name="plan_proposal" value="' + tdArr[9]+'"></td>' +
           		'</tr>');
   			
		});
     
     function updatePlan(){
		 var param = $("#updatePlan").serializeArray();
		 alert(JSON.stringify(param));
		$.ajax({
			url: '/erp/MS_updatePlanPro',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(param){
				alert("기획서 수정 성공.");
				location.reload();
			},
			error : function(){
				alert("수정에 실패하였습니다.");
			}
			
		});
	}
     
     function deletePlan(){
		 var param = $("#updatePlan").serializeArray();
		 alert(JSON.stringify(param));
		$.ajax({
			url: '/erp/MS_deletePlanPro',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(param){
				alert("기획서 삭제 성공하였습니다.");
				location.reload();
			},
			error : function(){
				alert("기획서 삭제에 실패하였습니다.");
			}
			
		});
	}
    </script>
    </body>
</html>