<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Table datatable css -->
    </head>

    <body>
	<c:if test="${insertCnt == 0}">
		<script type="text/javascript">
			alert("오류가 발생했습니다. 다시 시도해주세요");
		</script>
	</c:if>
	
	<c:if test="${insertCnt != 0}">
		<script type="text/javascript">
			alert("등록 완료되었습니다.");
			window.location='HR_Greeting';
		</script>
	</c:if>
          

        <%@ include file="../setting2.jsp" %>
        
    </body>
</html>
  
        