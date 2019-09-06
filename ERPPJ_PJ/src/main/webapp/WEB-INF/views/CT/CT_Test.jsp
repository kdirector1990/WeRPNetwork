<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../setting.jsp" %>
    <!-- Table datatable css -->
    <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <script src="/erp/resources/assets/js/request.js"></script>
    
    <script type="text/javascript">
    function sunyoungJoa(code){
    	sendRequest(callback, "CT_select_type2", "post", "${_csrf.parameterName }=${_csrf.token }&ceq_type="+code);
    }
    
    function callback(){
    	var result = document.getElementById("result2");
    	
    	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
    		if(httpRequest.status == 200){	// 200 : 정상 종료
    		 	result.innerHTML = "정상종료";
    			
    			var datas = httpRequest.responseText; 
    			
    			result.innerHTML = datas;
    		} else {
    			result.innerHTML = "에러발생";
    		}
    	} 
    	else {
    		result.innerHTML = "상태 : " + httpRequest.readyState;
    	}
    }
    </script>
    
</head>
	<body>
	
	<c:if test="${cnt == 0 }">
		<script type="text/javascript">
			alert("해당 보유현황은 목록이 존재하지 않습니다.");
			
		</script>
	</c:if>
	        
                <!-- 페이지 내용 입력 공간 -->
		          
             <c:if test="${cnt != 0}">   
	          	<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
	          		<col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	                        <col style = "width:10%;">
	               <thead>
	               <tr>
	               	<th>전산설비코드</th>
	                   <th>설비명</th>
	                   <th>보유구분</th>
	                   <th>구입일</th>
	                   <th>사용부서</th>
	                   <th>위치</th>
	                   <th>매입가</th>
	                   <th>예상내용연수</th>
	                   <th>감가상각여부</th>
	                   <th>감가상각법</th>
	               </tr>
	               </thead>
	               
	               <tbody>
	                <c:forEach var="vo" items="${vo}">
	                	<tr onclick="sunyoungJoa(${vo.ceq_code});">
	                		<td>${vo.ceq_code}
	                		<td>${vo.ceq_name }
	                		<td>${vo.ceq_type }
	                		<td>${vo.ceq_acquire_date }
	                		<td>${vo.department_code }
	                		<td>${vo.ceq_location }
	                		<td>${vo.ceq_prime_cost }
	                		<td>${vo.ceq_durable }
	                		<c:choose>
	                		<c:when test="${vo.ceq_depreciation == 1}">
	                		<td>N
	                		</c:when>
	                		<c:when test="${vo.ceq_depreciation == 2}">
	                		<td>Y
	                		</c:when>
	                		</c:choose>
	                		<td>${vo.ceq_depreciation_type }
	                </c:forEach>
	               </tbody>
	           </table>

               </c:if>
               
               <div id="result2">
               
               </div>
               
               
               <!-- 페이지 내용 입력 공간 종료 -->
               


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        <!-- END wrapper -->

        <%@ include file="../setting2.jsp" %>
        <!-- Datatable plugin js -->
    	<script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

        <script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

        <script src="/erp/resources/assets/js/pages/datatables.init.js"></script>
         <!-- Plugins js -->
        <script src="/erp/resources/assets/libs/dropify/dropify.min.js"></script>

        <!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-fileuploads.init.js"></script>
        
    </body>
</html>