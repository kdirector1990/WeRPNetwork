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
</head>
	<body>
	
	<c:if test="${cnt == 0 }">
		<script type="text/javascript">
			alert("해당 보유현황은 목록이 존재하지 않습니다.");
			
		</script>
	</c:if>
	
	
     	 <!-- Begin page -->
    	 <div id="wrapper">
            <div class="content-page">
			<!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->           
            
                <!-- 페이지 내용 입력 공간 -->
		<div class = "containerfluid">            
             <c:if test="${cnt != 0}">   
                <div class="row">
	                <div class="col-sm-12">
	                    <div class="card">
	                        <div class="card-body table-responsive">
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
			                                 	<tr>
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
	                            </div>
	                       </div>
	                     </div>
					</div>
               </c:if>
               
               <div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
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
	                                              <th>설비계정코드</th>
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
                                          		<c:forEach var="var" begin = "1" end = "100" step = "1">
                                          			<tr>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          			</tr>
                                          		</c:forEach>
                                      		</tbody>
                                        </table>
                                  	</div>
                             </div>
		                   </div> 
                         </div>
               </div>
               <!-- 페이지 내용 입력 공간 종료 -->
               

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
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