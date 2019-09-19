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
<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                                            <thead>
													<tr>
														<th>코드</th>
														<th>고객명</th>
														<th>합계</th>
														<th>1월</th>
														<th>2월</th>
														<th>3월</th>
														<th>4월</th>
														<th>5월</th>
														<th>6월</th>
														<th>7월</th>
														<th>8월</th>
														<th>9월</th>
														<th>10월</th>
														<th>11월</th>
														<th>12월</th>
													</tr>
												</thead>
												<tbody id = "result">
													<c:forEach var="var" items="${dto}">
                                          			<tr>
                                          				<td>${var }</td>
                                          				<td>${var }</td>
                                          				<td>김${var }</td>
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
                                          				<td>${var }</td>
                                          			</tr>
                                          		</c:forEach>
												</tbody>
                                        </table>
</div></div></div></div>
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