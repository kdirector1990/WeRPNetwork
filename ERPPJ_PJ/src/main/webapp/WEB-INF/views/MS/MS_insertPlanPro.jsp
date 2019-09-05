<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- 기획서 등록 처리 -->
	<c:if test="${insertCnt == 0}">
		<script type="text/javascript">
			alert("기획서 등록 실패");
		</script>
	</c:if>
	
	<!-- 성공 -->
	<c:if test="${insertCnt != 0}">
		<script type="text/javascript">
		alert("기획서 등록 성공/n 확인해보러가 ");
		</script>
		<c:redirect url="MS_planEnrollment"/>
		
	</c:if>
</body>
</html>