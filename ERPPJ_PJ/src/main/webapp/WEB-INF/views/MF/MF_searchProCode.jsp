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
function searchFocus(){
	document.searchProName.product_code.focus();
}

function enterkey() {
    if (window.event.keyCode == 13) {
         // 엔터키가 눌렸을 때 실행할 내용
         load1();
    }
}


// 결과
function load1(product_name) {
	var url = document.searchProName.product_code.value;
	
	sendRequest(loadBook_callback, "MF_searchProCode_result", "post", "product_name="+url);
}

function loadBook_callback() {
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
		if(!document.searchProName.product_code.value){
			alert("제품명을 입력하세요!");
			location.reload();
			document.searchProName.product_code.focus();
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


function setName(product_code,bom_code,product_name) {
	opener.document.getElementById("product_code").value = product_code;
	opener.document.getElementById("bom_code").value = bom_code;
	opener.document.getElementById("product_name").value = product_name;
	//test alert
	alert(username);
	
	$("#product_code", opener.document).val(product_code); //jquery 이용
	$(opener.document).find("#product_code").val(product_code); //find를 이용한 jquery
	
	$("#bom_code", opener.document).val(bom_code); //jquery 이용
	$(opener.document).find("#bom_code").val(bom_code); //find를 이용한 jquery
	
	$("#product_name", opener.document).val(product_name); //jquery 이용
	$(opener.document).find("#product_name").val(product_name); //find를 이용한 jquery
	
	self.close();
	
}
</script>

</head>
<body onload="searchFocus();">
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
							<div class="page-title-box" style="text-align: center; margin: 40px 0;">
								<h3>
									<b>제품검색</b>
								</h3>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body"
									style="margin-bottom: 0px; padding-bottom: 44px;">
									<form name="searchProName" onsubmit="return false">
										<table>
											<tr>
												<th style="text-align: center; padding-right: 10px;">Search</th>
												<td><input onkeyup="enterkey();" type="text" name="product_code"
													class="form-control form-control-sm" aria-controls="datatable" style = "display:inline-block;"></td>
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

								<div id="result" style="overflow:auto;">
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