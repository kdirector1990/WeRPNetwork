<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">

<script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> -->	
<script type="text/javascript">

/* function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
} */

	function load(rank){
		alert(rank);
		$.ajax({
			type : "GET",
			url : "/erp/HR_GoodPay_paystep",
			data : { 'rank_code' : rank},
			async: false,
			contentType : 'application/json',
			dataType : "json",
			success : function(vo){
				if($(".payRank") != null){
					$(".payRank").remove();
				}				
				var ss = JSON.stringify(vo);
				alert(vo);
				
				alert(vo[0].paystep_code);
				alert(vo[0].base_PAYMENT);
				
				for(var i = 0; i < vo.length; i++){
					var paystep_codeS = vo[i].paystep_code;
					var BASE_PAYMENTS = vo[i].base_PAYMENT;
					var ADD_PAYMENTS = vo[i].add_PAYMENT;
					var EXTENSION_PAYMENTS = vo[i].extension_PAYMENT;
					
					$('#pay2').append("<tr class='payRank'><td>"+paystep_codeS+"</td><td>"	
						+"<input type='text' id='simpleinput' class='form-control' name='BASE_PAYMENT' value='"+BASE_PAYMENTS+"' numberOnly size='10' style='width:200px; text-align:center'>"+"</td><td>"
						+"<input type='text' id='simpleinput' class='form-control' name='ADD_PAYMENT' value='"+ADD_PAYMENTS+"' numberOnly size='10' style='width:200px; text-align:center'>"+"</td><td>"
						+"<input type='text' id='simpleinput' class='form-control' name='EXTENSION_PAYMENT' value='"+EXTENSION_PAYMENTS+"' numberOnly size='10' style='width:200px; text-align:center'>"+"</td><td>"
						+(BASE_PAYMENTS+ADD_PAYMENTS+EXTENSION_PAYMENTS)+"</td></tr>");
				} 
				
				/* alert(vo); */
				//Controller에 메서드랑 DAO Mapper 만들어야됨.
			},
			complete : function(rank){
				alert("통신완료 : " + rank);
			},
			error : function(e){
				alert('서버 연결 도중 에러가 났습니다. 다시 시도해주세요.');
			}
		});
	}
	
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
									<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>일괄등록</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>일괄인상</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light" disabled>호봉복사</button>
    								<button type="button" class="btn btn-outline-primary waves-effect waves-light">코드설정</button>
								</div>
								<h4 class="page-title">근태결과입력</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

			<div class="row">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered mb-0">
									<thead>
										<tr>
											<th scope="col" colspan="2" style="center">대 상 직 급</th>																						
										</tr>
										
										<tr>
											<th scope="col">코 드</th>
											<th scope="col">직 급</th>
										</tr>
										
										<c:forEach var="rank" items="${vo}">
											<tr id="rank2">
												<td class="UserRank" onclick="load(${rank.rank_code});">${rank.rank_code}</td>
												<td class="UserRank2" onclick="load(${rank.rank_code});">${rank.rank_name}</td>
											</tr>
										</c:forEach>
										
									</thead>									
								</table>							
							</div>
							
							<div class="table-responsive">
								<table class="table table-bordered mb-0">
									<thead>
										<tr>
											<th scope="col" colspan="2">호봉이력</th>																						
										</tr>
										
										<tr>
											<th scope="col">적용시작연월</th>
											<th scope="col">적용종료연월</th>
										</tr>
									</thead>									
								</table>							
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
								<table id="pay2" class="table table-bordered mb-0">
									<thead>
										<tr>
											<th rowspan="2" align="center">호 봉</th>
											<th colspan="3" align="center">호 봉 테 이 블</th>
											<th rowspan="2" align="center">합 계</th>																						
										</tr>
										
										<tr>
											<th scope="col" align="center">기 본 급</th>
											<th scope="col" align="center">급 호 수 당</th>
											<th scope="col" align="center">연 장 수 당</th>
										</tr>
									</thead>									
								</table>							
							</div>
						</div>
					</div>
				</div>
			</div>

			 <%@ include file="../footer.jsp" %>
			</div>
		</div>
		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	 <%@ include file="../rightbar.jsp" %>
     <%@ include file="../setting2.jsp" %>
</body>
</html>