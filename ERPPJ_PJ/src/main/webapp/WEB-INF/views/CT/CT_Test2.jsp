<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<!-- Table datatable css -->
<link
	href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<script src="/erp/resources/assets/js/request.js"></script>

<script type="text/javascript">
    
    </script>

</head>
<body>

	<c:if test="${cnt == 0 }">
		<script type="text/javascript">
			alert("해당 보유현황은 목록이 존재하지 않습니다.");
			
		</script>
	</c:if>

	<!-- 페이지 내용 입력 공간 -->
	<div id="result2">
		<c:if test="${selectCnt == 1 }">
			<table class="table mb-0">
				<tr>
					<th>전산설비코드</th>
					<th>설비명</th>
					<th>보유구분</th>
					<th>구입일</th>
					<th>사용부서</th>
					<th>위치</th>
					<th>매입가</th>
					<th>예상내용연수</th>
					<th>감가상각여부</th>
					<th>감가상각법</th>
				</tr>

				<tr>
					<td>${voC.ceq_code}
					<td><input type="text" name="ceq_name"
						value="${voC.ceq_name }" class="form-control"
						data-toggle="input-mask" style="width: 100%; border: 0px;"
						autofocus>
					<td><select name="ceq_type" class="form-control"
						data-toggle="input-mask" style="width: 100%; border: 0px;">
							<option value="${voC.ceq_type}">${voC.ceq_type}
								<c:choose>
									<c:when test="${voC.ceq_type} == '보유'">
										<option value="대여">대여
									</c:when>
									<c:when test="${voC.ceq_type} == '대여'">
										<option value="보유">보유
									</c:when>
								</c:choose>
					</select>
					<td><input type="date" name="ceq_acquire_date"
						value="${voC.ceq_acquire_date }" class="form-control"
						data-toggle="input-mask" style="width: 100%; border: 0px;">
					<td><select name="ceq_department_code" class="form-control"
						data-toggle="input-mask" style="width: 100%; border: 0px;">
							<option value="${voC.department_code }">${voC.department_code }
								<c:choose>
									<c:when test="${voC.department_code} == '인사'">
										<option value="기획">기획
										<option value="영업">영업
										<option value="재무">재무
										<option value="전산">전산
										<option value="제조">제조
									</c:when>
									<c:when test="${voC.department_code} == '기획'">
										<option value="기획">인사
										<option value="영업">영업
										<option value="재무">재무
										<option value="전산">전산
										<option value="제조">제조
									</c:when>
									<c:when test="${voC.department_code} == '재무'">
										<option value="인사">인사
										<option value="기획">기획
										<option value="영업">영업
										<option value="전산">전산
										<option value="제조">제조
									</c:when>
									<c:when test="${voC.department_code} == '영업'">
										<option value="인사">인사
										<option value="기획">기획
										<option value="재무">재무
										<option value="전산">전산
										<option value="제조">제조
									</c:when>
									<c:when test="${voC.department_code} == '전산'">
										<option value="인사">인사
										<option value="기획">기획
										<option value="영업">영업
										<option value="재무">재무
										<option value="제조">제조
									</c:when>
									<c:when test="${voC.department_code} == '제조'">
										<option value="인사">인사
										<option value="기획">기획
										<option value="영업">영업
										<option value="재무">재무
										<option value="전산">전산
									</c:when>
								</c:choose>
					</select>
					<td><input type="text" name="ceq_location"
						value="${voC.ceq_location }" class="form-control"
						data-toggle="input-mask" style="width: 100%; border: 0px;">
					<td><input type="text" name="ceq_prime_cost"
						value="${voC.ceq_prime_cost}" class="form-control"
						data-toggle="input-mask" style="width: 100%; border: 0px;"
						onkeyup="removeChar(event); inputNumberFormat(this);">
					<td><input type="text" name="ceq_durable"
						value="${voC.ceq_durable }" class="form-control"
						data-toggle="input-mask" style="width: 100%; border: 0px;"
						onkeyup="removeChar(event); inputNumberFormat(this);">
					<td><select name="ceq_depreciation">
							<option value="ceq_depreciation">${voC.ceq_depreciation}>
					</select> <c:choose>
							<c:when test="${voC.ceq_depreciation == 1}">
								<option value="N">N
							</c:when>
							<c:when test="${voC.ceq_depreciation == 2}">
								<option value="Y">Y
							</c:when>
						</c:choose>
					<td>${voC.ceq_depreciation_type }
			</table>
		</c:if>
	</div>


	<!-- 페이지 내용 입력 공간 종료 -->



	<!-- ============================================================== -->
	<!-- End Page content -->
	<!-- ============================================================== -->

	<!-- END wrapper -->

	<%@ include file="../setting2.jsp"%>
	<!-- Datatable plugin js -->
	<script
		src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

	<script
		src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
	<script
		src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

	<script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
	<script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
	<script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

	<script src="/erp/resources/assets/js/pages/datatables.init.js"></script>
	<!-- Plugins js -->
	<script src="/erp/resources/assets/libs/dropify/dropify.min.js"></script>

	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-fileuploads.init.js"></script>

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