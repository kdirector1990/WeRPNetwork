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
								<div class="card-body" style = "padding-bottom:0px;">
									<form name="">
                                        <table id="datetableList" class="table table-hover mb-0 table-bordered">
                                            <thead>
                                                <tr class="table-info">
													<th>사원코드</th>
													<th>사원명</th>
													<th>부서코드</th>
													<th>직책코드</th>
                                         		</tr>
                                      		</thead>
                                    		<tbody>
                                    		<!--  있으면 -->
											<c:if test="${cnt != 0}">
                                          		<c:forEach var="list" items="${dto}">
                                          			<tr>
                                          				<td onclick = "getname(this.value);">${list.username}</td>
                                          				<td>${list.e_name}</td>
                                          				<td>${list.department_code}</td>
                                          				<td>${list.position_code}</td>
                                          			</tr>
                                          		</c:forEach>
                                         	</c:if>
                                         	<!--  없으면 -->
												<c:if test="${cnt == 0}">
													<tr>
														<td colspan="6" align="center">
															조회결과 없음
													</tr>
												</c:if>
                                      		</tbody>
                                        </table>
                                      </form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12" id="ex1_Result2" ></div>
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
        
		<script type="text/javascript">
		/* 팝업창에서 값 넘기기 할거야 */
	    /* 몰라 못해  */
	    function getname(name){
			
			var username = this.name;
			
			alert(username);
		}
	    
    	</script>
</body>
</html>

