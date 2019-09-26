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
	<div class="card-body"
		style="padding-bottom: 0px; padding-bottom: 24px;">
		<form name="selectTable">
			<table id="datatable" class="table table-bordered table-hover">
				<thead>
					<tr class="table-info" style="text-align: center; pointer-events: none;">
						<th>판매대장 코드</th>
						<th>거래처명</th>
						<th>품명</th>
						<th>출고 요청일</th>
					</tr>
				</thead>
				<tbody style="overflow:auto;">
					<!--  있으면 -->
					<c:if test="${cnt != 0}">
						<c:forEach var="sto" items="${stos}">
							<tr onclick="setName('${sto.salelist_code}','${sto.customer_name}','${sto.amount}','${sto.price}','${sto.product_name}','${sto.detail_ac_code}','${sto.customer_code}' );">
								<td>${sto.salelist_code}</td>
								<td>${sto.customer_name}</td>
								<td>${sto.product_name}</td>
								<td>${sto.release_o_date}</td>
							</tr>
						</c:forEach>
					</c:if>
					<!--  없으면 -->
					<c:if test="${cnt == 0}">
						<tr>
							<td colspan="6" align="center">조회결과 없음
						</tr>
					</c:if>
				</tbody>
			</table>
		</form>
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

