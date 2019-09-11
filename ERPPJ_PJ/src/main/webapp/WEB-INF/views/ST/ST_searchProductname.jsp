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
	document.searchName.product_name.focus();
}

// 결과
function load1(product_name) {
	var url = document.searchName.product_name.value;
	
	sendRequest(callback, "ST_searchProductname_result", "post", "product_name="+url);
}

function callback() {
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
		if(!document.searchName.product_name.value){
			alert("품명을 입력하세요.");
			location.reload();
			document.searchName.product_name.focus();
			return false;
		}
	
		if(httpRequest.status == 200){	// 200 : 정상 종료
			result.innerHTML = "정상종료";
			// 응답 결과가 html이면 responseText로 받고, XML이면 responseXML로 받는다.
			
			var datas = httpRequest.responseText;
			
			result.innerHTML = datas;
			
		} else {
			result.innerHTML = "에러발생";
			
		}
	
	} else {
		//result.innerHTML = "상태 : " + httpRequest.readyState;
	}
} 


function setName(product_name, product_code) {
	opener.document.getElementById("product_nameP").value = product_name;
	opener.document.getElementById("product_codeP").value = product_code;

	//test alert
	alert(product_name, product_code);
	
	$("#product_nameP", opener.document).val(product_name); //jquery 이용
	$(opener.document).find("#product_nameP").val(product_name); //find를 이용한 jquery
	
	$("#product_codeP", opener.document).val(product_code); //jquery 이용
	$(opener.document).find("#product_codeP").val(product_code); //find를 이용한 jquery
	
	self.close();
	
}
</script>

</head>
<body onload="searchNameFocus();">
<!-- username 검색 -->
<div id="wrapper">
		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box" style="text-align: center;">
								<h4>
									<b>계정목록</b>
								</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body"
									style="margin-bottom: 0px; padding-bottom: 0px;">
									<form action="" name="searchName">
										<table>
											<tr>
												<th style="text-align: center; padding-right: 10px;">Search</th>
												<td><input type="text" name="product_name"
													class="form-control form-control-sm" aria-controls="datatable" style = "display:inline-block; width:150px;"></td>
											</tr>

											<tr>
												<td
													style="position: absolute; right: 30px; margin-top: 10px;">
													<button type=button class="btn-subpage" id="search"
														onclick="load1();">조회</button>
													<button type="button" class="btn-subpage"
														onclick="self.close();">취소</button>
												</td>
											</tr>
										</table>
									</form>
								</div>

								<div id="result">
									<!-- 출력결과위치 -->
								</div>

							</div>
						</div>
					</div>
				</div>

				<!-- 페이지 내용 입력 공간 종료 -->


				<%@ include file="../footer.jsp"%>

		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->
</div>
</body>
</html>