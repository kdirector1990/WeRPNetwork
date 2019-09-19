<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<%@ include file="../setting.jsp"%>
<head>
</head>
<body>
	<c:if test="${insertCnt != 0 }">
		<script type="text/javascript">
			alert("수리일지가 성공적으로 등록되었습니다.");
			location.href="CT_repair_list_add";
		</script>
	</c:if>
	<c:if test="${insertCnt == 0 }">
		<script type="text/javascript">
			alert("일지등록에 실패하였습니다.");
			window.history.back();
		</script>
	</c:if>
</body>
</html>