<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../setting.jsp" %>
    <script type="text/javascript">
        
        function searchProCode() {
    		window.open("MF_searchProCode", "searchBomCode", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
    	}
        
        function planInsert(){
    		var param = $("#MF_production_plan_enrollment").serializeArray();
    		alert(JSON.stringify(param));
    		$.ajax({
    			url: '/erp/MF_production_plan_enrollmentPro',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(param){
    				alert("생산계획등록 성공");
    				location.reload();
    			},
    			error : function(){
    				alert("생산계획등록 실패");
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
            
            <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                	<div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">제조</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">생산관리</a></li>
                                            <li class="breadcrumb-item active">생산계획등록</li>
                                        </ol>
                                     </div>
                                    <h4 class="page-title">생산계획등록</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <!-- 생산 계획 등록 내용  -->
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">생산계획</h4>
								<p class="sub-header">등록</p>

								<form id="MF_production_plan_enrollment" name="insertMFPlan">
									<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
									<div class="form-group">
										<label>제품계정코드</label> <input type="text" name="product_code" id="product_code"
											class="form-control" required placeholder="제품계정코드" onclick="searchProCode();" />
									</div>
									<div class="form-group">
										<label>BOM코드</label> <input type="text" name="bom_code" id="bom_code"
											class="form-control" required placeholder="BOM코드" readonly/>
									</div>
									<div class="form-group">
										<label>제품명</label> <input type="text" name="product_name" id="product_name"
											class="form-control" placeholder="제품명" disabled/>
									</div>
									<div class="form-group">
										<label>기간시작</label>
										<input type="text" name="start_date" class="form-control"
											placeholder="yyyy/mm/dd" data-provide="datepicker"
											data-date-autoclose="true">
									</div>
									<div class="form-group">
										<label>기간종료</label>
										<input type="text" name="end_date" class="form-control"
											placeholder="yyyy/mm/dd" data-provide="datepicker"
											data-date-autoclose="true">
									</div>
									<div class="form-group">
										<label>예상 생산 원가</label> <input type="number" name="ef_cost"
											class="form-control" required placeholder="예상 생산 원가" />
									</div>
									<div class="form-group">
										<label>목표 생산 원가</label> <input type="number" name="ef_amount"
											class="form-control" required placeholder="목표 생산 원가" />
									</div>
									<div class="form-group mb-0">
										<div>
											<button type="button" onclick="planInsert();"
												class="btn btn-primary waves-effect waves-light mr-1">
												Submit</button>
											<button type="reset"
												class="btn btn-secondary waves-effect waves-light">
												Cancel</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->



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
    
    <!-- Datatable plugin js -->
    <script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
    <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>
        
    </body>
</html>