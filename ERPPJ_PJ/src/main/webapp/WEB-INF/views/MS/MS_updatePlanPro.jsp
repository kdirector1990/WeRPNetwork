<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- 기획서 수정 처리 -->
	<c:if test="${updateCnt == 0}">
		<script type="text/javascript">
			alert("기획서 수정 실패");
		</script>
	</c:if>
	
	<!-- 성공 -->
	<c:if test="${updateCnt != 0}">
		<script type="text/javascript">
		alert("기획서 수정 성공/n 확인해보러가쟈 ");
		</script>
		<c:redirect url="MS_planManagement"/>
		
	</c:if>
</body>
</html>