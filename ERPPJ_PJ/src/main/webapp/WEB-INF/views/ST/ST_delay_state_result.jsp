<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
	<html lang="en">
	<head>
<%@ include file="../setting.jsp"%>
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
  										<div class="table-responsive">
                                            <table class="table m-0">
                                                <thead>
                                                    <tr>
                                                        <th>주문번호</th>
                                                        <th>No.</th>
                                                        <th>주문일자</th>
                                                        <th>납기일</th>
                                                        <th>출하예정일</th>
                                                        <th>과세부분</th>
                                                        <th>납품처</th>
                                                        <th>담당자</th>
                                                        <th>품번</th>
                                                        <th>품명</th>
                                                        <th>규격</th>
                                                        <th>단위</th>
                                                        <th>미납수량</th>
                                                        <th>단가</th>
                                                        <th>공급가</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   <c:forEach var="var" begin = "1" end = "20" step = "1">
                                          			 <c:if test="${var eq param.username }">
                                          			<tr>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>김${var }</td>
                                          				<td>2018 상반기</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          			</tr>
                                          			 </c:if> 
                                          		</c:forEach>
                                                    
                                                </tbody>
                                            </table>
                                        </div>
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



</body>
</html>

