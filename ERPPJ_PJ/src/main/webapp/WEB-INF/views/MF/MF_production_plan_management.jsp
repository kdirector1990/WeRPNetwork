<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="../setting.jsp" %>
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
									<li class="breadcrumb-item active">생산계획관리</li>
								</ol>
							</div>
							<h4 class="page-title">생산계획관리</h4>
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
								<p class="sub-header">관리</p>
								<hr>
							<div class="form-horizontal"  style="overflow-y:auto;">
                               	<form id="manageMF_plan" action="" method="post" >
                               	<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
								<table id="datatable"
									class="table m-0 table-bordered table-hover"
									style="border-collapse: collapse; border-spacing: 0; width: 100%;">
									<col style = "width:12%">
                                    <col style = "width:13%;">
                                    <col style = "width:10%">
                                    <col style = "width:10%;">
                                    <col style = "width:10%;">
                                    <col style = "width:11%;">
                                    <col style = "width:11%;">
                                    <col style = "width:13%;">
                                    <col style = "width:10%;">
									
									<thead class="bg-primary text-white">
										<tr>
											<th>생산계획코드</th>
											<th>BOM코드</th>
											<th>제품계정코드</th>
											<th>기간시작</th>
											<th>기간종료</th>
											<th>예상 생산 원가</th>
											<th>목표 생산 수량</th>
											<th>전결라인코드</th>
											<th>전결현황코드</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="list" items="${dto}">
											<tr>
												<td>${list.p_pp_code}</td>
												<td>${list.bom_code}</td>
												<td>${list.product_code}</td>
												<td>${list.start_date}</td>
												<td>${list.end_date}</td>
												<td>${list.ef_cost}</td>
												<td>${list.ef_amount}</td>
												<td>${list.eas_code}</td>
												<td>${list.e_approval_code}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								</form>
								</div>

								<div class="result">
									 <br>
									<form id="MF_production_plan_enrollment">
										<input type='hidden' name="${_csrf.parameterName }"
											value="${_csrf.token }"> <br>
										<table id="datatable2"
											class="table table-striped dt-responsive nowrap"
											style="border-collapse: collapse; border-spacing: 0;">
											<thead>
											</thead>
											
											<tbody>
											</tbody>
										</table>
									</form>		
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->

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
    <script type="text/javascript">
    
    function searchProCode() {
		window.open("MF_searchProCode", "searchBomCode", "menubar=no, width=380px, height = 520px location=no,status=no,scrollbars=yes");
	}
    
     $("#datatable tbody tr").click(function(){
    	 
			if($(".plandiv") != null){
				$(".plandiv").remove();
			}
			
			var tdArr = new Array();	// 배열 선언
			
			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();
			
			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i){
				tdArr.push(td.eq(i).text());
			});
			
			
			// td.eq(index)를 통해 값을 가져올 수도 있다.
			var p_pp_code = td.eq(1).text();
   			var bom_code = td.eq(2).text();
   			var product_code = td.eq(3).text();
   			var start_date = td.eq(4).text();
   			var end_date = td.eq(5).text();
   			var ef_cost = td.eq(6).text();
   			var ef_amount = td.eq(7).text();
			
   			tdArr.push(p_pp_code);
   			tdArr.push(bom_code);
   			tdArr.push(product_code);
   			tdArr.push(start_date);
   			tdArr.push(end_date);
   			tdArr.push(ef_cost);
   			tdArr.push(ef_amount);
   			
   			$('.result').show();
   			
   			$('#datatable2 > tbody:last').append('<div class="plandiv">'+'<input type="hidden" name="p_pp_code" value="'+tdArr[0]+'"><div class="form-group row">'
  					+ '<label class="col-md-2 col-form-label" for="example-email">생산계획 코드</label>'        
  						+ '<div class="col-md-10">'
  				    		+ '<input type="text" name="p_pp_code" value="'+tdArr[0]+'" class="form-control" disabled>' 
  				        +'</div>'
  				    +'</div>'
  				    +'<div class="form-group row">'
  			        +'<label class="col-md-2 col-form-label" for="example-email">BOM코드</label>'
  			        	+ '<div class="col-md-10">'
  			            	+ '<input type="text" name="bom_code" id="bom_code" value="'+tdArr[1]+'" class="form-control">'
  			        	+ '</div>'
  			    	+ '</div>'
  				    + '<div class="form-group row">'
  			        + '<label class="col-md-2 col-form-label" for="simpleinput">제품계정코드</label>' 
  			        	+ '<div class="col-md-10">'
  			            	+ '<input type="text" name="product_code" id="product_code" value="'+tdArr[2]+'" id="simpleinput" class="form-control" onclick="searchProCode();">'
  			            	+ '<input type="text" name="product_name" id="product_name" id="simpleinput" class="form-control" disabled>' 
  			        	+ '</div>'
  			    	+'</div>'
  			    	+ '<div class="form-group row">'
  			        + '<label class="col-md-2 col-form-label" for="example-textarea">기간시작</label>'
  			        	+ '<div class="col-md-10">'
  			        	+ '<input type="text" name="start_date" data-provide="datepicker" data-date-autoclose="true" value="'+tdArr[3]+'" id="simpleinput" class="form-control" >'
  			        	+ '</div>'
  			    	+ '</div>'
  			    	+ '<div class="form-group row">'
  			        + '<label class="col-md-2 col-form-label" for="simpleinput">기간종료</label>'
  			        	+ '<div class="col-md-10">'
  			            	+ '<input type="text" name="end_date" data-provide="datepicker" data-date-autoclose="true" value="'+tdArr[4]+'" id="simpleinput" class="form-control">'
  			        	+ '</div>'
  			    	+ '</div>'
  			    	+  '<div class="form-group row">'
  			        + '<label class="col-md-2 col-form-label" for="example-textarea">예상 생산 원가</label>'
  			        	+'<div class="col-md-10">'
  			            	+ '<input type="text" name="ef_cost" value="'+tdArr[5]+'" id="simpleinput" class="form-control" >'
  			        	+ '</div>'
  			    	+ '</div>' 
  			    	+  '<div class="form-group row">'
  			        + '<label class="col-md-2 col-form-label" for="example-textarea">목표 생산 수량</label>'
  			        	+'<div class="col-md-10">'
  			            	+ '<input type="text" name="ef_amount" value="'+tdArr[6]+'" id="simpleinput" class="form-control" >'
  			        	+ '</div>'
  			    	+ '</div>' 
  			    	+ '<div class="form-group text-right mb-0">'
  						+ '<button type="button" id="btnRe" class="btn btn-outline-dark waves-effect waves-light" onclick="updatePlan();">수정</button>'
  						+ '<button type="button" id="btnDel" class="btn btn-outline-dark waves-effect waves-light" onclick="deletePlan();">폐기</button>'
  					+ '</div>'
  					+'</div>'
  				    );
  			
		});
     
     function updatePlan(){
		 var param = $("#MF_production_plan_enrollment").serializeArray();
		 alert(JSON.stringify(param));
		$.ajax({
			url: '/erp/MF_updateProductionPlanPro',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(param){
				alert("수정되었습니다.");
				location.reload();
			},
			error : function(){
				alert("수정에 실패하였습니다.");
			}
			
		});
	}
     
     function deletePlan(){
		 var param = $("#MF_production_plan_enrollment").serializeArray();
		 alert(JSON.stringify(param));
		$.ajax({
			url: '/erp/MF_deleteProductionPlanPro',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(param){
				alert("삭제되었습니다.");
				location.reload();
			},
			error : function(){
				alert("삭제에 실패하였습니다.");
			}
			
		});
	}
    </script>    
  
    </body>
</html>