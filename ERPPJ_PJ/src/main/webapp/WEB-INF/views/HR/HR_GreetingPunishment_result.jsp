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
                                            <col style = "width:5%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:10%;">
                                            <col style = "width:5%;">
                                            <col style = "width:5%;">
                                            <col style = "width:5%;">
                                            <col style = "width:10%;">
                                            <thead>
                                                <tr>
	                                             	<th>NO</th>
													<th>사원코드</th>
													<th>사원명</th>
													<th>고과명</th>
													<th>평가시작일</th>
													<th>평가종료일</th>
													<th>고과일자</th>
													<th>고과자</th>
													<th>반영율</th>
													<th>점수</th>
													<th>등급</th>
													<th>비고</th>
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

