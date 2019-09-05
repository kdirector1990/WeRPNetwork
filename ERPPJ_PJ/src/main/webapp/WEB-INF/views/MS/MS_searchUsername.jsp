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

// 검색창 포커스	 
function searchNameFocus(){
	document.searchName.e_name.focus();
}

// 결과
function load1(e_name) {
	var url = document.searchName.e_name.value;
	
	sendRequest(loadBook_callback, "MS_searchUsername_result", "post", "e_name="+url);
}

function loadBook_callback() {
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
		if(httpRequest.status == 200){	// 200 : 정상 종료
			result.innerHTML = "정상종료";
			// 응답 결과가 html이면 responseText로 받고, XML이면 responseXML로 받는다.
			
			var datas = httpRequest.responseText;
			
			result.innerHTML = datas;
		} else {
			if(!document.searchName.e_name.value){
				alert("사원이름을 입력하세요!");
				document.searchName.e_name.focus();
				return false;
			}
			result.innerHTML = "에러발생";
		}
	} else {
		result.innerHTML = "상태 : " + httpRequest.readyState;
	}
} 
</script>

</head>
<body onload="searchNameFocus();">
<!-- username 검색 -->
<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

				<div class="row">
						<div class="col-sm-12">
							<div class="card" style="margin-bottom: 0px;">
								<div class="card-body table-responsive">
									<form action="" name="searchName" onsubmit="return searchNameCheck();">
										<table>
											<tr>
												<th>사원명</th>
												<td>
													<input type="text" name="e_name" class="form-control">
												</td>
												
												<td>
													<button type="button" class="btn btn-primary waves-effect waves-light" id = "search" onclick="load1();">검색</button>
												</td>
											</tr>
										</table>
									</form>
                               	</div>
                             </div>
		                   </div> 
                         </div>
                      </div> 
                      
                      <div id = "result">
                      <!-- 출력결과위치 -->
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