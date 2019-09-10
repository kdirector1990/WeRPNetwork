<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	#firstR{
		display:none;
	}
</style>

    <%@ include file="../setting.jsp" %>
    
    <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    
    <script type="text/javascript">
    
    var searchCount = 1;
    
    function SelectRR(type){
    	alert(type);
    	$.ajax({
  			url: '/erp/CT_Select_RP?${_csrf.parameterName }=${_csrf.token }',
  			type: 'POST',
  			data : {'rr_repair_type' : type},
  			dataTpye: 'json',
  			success: function(vo){
  				document.getElementById("firstR").style.display="block";
  				alert("자산을 수정했습니다.");
  				var as_state = "";
  				for(var i = 0; i < vo.length; i++){
  					var rr_code = vo[i].rr_code;
  					var rr_title = vo[i].rr_title;
  					var rr_content = vo[i].rr_content;
  					var ceq_code = vo[i].ceq_code;
  					var rr_repair_type = vo[i].rr_repair_type;
  					var	rr_cost = vo[i].rr_cost;

  					
  					var cas_state = vo[i].cas_state;
  					if(cas_state == 1){
  						as_state = "미처리";
  					}else if(cas_state == 2){
  						as_state = "처리중";
  					}else if(cas_state == 3){
  						as_state = "완료";
  					}
  					
  					var reg_date = vo[i].rr_reg_date;

  					var pa = new Date(reg_date);
  					var year = pa.getFullYear();
  					
  					var month = (1+pa.getMonth());
  					if(month < 10){
  						month = "0" +month;
  					}
  					var day = pa.getDate();
  					if(day < 10){
  						day = "0" +day;
  					}
  					
  					
  				}
  				
  			},
  			error : function(){
  				alert("전산 오류로 인하여 수정에 실패하였습니다.");
  			}
  		});
    }
    
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
            
                <!-- 페이지 내용 입력 공간 -->
            
                
                <!-- Start Content-->
                    <div class="container-fluid">
                    
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">전산</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">설비유지</a></li>
                                            <li class="breadcrumb-item active">수리 현황</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">수리 현황</h4>
                                </div>
                            </div>
                        </div>
                        
                        <!-- start page title -->
                        <div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-body table-responsive">
										<div class="form-group row">
											<label class="col-md-1 col-form-label" for="simpleinput">출력구분</label>
											<div class="col-md-4 input-group">
												<form id="select1" style="width:400px; text-align:center;">														<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
													<select class=" form-control" name="rr_repair_type" onchange="SelectRR(this.value);">
														<option value="" selected disabled></option>								
														<option value="내부수리">내부수리</option>
														<option value="외부수리">외부수리</option>
													</select>
												</form>
											</div>	
										</div>
									</div>
								</div>
							</div>
						</div>
                        <!-- end page title --> 
						
					<div id="firstR">	
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>수리의뢰코드</th>
                                                <th>장비관리번호</th>
                                                <th>장비명</th>
                                                <th>의뢰인</th>
                                                <th>의뢰일</th>
                                                <th>완료요구일</th>
                                                <th>고장내용</th>
                                            </tr>
                                            </thead>
    
                                            <tbody id="result">
                                            </tbody>
                                            
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                       </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
                
               
               
               <!-- 페이지 내용 입력 공간 종료 -->
               
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