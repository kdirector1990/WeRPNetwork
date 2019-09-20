<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Page Content here -->
			<!-- ============================================================== -->

			<!-- 페이지 내용 입력 공간 -->


			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">전산</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">설비유지비</a></li>
									<li class="breadcrumb-item active">수리일지 등록</li>
								</ol>
							</div>
							<h4 class="page-title">수리일지 등록</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body table-responsive">
								<h4 class="header-title">수리일지</h4>
								<br>
								<form action="CT_repair_add" name="insertRP">
									<input type="hidden" name="${_csrf.parameterName }"
										value="${_csrf.token }"> <input type="hidden"
										name="cas_statee" value="">
									<div class="form-group">
										<label>제목</label> <input type="text" name="rr_title"
											class="form-control" required placeholder="제목" />
									</div>
									<div class="form-group">
										<label>전산설비코드</label>
										<div>
											<input type="text" name="ceq_code" class="form-control"
												required placeholder="전산설비코드" id="ceq_codeS"
												onclick="window.open('CT_Ceq_Search','window_name','width=430px, height = 528px, location=no, status=no, scrollbars=yes');" />
										</div>
									</div>
									<div class="form-group">
										<label>내용</label>
										<div>
											<textarea required name="rr_content" class="form-control"
												rows="7" placeholder="내용"></textarea>
										</div>
									</div>

									<div class="form-group">
										<label>수리방법</label><br>
										<div>
											<select name="rr_repair_type" class="form-control">
												<option value="">선택</option>
												<option value="내부수리">내부수리</option>
												<option value="외부수리">외부수리</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label>금액</label> <input type="text" name="rr_cost"
											class="form-control"
											onkeyup="removeChar(event); inputNumberFormat(this);" />
									</div>

									<div class="form-group mb-0">
										<div>
											<button type="submit"
												class="btn btn-primary waves-effect waves-light mr-1">
												등록</button>
											<button type="reset"
												class="btn btn-secondary waves-effect waves-light">
												취소</button>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->


		<!-- 페이지 내용 입력 공간 종료 -->

		<%@ include file="../footer.jsp"%>

	</div>

	<!-- ============================================================== -->
	<!-- End Page content -->
	<!-- ============================================================== -->

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
</body>
</html>