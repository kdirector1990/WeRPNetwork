<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Table datatable css -->
    </head>

    <body>
	<c:if test="${updateRelease == 0}">
		<script type="text/javascript">
			alert("수정 ㄴㄴ");
		</script>
	</c:if>
	
	<c:if test="${updateRelease != 0}">
		<script type="text/javascript">
			alert("수정 완료");
			window.location='ST_release_manage';
		</script>
	</c:if>
          

        <%@ include file="../setting2.jsp" %>
        
    </body>
  
        
</html>