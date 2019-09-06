<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	#update{
		display: none;
	}
</style>
    <%@ include file="../setting.jsp" %>
    
<script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
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
	
	function sunyoungJoa(code){
		alert(code);
		$.ajax({
			url: '/erp/CT_select_code?${_csrf.parameterName }=${_csrf.token }&ceq_code='+code,
			type: 'POST',
			data : {'ceq_code' : code},
			dataTpye: 'json',
			success: function(param){
				document.getElementById("update").style.display="block";
				alert("자산을 입력하였습니다.");
			},
			error : function(){
				alert("전산 오류로 인하여 입력에 실패하였습니다.");
			}
		});
	}
	
	  function changeSelect(value){
		var param = $("#select1").serializeArray();
		$.ajax({
			url: '/erp/CT_select_type',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				
				$('#result').empty();
				
				for(var i = 0; i < vo.length; i++){
					var ceq_code = vo[i].ceq_code; 
					var ceq_name = vo[i].ceq_name; 
					var ceq_type = vo[i].ceq_type; 
					
					var acquire_date = vo[i].ceq_acquire_date; 
					var pa = new Date(acquire_date);
					var year = pa.getFullYear();
					
					var month = (1+pa.getMonth());
					if(month <10){
						month = "0" +month;
					}
					var day = pa.getDate();
					if(day <10){
						day = "0" +day;
					}
					var ceq_acquire_date = year + "-" + month + "-" +day; 
					
					var ceq_department_code = vo[i].department_code; 
					var ceq_location = vo[i].ceq_location; 
					var ceq_prime_cost = addComma(vo[i].ceq_prime_cost); 
					var ceq_durable = vo[i].ceq_durable; 
					var ceq_depreciation = vo[i].ceq_depreciation; 
					var ceq_depreciation_type = vo[i].ceq_depreciation_type; 
					
					 $('#result').append('<tr class="spoat" onclick="sunyoungJoa('+ceq_code+')"><td>'+ceq_code+'</td><td>'+
						ceq_name + '</td><td>'+
						ceq_type + '</td><td>'+
						ceq_acquire_date + '</td><td>'+
						ceq_department_code + '</td><td>'+
						ceq_location  + '</td><td>'+
						ceq_prime_cost  + '</td><td>'+
						ceq_durable  + '</td><td>'+
						ceq_depreciation  + '</td><td>'+
						ceq_depreciation_type  + '</td></tr>');
					 
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
					        '<script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"/>'+
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
				alert("전산 오류로 인하여 불러오기에 실패하였습니다.");
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
                                    <h4 class="page-title">전산 설비 관리</h4>
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
													<form id="select1" style="width:400px; text-align:center;">
														<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
														<select class=" form-control" name="ceq_type" onchange="changeSelect(this.value);">
															<option value="" selected disabled></option>								
															<option value="보유">보유</option>
															<option value="대여">대여</option>
															<option value="폐기">폐기</option>
														</select>
													</form>
												</div>
												<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
												<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
												<div class="col-md-4 input-group">
												<button type="button" id="btnTCT" class="btn btn-outline-dark waves-effect waves-light width-md">수정</button>&nbsp;
    											<button type="button"  class="btn btn-outline-dark waves-effect waves-light width-md">폐기</button>
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
                                            	<th>전산설비코드</th>
			                                    <th>설비명</th>
			                                    <th>보유구분</th>
			                                    <th>구입/대여일</th>
			                                    <th>사용부서</th>
			                                    <th>위치</th>
			                                    <th>매입가</th>
			                                    <th>예상내용연수</th>
			                                    <th>감가상각여부</th>
			                                    <th>감가상각법</th>
                                            </tr>
                                            </thead>
                                            <tbody id = "result">
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                       <div id="update">
                        <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
										<div class="table-responsive" style = "margin: 15px 0px 50px">
											<div id="result2" class="card-body">
												<!-- 상세 페이지 출력 위치 -->
												<table class="table mb-0">
													<tr>
														<th>전산설비코드</th>
														<th>설비명</th>
														<th>보유구분</th>
														<th>구입일</th>
														<th>사용부서</th>
														<th>위치</th>
														<th>매입가</th>
														<th>예상내용연수</th>
														<th>감가상각여부</th>
														<th>감가상각법</th>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
                         <!-- end container-fluid -->

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
        
        
    <script type="text/javascript">
    
    
  //콤마 찍기
  function addComma(num) {
     	  var regexp = /\B(?=(\d{3})+(?!\d))/g;
     	  return num.toString().replace(regexp, ',');
     	}
  
    function comma(obj) {
        var regx = new RegExp(/(-?\d+)(\d{3})/);
        var bExists = obj.indexOf(".", 0);//0번째부터 .을 찾는다.
        var strArr = obj.split('.');
        while (regx.test(strArr[0])) {//문자열에 정규식 특수문자가 포함되어 있는지 체크
            //정수 부분에만 콤마 달기 
            strArr[0] = strArr[0].replace(regx, "$1,$2");//콤마추가하기
        }
        if (bExists > -1) {
            //. 소수점 문자열이 발견되지 않을 경우 -1 반환
            obj = strArr[0] + "." + strArr[1];
        } else { //정수만 있을경우 //소수점 문자열 존재하면 양수 반환 
            obj = strArr[0];
        }
        return obj;//문자열 반환
    }
  
  //input 태그 콤마 달기
    function inputNumberFormat(obj) {
   	    obj.value = comma(obj.value);
   	}
    
    var items = [];
    </script>
    </body>

</html>