<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="setting.jsp" %>
<meta charset="UTF-8">
</head>
<body>

	<c:if test="${insertCnt != 0 }">
		<script type="text/javascript">
			alert("메신저를 보냈습니다.");
			window.loaction("http://smueoot.dlinkddns.com:8087/erp/MSGdeploy");
		</script>
	</c:if>
	
	<c:if test="${insertCnt == 0 }">
		<script type="text/javascript">
			alert("오류로 인하여 메신저를 보내지 못했습니다.")
			window.history.back();
		</script>
	</c:if>

</body>
</html>