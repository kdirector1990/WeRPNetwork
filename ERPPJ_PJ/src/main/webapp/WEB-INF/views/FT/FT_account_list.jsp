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
    <script type="text/javascript">
		//opener : window 객체의 open() 메소드로 열린 새창(=중복확인창)에서, 열어준 부모창(=회원가입창)에 접근할 때 사용
		//self.close() : 메시지 없이 현재 창을 닫을 때 사용
		//hiddenId : 중복확인 버튼 클릭 여부 체크(0: 클릭안함, 1: 클릭함)
		function setvalue(val){
			opener.document.inputForm.id.value = $("#code" + val).html();
			opener.document.inputForm.hiddenId.value = $("#name" + val).html();
			self.close();
		}
    </script>
    </head>
	<body>
     	 <!-- Begin page -->
    	 <div id="wrapper">
            <div class="content-page">
			<!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->           
            
                <!-- 페이지 내용 입력 공간 -->
                <div class = "containerfluid">
            		<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">재무</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">부채목록</a></li>
                                            <li class="breadcrumb-item active">거래처 목록</li>
                                        </ol>
								</div>
								<h4 class="page-title">거래처목록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
                
                	<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
                                     <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                                         <col style = "width:30%">
                                         <col style = "width:40%">
                                         <thead>
                                             <tr>
                                            <th>코드</th>
                                            <th>거래처명</th>
                                      		</tr>
                                   		</thead>
                                 		<tbody>
                                       		<c:forEach var = "va" begin="1" end="200" step="1">
                                       		<tr>
                                       			<td id = "code${va}" ondblclick="setvalue(${va})">${va}</td>
                                       			<td id = "name${va}" ondblclick="setvalue(${va})">${va}</td>
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

        <%@ include file="../rightbar.jsp" %>
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
        
    </body>
</html>