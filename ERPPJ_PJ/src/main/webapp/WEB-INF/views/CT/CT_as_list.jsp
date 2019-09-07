<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        
<script src="/erp/resources/assets/js/request.js"></script>
<link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
        
        var searchCount = 1;
        
        function SelectAS(value){
        	var param = $("#selectAS").serializeArray();
        	$.ajax({
      			url: '/erp/CT_select_as',
      			type: 'POST',
      			data : param,
      			dataTpye: 'json',
      			success: function(vo){
      				
      				$('#result').empty();
      				
      				for(var i = 0; i < vo.length; i++){
      					var cas_code = vo[i].cas_code;
      					var department_code = vo[i].department_code;
      					var username = vo[i].username;
      					var cas_title = vo[i].cas_title; 
      					var date = vo[i].cas_date;
      					
      					var pa = new Date(date);
      					var year = pa.getFullYear();
      					var month = (1+pa.getMonth());
      					if(month < 10){
    						month = "0" +month;
    					}
    					var day = pa.getDate();
    					if(day < 10){
    						day = "0" +day;
    					}
    					
    					var cas_date = year + "-" + month + "-" +day;
      					
    					$('#result').append(
    							'<tr class="spoat" onclick="detail('+cas_code+')"><td>'+
    							cas_code+'</td><td>' +
      							department_code + '</td><td>' +
      							username + '</td><td>' +
      							cas_title + '</td><td>' +
      							cas_date + '</td><tr>'
      						);
    					if(searchCount == 1){
   						 $('#bodyappend').append(
   								'<script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"/>' +
   						        '<script src="/erp/resources/assets/libs/jszip/jszip.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"/>' +
   						        '<script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"/>' +
   						        '<script src="/erp/resources/assets/js/pages/datatables.init.js"/>' 	
   							);
   						 searchCount = searchCount + 1;
      					}
      				}
      			},
      			error : function(){
      				alert("전산 오류로 인하여 폐기에 실패하였습니다.");
      			}
      		});
        };
        
        </script>
        
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">
           <%@ include file="../sidebar.jsp" %>

            <div class="content-page">
            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
                <div class="content">
                <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">전산</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">A/S</a></li>
                                            <li class="breadcrumb-item active">A/S 요청 목록</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">전산</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title -->
                        
                        <div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body table-responsive">
										<div class="form-group row">
												<label class="col-md-1 col-form-label" for="simpleinput">출력구분</label>
												<div class="col-md-4 input-group">
													<form id="selectAS" style="width:400px; text-align:center;">
														<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
														<select class=" form-control" name="cas_state" onchange="SelectAS(this.value);">
															<option value="" selected disabled></option>								
															<option value="1">미처리</option>
															<option value="2">처리</option>
														</select>
													</form>
												</div>
												<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
												<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
												<div class="col-md-4 input-group">
												<button type="button" onclick = "updateAS();"class="btn btn-outline-dark waves-effect waves-light width-md">처리</button>&nbsp;
    											<button type="button" onclick="deleteAS();" class="btn btn-outline-dark waves-effect waves-light width-md">폐기</button>
												</div>
										</div>
									</div>
								</div>
							</div>
						</div> 
						
						
						<div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
    									<hr>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">
                                            <thead>
                                            <tr>
                                            	<th>AS코드</th>
												<th>부서코드</th>
												<th>사원명</th>
												<th>제목</th>
												<th>요청시간</th>
                                            </tr>
                                            </thead>
                                            <tbody id = "result">
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
						
                        
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->

               <%@ include file="../footer.jsp" %>
	
            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>
		<%@ include file="../setting2.jsp" %>
		
		<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
        <div id = "bodyappend"></div>

    </body>
</html>