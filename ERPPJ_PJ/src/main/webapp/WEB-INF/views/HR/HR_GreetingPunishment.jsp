<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
		
    
	<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
	<script src="/erp/resources/assets/css/js/request.js"></script>
    <script type = "text/javascript">
/* 
	function search(url){
		sendRequest(load_callback, url, "post");
	}
	
	 function load_callback(){
		var result =  document.getElementById("result");
		
		if(httpRequest.readyState == 1){
			setTimeout(function(){
				if(httpRequest.readyState == 4){
					if(httpRequest.status == 200){
						//result.innerHTML = "정상종료";
						//응답결과가 html 이면 responseText로 받고, XML 이면 responseXML로 받는다.
						result.innerHTML = httpRequest.responseText;
						
					} else{
						result.innerHTML = "error";
					}
				} else{
					result.innerHTML = "error : httpRequest.readyState" + httpRequest.readyState;
				}
				
			},2000);
		}
		
		search('HR_GreetingPunishment_result?${_csrf.parameterName}=${_csrf.token }');"
		
	} */
	 $(function(){
		$('#search').click(function(){
			var param = {
				
			}
			param.pa_name = $("#pa_name").val();
			param.username = $("#username").val();
			param.e_name = $("#e_name").val();
			param.pa_date = $("#pa_date").val();
					
			
			/* alert(param.pa_name);
			alert(param.username);
			alert(param.e_name);
			alert(param.pa_date); */
			$.ajax({
				url : '${pageContext.request.contextPath}/HR_GreetingPunishment_result?${_csrf.parameterName}=${_csrf.token }',
				type : 'GET',
				data : param,
				success : function(data){
					$('#result').html(data);
				},
				error : function(){
					alert("에러");
				}
			});
		}); 
	 });
	 
	 
	 

</script>

</head>

<body>

	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>

		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사정보</a></li>
                                            <li class="breadcrumb-item active">인사고과/상벌현황</li>
                                        </ol>
								</div>
								<h4 class="page-title">인사고과/상벌현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

				<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
								<table class="col-12">
									<tr class="form-group row">
										<th class="col-md-1 col-form-label">고과명</th>
										<td class="col-md-2 input-group"><select class="form-control select2" id = "pa_name" name="pa_name">
												<option></option>
												<option value = "2018first">2018년 상반기</option>
												<option value = "2018second">2018년 하반기</option>
												<option value = "2019first">2019년 상반기</option>
											</select> </td>
										<th class="col-md-1 col-form-label">&nbsp;</th>
										<th class="col-md-1 col-form-label">사원번호 검색</th>
										<td class="col-md-1 input-group">
											<input type="text" class="form-control" name="username" id = "username">
											</td>
										<th class="col-md-1 col-form-label">사원이름 검색</th>
										<td class="col-md-1 input-group">
											<input type="text" class="form-control" name="e_name" id = "e_name">
											</td>
										<th class="col-md-1 col-form-label">고과일자</th>
										<td><input class="form-control input-daterange-datepicker" type="text" name="pa_date" id = "pa_date"/></td>
										<td><button type="button" class="btn btn-primary waves-effect waves-light" id = "search">검색</button></td>
									</tr>									
								</table>
								
                                        
                                  	</div>
                             </div>
		                   </div> 
                         </div>
                         
                      </div> 
                      <div id = "result">
                      
                      </div>
               
               <!-- 페이지 내용 입력 공간 종료 -->



			<%@ include file="../footer.jsp" %>

		</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp" %>
	
    <%@ include file="../setting2.jsp" %>


	<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	
	<!-- plugins -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>


</body>
</html>