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
				<div style="padding-top:10px;">
				
				</div>
								<div class="card-body">
                                        <table id="datatable" class="table table-bordered">
                                            <thead>
                                                <tr class="table-info" style = "text-align: center;">
													<th>전산설비코드</th>
													<th>설비명</th>
                                         		</tr>
                                      		</thead>
                                    		<tbody>
                                    		<!--  있으면 -->
											<c:if test="${cnt != 0}">
                                          		<c:forEach var="list" items="${dtos}">
                                          			<tr onclick="setCeqSerial('${list.ceq_code}');">
                                          				<td>${list.ceq_code}</td>
                                          				<td>${list.ceq_name}</td>
                                          			</tr>
                                          		</c:forEach>
                                         	</c:if>
                                         	<!--  없으면 -->
												<c:if test="${cnt == 0}">
													<tr>
														<td colspan="2" align="center">
															조회결과 없음
													</tr>
												</c:if>
                                      		</tbody>
                                        </table>
									</div>
<!-- Datatable plugin js -->
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

