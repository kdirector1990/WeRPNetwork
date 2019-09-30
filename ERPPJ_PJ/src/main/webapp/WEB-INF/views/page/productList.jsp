<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type="text/javascript">
function allcheck(){
	if($("#allChecked").prop("checked")){
		$(".checklist").prop("checked", true);
	}
	else{
		$(".checklist").prop("checked", false);
	}
}
     
</script>
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
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
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">..</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">..</a></li>
									<li class="breadcrumb-item active">..</li>
								</ol>
							</div>
							<h4 class="page-title">구매페이지</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<!-- 구매페이지 원재료목록  -->
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<div class="form-horizontal">
								<form action="InsertMaterialIo" method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<table id="datatable"
											class="table m-0 table-bordered table-hover"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											
											<thead class="bg-primary text-white">
												<tr>
													<th>자재명</th>
													<th>단위</th>
													<th>가격</th>
													<th>수량</th>
													<th>구매처</th>
													<th>구매</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="list" items="${dto}">
											<input type="hidden" name="material_code" value="${list.material_code}">
													<tr>
														<td>${list.material_name}</td>
														<td>${list.material_unit}</td>
														<td><input type="text" name="price" onkeyup="removeChar(event); inputNumberFormat(this);"></td>
														<td><input type="text" name="num" onkeyup="removeChar(event);"/>
														<td>
														<select name="salesTeam">
															<option value="1팀">(주)심장</option>
															<option value="2팀">(주)북두칠성</option>
															<option value="3팀">(주)창공</option>
															<option value="4팀">(주)돼지</option>
														</select>
														</td>
														<td><button type="submit" class="btn btn-dark waves-effect waves-light" onclick=";">구매</button></td>
													 </tr>
												</c:forEach>
											</tbody>
										</table>
									</form>									
								</div>

								<%-- <div class="result">
									<br>
									<form id="MF_production_plan_enrollment">
										<input type='hidden' name="${_csrf.parameterName }"
											value="${_csrf.token }"> <br>
										<table id="datatable2"
											class="table table-striped dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0;">
											<thead>
											</thead>

											<tbody>
											</tbody>
										</table>
									</form>
								</div> --%>
							</div>
						</div>
					</div>
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->

		<%@ include file="../footer.jsp"%>


		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
	
	<script type="text/javascript">
		
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

	<!-- Datatable plugin js -->
	<script
		src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>
</body>
</html>