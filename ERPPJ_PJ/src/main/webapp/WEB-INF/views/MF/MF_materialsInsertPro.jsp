<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- 자재 등록 처리 -->
	<c:if test="${insertCnt == 0}">
		<script type="text/javascript">
			alert("자재 등록 실패");
		</script>
	</c:if>
	
	<!-- 상품등록 성공 -->
	<c:if test="${insertCnt != 0}">
		<script type="text/javascript">
		alert("자재 등록 성공/n 확인해보러가 ");
		</script>
		<c:redirect url="MF_materialsInput"/>
		
	</c:if>
</body>
</html>