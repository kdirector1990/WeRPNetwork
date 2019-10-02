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
			alert("전산 오류로 인하여 기획서 등록에 실패하였습니다.");
		</script>
	</c:if>
	
	<c:if test="${insertCnt != 0}">
		<script type="text/javascript">
			alert("기획서가 등록되었습니다.");
			window.location='MS_planEnrollment';
		</script>
	</c:if>
          

        <%@ include file="../setting2.jsp" %>
        
    </body>
  
        
</html>