<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Table datatable css -->
    </head>

    <body>
	<c:if test="${deleteRelease == 0}">
		<script type="text/javascript">
			alert("삭제를 실패하였습니다.");
		</script>
	</c:if>
	
	<c:if test="${deleteRelease != 0}">
		<script type="text/javascript">
			alert("삭제 완료되었습니다.");
			window.location='ST_release_manage';
		</script>
	</c:if>
          

        <%@ include file="../setting2.jsp" %>
        
    </body>
  
        
</html>