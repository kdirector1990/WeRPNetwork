<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../setting.jsp" %>
    
    <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js" ></script> 
	<script src="/erp/resources/assets/css/js/request.js"></script>
	<script type="text/javascript">
		
		function write_add(){
			var param = $("#AS_Write").serializeArray();
    		alert(JSON.stringify(param));
    		$.ajax({
    			url: '/erp/CT_AS_add',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(insertCnt){
    				alert("AS를 등록하였습니다.");
    				window.close();
    			},
    			error : function(){
    				alert("전산 오류로 인하여 AS등록에 실패하였습니다.");
    			}
    		});
		}
		
		$(document).ready(function(){
			$('#writeClose').click(function(){
				window.close();
			});
		});
	
	</script>
    
    
</head>
	<body>
     	 <!-- Begin page -->
			<!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->           
            	<div class="container-fluid">
                <!-- 페이지 내용 입력 공간 -->
                
					<div class="row">
						<div class="col-12">
						    <div class="page-title-box">
						        <h4 class="page-title">A/S 등록</h4>
						    </div>
						</div>
					 </div>
                
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body">
										 <div class="row">
							                 <div class="col-xl-6">
							                     <form id="AS_Write" class="form-horizontal">
							                     <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
							                     <input type = "hidden" name = "username" value = "${username }">
							                         <div class="form-group row">
							                             <label class="col-md-2 col-form-label" for="simpleinput">부서코드</label>
							                             <div class="col-md-10">
							                                 <select name="department_code" class="form-controll">
							                                 	<option value="">선택</option>
							                                 	<option value="인사">인사</option>
							                                 	<option value="plan_depart">기획</option>
							                                 	<option value="영업">영업</option>
							                                 	<option value="재무">재무</option>
							                                 	<option value="전산">전산</option>
							                                 	<option value="제조">제조</option>
							                                 </select>
							                             </div>
							                         </div>
							                         
							                         <div class="form-group row">
							                             <label class="col-md-2 col-form-label" for="example-email">사원</label>
							                             <div class="col-md-10">
							                                 <input type="text" name="username" value="${username }" id="example-email" class="form-control" disabled>
							                             </div>
							                         </div>
							                         
							                         <div class="form-group row">
							                             <label class="col-md-2 col-form-label" for="simpleinput">제목</label>
							                             <div class="col-md-10">
							                                 <input type="text" name="cas_title" id="simpleinput" class="form-control">
							                             </div>
							                         </div>
							                         
							                         <div class="form-group row">
							                             <label class="col-md-2 col-form-label" for="example-textarea">내용</label>
							                             <div class="col-md-10">
							                                 <textarea name="cas_content" class="form-control" rows="5" id="example-textarea"></textarea>
							                             </div>
							                         </div>
							                         
							                         <div class="form-group row">
							                             <label class="col-md-2 col-form-label" for="simpleinput">URL</label>
							                             <div class="col-md-10">
							                                 <input type="text" name="cas_url" id="simpleinput" class="form-control">
							                             </div>
							                         </div>
													
														<div class="form-group text-right mb-0">
				    										<button onclick="write_add();" type="button" class="btn btn-outline-primary waves-effect waves-light">등록</button>
				    										<button id="writeClose" type="button" class="btn btn-outline-primary waves-effect waves-light">닫기</button>
														</div>
							                     </form>
							                 </div>
						                </div>
									</div>
								</div>
							</div>
						 </div>
						 
               
               <!-- 페이지 내용 입력 공간 종료 -->
               

	
            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        <!-- END wrapper -->

        <%@ include file="../setting2.jsp" %>
        
		        
    </body>
</html>