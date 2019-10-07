<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
#firstR {
	display: none;
}

#seoncdR {
	display: none;
}
</style>

<%@ include file="../setting.jsp"%>

<link
	href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css"
	rel="stylesheet" type="text/css" />
<link
	href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript">
    
    var searchCount = 1;
    
    function SelectRR(type){
    	$.ajax({
  			url: '/erp/CT_Select_RP?${_csrf.parameterName }=${_csrf.token }',
  			type: 'POST',
  			data : {'rr_repair_type' : type},
  			dataTpye: 'json',
  			success: function(vo){
  				$('#result').empty();
  				document.getElementById("seoncdR").style.display="none";
  				document.getElementById("firstR").style.display="block";
  				var as_state = "";
  				for(var i = 0; i < vo.length; i++){
  					var rr_code = vo[i].rr_code;
  					var rr_title = vo[i].rr_title;
  					var rr_content = vo[i].rr_content;
  					var ceq_code = vo[i].ceq_code;
  					var rr_repair_type = vo[i].rr_repair_type;
  					var	rr_cost = vo[i].rr_cost;
  					var rr_state = vo[i].rr_state;
  					
  					if(rr_state == 1){
  						as_state = "미처리";
  					}else if(rr_state == 2){
  						as_state = "완료";
  					}else if(rr_state == 3){
  						as_state = "삭제";
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
  					
  					var rr_reg_date = year + "-" + month + "-" + day;
  					
  					
  					$("#result").append('<tr onclick="RepairUp(\''+rr_code+'\')"><td>'
  							+ rr_code + "</td><td>"
  							+ rr_reg_date + "</td><td>"
  							+ rr_title + "</td><td>"
  							+ as_state + "</td><td>"
  							+ rr_repair_type + "</td><td>"
  							+ rr_cost + "</td></tr>"
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
  				alert("전산 오류로 인하여 수정에 실패하였습니다.");
  			}
  		});
    }
    
    function RepairUp(code){
    	$.ajax({
  			url: '/erp/CT_update_RPW?${_csrf.parameterName}=${_csrf.token }&rr_code='+code,
  			type: 'POST',
  			dataTpye: 'json',
  			success: function(vo){
  				
  				$('#result2').empty();
  				document.getElementById("seoncdR").style.display="block";
  				
  					var rr_code = vo.rr_code;
					var rr_title = vo.rr_title;
					var rr_content = vo.rr_content;
					var ceq_code = vo.ceq_code;
					var rr_repair_type = vo.rr_repair_type;
					var	rr_cost = vo.rr_cost;

					
					var rr_state = vo.rr_state;
					if(rr_state == 1){
						as_state = "미처리";
					}else if(rr_state == 2){
						as_state = "완료";
					}else if(rr_state == 3){
						as_state = "삭제";
					}
					
					var reg_date = vo.rr_reg_date;

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
					
					var rr_reg_date = year + "-" + month + "-" + day;
  				
  				if(isNaN != true){
  					$('#result2').append('<input type="hidden" name="rr_code" value="'+rr_code+'">'
  							+ '<div class="form-group row">'
  		  					+ '<label class="col-md-2 col-form-label" for="example-email">작성날짜</label>'        
  		  						+ '<div class="col-md-10">'
  		  				    		+ '<input type="date" name="rr_reg_date" value="'+rr_reg_date+'" class="form-control" disabled>' 
  		  				        +'</div>'
  		  				    +'</div>'
  		  					+ '<div class="form-group row">'
		  					+ '<label class="col-md-2 col-form-label" for="example-email">제목</label>'        
		  						+ '<div class="col-md-10">'
		  				    		+ '<input type="text" name="rr_title" value="'+rr_title+'" class="form-control">' 
		  				        +'</div>'
		  				    +'</div>'
		  				  	+ '<div class="form-group row">'
		  			        + '<label class="col-md-2 col-form-label" for="example-textarea">내용</label>'
		  			        	+ '<div class="col-md-10">'
		  			            	+ '<textarea name="rr_content" class="form-control" rows="5" id="example-textarea">'+rr_content+'</textarea>'
		  			        	+ '</div>'
		  			    	+ '</div>'
		  			    	+ '<div class="form-group row">'
								+ '<label class="col-md-2 col-form-label" for="example-email">수리방법</label>'
								+ '<div class="col-md-10">'
									+ '<select name="rr_repair_type" class="form-control">'
										+ '<option value="'+rr_repair_type+'" disabled>선택</option>'
										+ '<option value="내부수리">내부수리</option>'
										+ '<option value="외부수리">외부수리</option>>'
									+ '</select>'
								+ '</div>'
							+ '</div>'
							+ '<div class="form-group row">'
	                           + '<label class="col-md-2 col-form-label" for="example-email">금액</label>'
	                           + '<div class="col-md-10">'
	                          	 + '<input type="text" name="rr_cost" value="'+rr_cost+'" class="form-control" onkeyup="removeChar(event); inputNumberFormat(this);" />'
	                           + '</div>'
	                       	+ '</div>'
  		  			    	+ '<div class="form-group text-right mb-0">'
  		  						+ '<button onclick="updateRP();" type="button" class="btn btn-outline-primary waves-effect waves-light">수리완료</button>'
  		  						+ '<button onclick="trashRP();" type="button" class="btn btn-outline-primary waves-effect waves-light">삭제</button>'
  		  					+ '</div>'
  		  				    );

  				}
  					  				
  			},
  			error : function(){
  				alert("전산 오류로 인하여 수정에 실패하였습니다.");
  			}
  		});
    }
    
    function updateRP(){
    	var param = $("#RPWirteForm").serializeArray();
    	$.ajax({
  			url: '/erp/CT_Update_RP',
  			type: 'POST',
  			data : param,
  			dataTpye: 'json',
  			success: function(updateCnt){
  				
  				if(updateCnt == 1){
  					document.getElementById("seoncdR").style.display="none";
  	  				alert("수리일지를 수정하였습니다.");
  	  				window.location.href="http://smueoot.dlinkddns.com:8087/erp/CT_reqair_list";
  				}
  			},
  			error : function(){
  				alert("전산 오류로 인하여 일지 수정에 실패하였습니다.");
  			}
  		});
    }
    
    function trashRP(){
    	var param = $("#RPWirteForm").serializeArray();
    	$.ajax({
  			url: '/erp/CT_Delete_RP',
  			type: 'POST',
  			data : param,
  			dataTpye: 'json',
  			success: function(deleteCnt){
  				
  				if(deleteCnt == 1){
  					document.getElementById("seoncdR").style.display="none";
  	  				alert("수리일지를 폐기하였습니다.");
  	  			window.location.href="http://smueoot.dlinkddns.com:8087/erp/CT_reqair_list";
  				}
  			},
  			error : function(){
  				alert("전산 오류로 인하여 일지 폐기에 실패하였습니다.");
  			}
  		});
    }
    
    </script>
</head>
<body>
	<!-- Begin page -->
	<div id="wrapper">
		<%@ include file="../sidebar.jsp"%>
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
									<li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">전산</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">설비유지비</a></li>
									<li class="breadcrumb-item active">수리현황</li>
								</ol>
							</div>
							<h4 class="page-title">수리현황</h4>
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
										<form id="select1" style="width: 400px; text-align: center;">
											<input type="hidden" name="${_csrf.parameterName }"
												value="${_csrf.token }"> <select
												class=" form-control" name="rr_repair_type"
												onchange="SelectRR(this.value);">
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

									<table id="datatable"
										class="table table-striped table-bordered dt-responsive nowrap"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead class="bg-primary text-white">
											<tr>
												<th>수리코드</th>
												<th>등록일</th>
												<th>제목</th>
												<th>처리상태</th>
												<th>수리방법</th>
												<th>금액</th>
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

				<div id="seoncdR">
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<form id="RPWirteForm">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div id="result2"></div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- end container-fluid -->


		</div>
		<!-- end content -->



		<!-- 페이지 내용 입력 공간 종료 -->

		<%@ include file="../footer.jsp"%>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

	<!-- plugins -->
	<script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
	<script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
	<!-- plugins -->
	<script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
	<script
		src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
	<script
		src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

	<!-- dashboard init -->
	<script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
	<!-- Init js-->
	<script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
	<div id="bodyappend"></div>

	<script type="text/javascript">
      	//문자 지우기
       function removeChar(event) {
       	    event = event || window.event;
       	    var keyID = (event.which) ? event.which : event.keyCode;
       	    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
       	        return;
       	    else
       	    	 event.target.value = event.target.value.replace(/[^-\.0-9]/g, "");
       }
       
      	//콤마 찍기
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
    	</script>

</body>
</html>