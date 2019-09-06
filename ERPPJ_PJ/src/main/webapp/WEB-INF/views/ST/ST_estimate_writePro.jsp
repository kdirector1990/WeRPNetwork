<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Table datatable css -->
    </head>

    <body>
	<c:if test="${estimatewrite == 0}">
		<script type="text/javascript">
			alert("글 써짐");
		</script>
	</c:if>
	
	<c:if test="${estimatewrite != 0}">
		<script type="text/javascript">
			alert("글 쓰기 완료");
			window.location='ST_estimate_price';
		</script>
	</c:if>
          

        <%@ include file="../setting2.jsp" %>
        
    </body>
  
        
</html>