<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../setting.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
			alert("거래처가 등록되지 못했습니다.");
			location.href="FT_BasicAccount_Input";
		</script>
	</c:if>
	
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("거래처가 등록되었습니다.");
			location.href="FT_BasicAccount_Input";
		</script>
	</c:if>
</body>
</html>