<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../setting.jsp" %>
<script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/pj/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	
        	    	
        	
        	function enterinsert() {
       			
       			$(".chit-table-bordered-primary tbody").append('<tr>' +
       					'<td><input type="text" class="form-control" placeholder="mm/dd/yyyy" name = data-provide="datepicker" data-date-autoclose="true"></td>'+
                        '<td><input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                       '</tr>');
                    count = count + 1;
          		
        	}
        	
        	function enterdelete() {
       		
        		
       			$(".chit-table-bordered-primary tbody").empty('<tr>' +
       					'<td><input type="text" class="form-control" placeholder="mm/dd/yyyy" name = data-provide="datepicker" data-date-autoclose="true"></td>'+
                        '<td><input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>'+
                       '</tr>');
                    count = 0;
          		
    
        	}
        	
        </script>
        <!-- Table datatable css -->
        <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
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
                <div class = "containerfluid">
            		<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">재무</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">예산</a></li>
                                            <li class="breadcrumb-item active">예산신청입력</li>
                                        </ol>
								</div>
								<h4 class="page-title">예산신청입력</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
                
                	<div class="row">
						<div class="col-sm-12">
							<div class="card">
							 <form name = "FT_apply_input" action = "FT_apply_input_pro" method = "post">
							 <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
								<div class="card-body">
                                         <!-- 기간 달력 여기 넣고 -->
                                         <!--  <label class="col-md-1 col-form-label" for="simpleinput">기간</label> 
									      <div class="col-md-2 input-group">
										  	<input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true">
                                          	<div class="input-group-append"><span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span></div>
										  </div>
										  <label>~</label>
										  <div class="col-md-2 input-group">
											 <input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true">
                                             <div class="input-group-append"><span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span></div>
										  </div>	
                                       	<input type="button" class="" value = "검색">
                                       	<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
                                       	<label class="col-md-1 col-form-label" for="simpleinput">부서</label>
                                       		<div class="col-md-2">
												<input type="text" class="form-control" name="e_name" placeholder = "부서명">
											</div>
										<input type="button" class="" value = "검색">
										<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label> -->
										 <div class="form-group text-right mr-1">
		                                                <button class="btn btn-primary waves-effect waves-light mr-1" type="button" onclick = "enterinsert(0);">
		                                                   		 추가
		                                                </button>
		                                                <button class="btn btn-primary waves-effect waves-light mr-1" type="button" onclick = "enterdelete(0);">
		                                                   		 삭제
		                                                </button>
		                                                </div>
		                                                
                                       <div class="table-responsive" style = "margin: 15px 0px 50px">
                                      
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:10%;">
                                                <col style = "width:10%">
                                                <col style = "width:15%;">
                                                <col style = "width:20%;">
                                                <col style = "width:15%;">
                                                <col style = "width:10%;">
                                                <col style = "width:20%;">
                                                <thead>
                                                    <tr>
		                                                <th>시작일</th>
		                                                <th>종료일</th>
		                                                <th>예산코드</th>
		                                                <th>예산과목명</th>
		                                                <th>금액</th>
		                                                <th>부서</th>
		                                                <th>비고</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <tr>
		                                                <td><input type="text" class="form-control" placeholder="mm/dd/yyyy" name = data-provide="datepicker" data-date-autoclose="true"></td>
		                                                <td><input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                            </tr>
		                                            
		                                        </tbody>
		                                       
                                            </table>
		                                    </div>
		                                    
									</div>
									<div class="form-group text-right mr-1">
                                            <button class="btn btn-primary waves-effect waves-light mr-1" type="submit">입력</button>
                                            <button type="reset" class="btn btn-secondary waves-effect waves-light mr-1">Cancel</button>
                                    </div>
                                    </form>
		                        </div> 
							</div>
						</div>		
					</div>
                
               
               </div>
               <!-- 페이지 내용 입력 공간 종료 -->
               
                <%@ include file="../footer.jsp" %>

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
    </body>
</html>