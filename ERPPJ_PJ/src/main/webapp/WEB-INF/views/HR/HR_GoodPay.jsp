<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	#payAll{
		display : none;
	}
</style>

<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">

<script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> -->	
<script type="text/javascript">

	
	function load(rank){
		$.ajax({
			type : "GET",
			url : "/erp/HR_GoodPay_paystep",
			data : { 'rank_code' : rank},
			contentType : 'application/json',
			dataType : "json",
			success : function(vo){
				
				document.getElementById("payAll").style.display="block";
				if($(".payRank") != null){
					$(".payRank").remove();
				}				
				
				for(var i = 0; i < vo.length; i++){
					var paystep_codeS = vo[i].paystep_code;
					var BASE_PAYMENTS = addComma(vo[i].base_PAYMENT);
					var ADD_PAYMENTS = addComma(vo[i].add_PAYMENT);
					var EXTENSION_PAYMENTS = addComma(vo[i].extension_PAYMENT);
					var total = addComma(vo[i].base_PAYMENT+vo[i].add_PAYMENT+vo[i].extension_PAYMENT);
					var rank = vo[i].rank_code;
					
					$('#pay2').append("<tr class='payRank'>"+"<input type='hidden' name = 'paystep_code"+i+"' value ='"+paystep_codeS+"'>"+"<input type='hidden' name='rank_code' value='"+rank+"'>"+
						"<td>"+paystep_codeS+"</td><td>"	
						+"<input type='text' numberOnly id='simpleinput' class='form-control' name='BASE_PAYMENT"+i+"' value='"+BASE_PAYMENTS+"' maxlength='10' style='width:200px; text-align:center;' onKeyUp='removeChar(event); inputNumberFormat(this);'>"+"</td><td>"
						+"<input type='text' numberOnly id='simpleinput' class='form-control' name='ADD_PAYMENT"+i+"' value='"+ADD_PAYMENTS+"' maxlength='10' style='width:200px; text-align:center;' onKeyUp='removeChar(event); inputNumberFormat(this);'>"+"</td><td>"
						+"<input type='text' numberOnly id='simpleinput' class='form-control' name='EXTENSION_PAYMENT"+i+"' value='"+EXTENSION_PAYMENTS+"' maxlength='10' style='width:200px; text-align:center;' onKeyUp='removeChar(event); inputNumberFormat(this);'>"+"</td><td>"
						+total+"</td></tr>");
				} 
				
			},
			error : function(e){
				alert('서버 연결 도중 에러가 났습니다. 다시 시도해주세요.');
			}
		});
	}
	
	
	function payUpdate(){
		 var param = $("#updatePay").serializeArray();
		$.ajax({
			url: '/erp/HR_GoodPay_payUpdate',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(param){
				alert("호봉 수정을 완료하였습니다.");
			},
			error : function(){
				alert("전산 오류로 인하여 수정에 실패하였습니다.");
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

<form id="updatePay" action="HR_GoodPay_payUpdate" method="post" class="form-horizontal">
		<input type = 'hidden' name = "${_csrf.parameterName }" value ="${_csrf.token }">
		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">
					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<h4 class="page-title">호봉테이블 입력</h4>
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
				<div id="payAll">
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
								<div class="page-title-center">
									</div>								
							</div>
							<div class="page-title-center">
    								<button id="updatePA" onclick="payUpdate();" type="button" class="btn btn-outline-primary waves-effect waves-light">호봉수정</button>
							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
			 <%@ include file="../footer.jsp" %>
			</div>
		</div>
		</div>
		</form>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	 <%@ include file="../rightbar.jsp" %>
     <%@ include file="../setting2.jsp" %>
     
     <script type="text/javascript">

     function addComma(num) {
   	  var regexp = /\B(?=(\d{3})+(?!\d))/g;
   	  return num.toString().replace(regexp, ',');
   	}
     

    //숫자만 입력
    function onlyNumber(event){
 	    event = event || window.event;
 	    var keyID = (event.which) ? event.which : event.keyCode;
 	    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
 	    	   return;
 	    else
 	        return false;
 	   }
    //문자 지우기
     function removeChar(event) {
    	    event = event || window.event;
    	    var keyID = (event.which) ? event.which : event.keyCode;
    	    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
    	        return;
    	    else
    	    	 event.target.value = event.target.value.replace(/[^-\.0-9]/g, "");
    }
    
   //콤마 찍기
     function comma(obj) {
         var regx = new RegExp(/(-?\d+)(\d{3})/);
         var bExists = obj.indexOf(".", 0);//0번째부터 .을 찾는다.
         var strArr = obj.split('.');
         while (regx.test(strArr[0])) {//문자열에 정규식 특수문자가 포함되어 있는지 체크
             //정수 부분에만 콤마 달기 
             strArr[0] = strArr[0].replace(regx, "$1,$2");//콤마추가하기
         }
         if (bExists > -1) {
             //. 소수점 문자열이 발견되지 않을 경우 -1 반환
             obj = strArr[0] + "." + strArr[1];
         } else { //정수만 있을경우 //소수점 문자열 존재하면 양수 반환 
             obj = strArr[0];
         }
         return obj;//문자열 반환
     }
   
   //input 태그 콤마 달기
     function inputNumberFormat(obj) {
    	    obj.value = comma(obj.value);
    	}

     </script>
</body>
</html>