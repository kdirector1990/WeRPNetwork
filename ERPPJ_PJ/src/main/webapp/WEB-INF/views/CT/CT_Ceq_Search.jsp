<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
		
    
	<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
	<script src="/erp/resources/assets/css/js/request.js"></script>
    <script type = "text/javascript">


// 결과
function load1(url) {
	var url = document.searchCode.department_code.value;
	
	sendRequest(loadCode_callback, "CT_Ceq_Search_Result", "post", "department_code="+url);
}

function loadCode_callback() {
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
		if(httpRequest.status == 200){	// 200 : 정상 종료
			result.innerHTML = "정상종료";
			// 응답 결과가 html이면 responseText로 받고, XML이면 responseXML로 받는다.
			
			var datas = httpRequest.responseText;
			
			result.innerHTML = datas;
		} else {
			if(!document.searchName.department_code.value){
				alert("부서를 선택해주세요.");
				return false;
			}
			result.innerHTML = "에러발생";
		}
	} else {
		//result.innerHTML = "상태 : " + httpRequest.readyState;
	}
} 

function setCeqSerial(code){
	opener.document.getElementById("ceq_codeS").value = code;
	
	alert("작동");
	
	$("#ceq_codeS", opener.document).val(code);
	$(opener.document).find("ceq_codeS").val(code);
	self.close();
}


</script>

</head>
<body onload="searchNameFocus();">
<!-- username 검색 -->
<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page" style="margin-top: 10px;">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">
				
				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box" style = "text-align:center;">
							<h4><b>전산설비코드</b></h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
						<div class="col-sm-12">
							<div class="card" style="margin-bottom: 5px;">
								<div class="card-body">
									<form action="" name="searchCode">
										
										<table>
											<tr>
												<th>사용 부서</th>
												<td>
													<select name="department_code"  class="form-control" style = "width: 100%; -webkit-appearance: none; border:0px;" onchange="load1();">
		                                                <option value="인사">인사</option>
		                                                <option value="기획">기획</option>
		                                                <option value="영업">영업</option>
		                                                <option value="재무">재무</option>
		                                                <option value="전산">전산</option>
		                                                <option value="제조">제조</option>
													</select>
												</td>
											</tr>
										</table>
									</form>
                               	</div>
                               	
                              <div id = "result">
			                      <!-- 출력결과위치 -->
		                      </div>
		                      
                             </div>
		                   </div> 
                       </div>
                    </div> 
                      
                      
               
               <!-- 페이지 내용 입력 공간 종료 -->



			<%@ include file="../footer.jsp" %>

		</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

</body>
</html>