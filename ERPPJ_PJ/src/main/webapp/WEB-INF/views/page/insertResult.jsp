<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${insertCnt == 1 }">
		<script type="text/javascript">
			alert("구매에 성공하였습니다.");
			window.location="http://smueoot.dlinkddns.com:8087/erp/ST_saleList";
		</script>
	</c:if>
	<c:if test="${insertCnt != 0 }">
		<script type="text/javascript">
			alert("구매에 실패하였습니다.");
			window.history.back();
		</script>
	</c:if>
</body>
</html>