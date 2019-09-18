<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	.result{
		display: none;
	}
</style>

<script type="text/javascript">
        function updatePlan(){
    		var param = $("#datatable2").serializeArray();
    		alert(JSON.stringify(param));
    		$.ajax({
    			url: '/erp/MS_updatePlanPro',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(param){
    				alert("수정되었습니다.");
    				location.reload();
    			},
    			error : function(){
    				alert("수정에 실패하였습니다.");
    			}
    		});
    	}
        
        function deletePlan(){
    		var param = $("#datatable2").serializeArray();
    		alert(JSON.stringify(param));
    		$.ajax({
    			url: '/erp/MS_deletePlanPro',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(param){
    				alert("삭제되었습니다.");
    				location.reload();
    			},
    			error : function(){
    				alert("삭제 실패하였습니다.");
    			}
    		});
    	}
    </script>
    
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
                                    
                                        <h4 class="header-title">기획서</h4>
                                        <p class="sub-header">관리</p>
    									<hr>
                                        <table id="datatable" class="table m-0 table-bordered table-hover" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead class="bg-primary text-white">
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
	                                                <td>${list.plan_startdate}<%-- <fmt:formatDate value="${list.plan_startdate}" type ="both" pattern="yyyy/MM/dd"/> --%></td>
	                                                <td>${list.plan_enddate}<%-- <fmt:formatDate value="${list.plan_enddate}" type ="both" pattern="yyyy/MM/dd"/> --%></td>
	                                                <td>${list.plan_state}</td>
	                                                <td>${list.plan_objective}</td>
	                                                <td>${list.plan_proposal}</td>
	                                            </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        
                                        <div class="result">
	                                        <br>
											<form id="updatePlan">
												<input type='hidden' name="${_csrf.parameterName }"
													value="${_csrf.token }">
												<table id="datatable2"
													class="table table-striped dt-responsive nowrap"
													style="border-collapse: collapse; border-spacing: 0;">
													<thead>
													</thead>
													
													<tbody>
													</tbody>
												</table>
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
     $("#datatable tbody tr").click(function(){
    	 
			if($(".plandiv") != null){
				$(".plandiv").remove();
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
   			
   			$('#datatable2 > tbody:last').append('<div class="plandiv" id="test123">'+'<input type="hidden" name="plan_code" value="'+tdArr[0]+'"><div class="form-group row">'
	  					+ '<label class="col-md-2 col-form-label" for="example-email" >기획서 코드</label>'        
	  						+ '<div class="col-md-10">'
	  				    		+ '<input type="text" name="plan_code"  value="'+tdArr[0]+'" class="form-control" disabled>' 
	  				        +'</div>'
	  				    +'</div>'
	  				    +'<div class="form-group row">'
	  			        +'<label class="col-md-2 col-form-label" for="example-email">기획명</label>'
	  			        	+ '<div class="col-md-10">'
	  			            	+ '<input type="text" name="plan_name" value="'+tdArr[1]+'" class="form-control" >'
	  			        	+ '</div>'
	  			    	+ '</div>'
	  				    + '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="simpleinput">기획제안자</label>' 
	  			        	+ '<div class="col-md-10">'
	  			            	+ '<input type="text" name="username" value="'+tdArr[2]+'" id="simpleinput" class="form-control">' 
	  			        	+ '</div>'
	  			    	+'</div>'
	  			    	+ '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="example-textarea">책임자</label>'
	  			        	+ '<div class="col-md-10">'
	  			        	+ '<input type="text" name="position_code" value="'+tdArr[3]+'" id="simpleinput" class="form-control" >'
	  			        	+ '</div>'
	  			    	+ '</div>'
	  			    	+ '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="simpleinput">기획등록일</label>'
	  			        	+ '<div class="col-md-10">'
	  			            	+ '<input type="text" name="plan_regdate" value="'+tdArr[4]+'" id="simpleinput" class="form-control" disabled>'
	  			        	+ '</div>'
	  			    	+ '</div>'
	  			    	+  '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="example-textarea">시작예정일</label>'
	  			        	+'<div class="col-md-10">'
	  			            	+ '<input type="text" name="plan_startdate" data-provide="datepicker" data-date-autoclose="true" value="'+tdArr[5]+'" id="simpleinput" class="form-control" >'
	  			        	+ '</div>'
	  			    	+ '</div>' 
	  			    	+  '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="example-textarea">종료예정일</label>'
	  			        	+'<div class="col-md-10">'
	  			            	+ '<input type="text" name="plan_enddate" data-provide="datepicker" data-date-autoclose="true" value="'+tdArr[6]+'" id="simpleinput" class="form-control" >'
	  			        	+ '</div>'
	  			    	+ '</div>' 
	  			    	+  '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="example-textarea">기획상태</label>'
	  			        	+'<div class="col-md-10">'
	  			        		+ '<select name="plan_state" class="form-control" required>'
	  			        			+ '<option value="'+tdArr[7]+'">'+tdArr[7]+'</option>'
	  			        			+ '<option disabled>-------------------------</option>'
									+ '<option value="기획단계">기획단계</option>'
									+ '<option value="준비중">준비중</option>'
									+ '<option value="진행중">진행중</option>'
									+ '<option value="완료">완료</option>'
									+ '<option value="페기">페기</option>'
								+ '</select>'
								
	  			        	+ '</div>'
	  			    	+ '</div>' 
	  			    	+  '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="example-textarea">기획목표</label>'
	  			        	+'<div class="col-md-10">'
	  			        		+ '<textarea name="plan_objective" class="form-control" rows="5" id="example-textarea">'+tdArr[8]+'</textarea>'
	  			        	+ '</div>'
	  			    	+ '</div>' 
	  			    	+  '<div class="form-group row">'
	  			        + '<label class="col-md-2 col-form-label" for="example-textarea">상세 기획안 파일</label>'
	  			        	+'<div class="col-md-10">'
	  			            	+ '<input type="text" name="plan_proposal" value="'+tdArr[9]+'" id="simpleinput" class="form-control" >'
	  			        	+ '</div>'
	  			    	+ '</div>' 
	  			    	+ '<div class="form-group text-right mb-0">'
	  						+ '<button type="button" id="btnRe" class="btn btn-outline-dark waves-effect waves-light" onclick="updatePlan();">수정</button>'
	  						+ '<button type="button" id="btnDel" class="btn btn-outline-dark waves-effect waves-light" onclick="deletePlan();">폐기</button>'
	  					+ '</div>'
	  					+'</div>'
	  				    );
   			
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