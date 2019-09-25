<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<link href="/erp/resources/assets/libs/dropify/dropify.min.css"
	rel="stylesheet" type="text/css" />
<!-- Table datatable css -->
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
	href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	var a_count = 1;
        	var a_subcount = 1;
        	var frontcursor;
        	var updatekey = 0;
        	var selectval;
        	var focusval;
        	
        	function focuse(cc) {
    			$("tbody *").css("background-color", "");
    			$("#code" + cc).parent().css("background-color", "#D6EAF8");
    			$("#code" + cc).css("background-color", "#D6EAF8");
    			$("#name" + cc).parent().css("background-color", "#D6EAF8");
    			$("#name" + cc).css("background-color", "#D6EAF8");
    			if(!$("#code" + cc).val()){
    				focusval = "";
                   	$("#update").css("display", "none");
                   	$("#submit").css("display", "");
    				return false;
    			} else {
    				focusval = cc;
    			}
    			
    			$.ajax({
                    type : "POST",
                    url : "/erp/FT_BuildingOneSelect?${_csrf.parameterName }=${_csrf.token }&srhval=" + $("#code" + cc).val(),
                    success : function(data) {
                        alert(data);
	                   	$("#update").css("display", "");
	                   	$("#submit").css("display", "none");
	                   	$("input[name=buildingName]").val(data.buildingName);
	                   	$("input[name=Address]").val(data.address);
	                   	$("input[name=buyDate]").val(data.buyDate.substring(0,10));
	                   	$("input[name=buyPrice]").val(data.buyPrice);
	                   	$("input[name=departmentCode]").val(data.departmentCode);
	                   	$("input[name=departmentName]").val(data.departmentName);
	                   	$("input[name=thinkYear]").val(data.thinkYear);
	                   	if(data.gamga == 1){
	                   		$("#yes").attr("checked", "checked");
	                   	} else {
	                   		$("#no").attr("checked", "checked");
	                   	}
                    },
                    error : function(e) {
                           alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                    }
            	});
    		}
        	
        	function update() {
        		var obj = new Object();
        		var jsonData;
        		obj.buildingCode = $("#code" + focusval).val();
        		obj.buildingName = $("input[name=buildingName]").val();
        		obj.Address = $("input[name=Address]").val();
        		obj.buyDate = $("input[name=buyDate]").val();
        		obj.buyPrice = $("input[name=buyPrice]").val();
        		obj.thinkYear = $("input[name=thinkYear]").val();
        		obj.departmentCode = $("input[name=departmentCode]").val();
        		obj.gamga = $("input[name=gamga]").val();
        		obj.gamgaWay = $("input[name=gamgaWay]").val();
               	
        		// json 객체를 String 객체로 변환 -- 
        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
        		jsonData = JSON.stringify(obj);
        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
        		
        		$.ajax({
                       type : "POST",
                       url : "/erp/FT_BuildingUpdate?${_csrf.parameterName }=${_csrf.token }",
                       data : jsonData,
                       contentType : 'application/json;charset=UTF-8',
                       success : function(data) {
                              alert(data);
                              $("#name" + focusval).val($("input[name=buildingName]").val());
                       },
                       error : function(e) {
                              alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                       }
               });
        	}
        	
        	function deleted() {
        		var obj = new Object();
        		var jsonData;
        		obj.key = $("#code" + focusval).val();
               	
        		// json 객체를 String 객체로 변환 -- 
        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
        		jsonData = JSON.stringify(obj);
        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
        		
        		$.ajax({
                       type : "POST",
                       url : "/erp/FT_BuildingDelete?${_csrf.parameterName }=${_csrf.token }",
                       data : jsonData,
                       contentType : 'application/json;charset=UTF-8',
                       success : function(data) {
                              alert(data);
                              location.reload();
                       },
                       error : function(e) {
                              alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                       }
               });
        	}
        	
        	function allCheck(dd) {
        		if($("img[name=" + dd + "]").attr("src") == "/erp/resources/img/checked.png"){
        			$("img[name=" + dd + "]").attr("src", "/erp/resources/img/checked2.png");
        			$("input[type='checkbox']").prop("checked", true);
        		} else {
        			$("img[name=" + dd + "]").attr("src", "/erp/resources/img/checked.png");
        			$("input[type='checkbox']").prop("checked", false);
        		}
        	}
        	
        	function departmentlist(departmentcode) {
            	var popupX = Math.ceil((window.screen.width - 363)/2);
            	var popupY = Math.ceil((window.screen.height - 528)/2);
        		var url = "FT_department_list";
        		window.open(url, "department_list", "menubar=no, width=363px, height = 528px, left=" + popupX + ", top=" + popupY);
        		
        	}
        	
        </script>
</head>

<body>

	<!-- Begin page -->
	<div id="wrapper">


		<%@ include file="../sidebar.jsp"%>

		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
                                       <li class="breadcrumb-item"><a href="javascript: void(0);">Codefox</a></li>
                                       <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                       <li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">건물 관리</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="accordion" id="accordion-test">
								<div class="card mb-2">
	                                <div class="card-header bg-primary">
	                                    <h4 class="card-title font-14 mb-0">
	                                        <a href="#" class="collapsed text-white" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
	                                           	건물 목록
	                                        </a>
	                                    </h4>
	                                </div>
	                                <div id="collapseOne" class="collapse" data-parent="#accordion-test">
	                                    <div class="card-body">
	                                        <div class="table-responsive" style = "margin: 15px 0px 15px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col>
                                                <col>
                                                <thead>
                                                    <tr>
		                                                <th>코드</th>
		                                                <th>건물명</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <c:set var="count" value="0"/>
				                                  	<c:if test="${building != null}">
				                                   		<c:forEach var = "sub" items="${building}">
				                                    		<tr>
				                                    			<td><input type="text" id = "code${count}" class="form-control" data-toggle="input-mask" readonly onclick="focuse(${count});" value = "${sub.buildingCode}" style = "width: 100%; -webkit-appearance: none; border:0px;"></td>
				                                    			<td><input type="text" id = "name${count}" class="form-control" data-toggle="input-mask" readonly onclick="focuse(${count});" value = "${sub.buildingName}" style = "width: 100%; -webkit-appearance: none; border:0px;"></td>
				                                    			<c:set var="count" value="${count+1}"/>
				                                    		</tr>
				                                   		</c:forEach>
				                                  	</c:if>
		                                            <tr>
		                                                <td><input type="text" id = "code${count}" class="form-control" data-toggle="input-mask" readonly onclick="focuse(${count});" style = "width: 100%; -webkit-appearance: none; border:0px;"></td>
				                                    	<td><input type="text" id = "name${count}" class="form-control" data-toggle="input-mask" readonly onclick="focuse(${count});" style = "width: 100%; -webkit-appearance: none; border:0px;"></td>
		                                            </tr>
		                                        </tbody>
                                            </table>
                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </div>
							<div class="card">
								<div class="card-body">
									<!-- 인적정보 -->
									<form action="FT_BuildingInsert" method="post">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<div class="col-sm-12">
											<div class="card-body table-responsive">
												<h4 class="header-title">건물 추가</h4>
												<div class="form-group row">
													<div class="col-md-5">
														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">건물명<span
																class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control"
																	name="buildingName" placeholder="건물명">
															</div>
														</div>

														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">건물주소<span
																class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="Address"
																	placeholder="건물주소">
															</div>
														</div>

														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">구입일<span
																class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="date" class="form-control" name="buyDate" placeholder = "구입일">
															</div>
														</div>

														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">구입가<span
																class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="buyPrice"
																	placeholder="구입가">
															</div>
														</div>
													</div>
													<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
													<div class="col-md-5">
														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">부서<span
																class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control"
																	name="departmentCode" style = "width:100px; display:inline;">
																<button type="button" onclick = "departmentlist(0);" class="btn btn-icon waves-effect waves-light btn-primary">
																	<i class="fas fa-search"></i>
																</button>
																<input type="text" class="form-control"
																	name="departmentName" style = "width:100px; display:inline;">
															</div>
														</div>
													
														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">예상내용연수<span
																class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control"
																	name="thinkYear" placeholder="예상내용연수">
															</div>
														</div>

														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">감가상각여부<span
																class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type = "radio" id = "yes" name = "gamga" value = "1"><label for="yes">여</label>
																<input type = "radio" id = "no" name = "gamga" value = "0"><label for="no">부</label>
															</div>
														</div>
														
														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">감가상각법<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="gamgaWay" value = "정액법" readonly>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div id = "submit" class="form-group text-right mb-0">
                                            <button class="btn btn-primary waves-effect waves-light mr-1" type="submit">
                                                Submit
                                            </button>
                                            <button type="reset" class="btn btn-secondary waves-effect">
                                                Cancel
                                            </button>
                                        </div>
									</form>
									<div id = "update" class="form-group text-right mb-0" style = "display:none;">
										<button class="btn btn-primary waves-effect waves-light mr-1" onclick="update();">
	                                        Update
	                                    </button>
	                                    <button class="btn btn-primary waves-effect waves-light mr-1" onclick="deleted();">
	                                        Delete
	                                    </button>
                                    </div>
								</div>
							</div>
							<!-- end container-fluid -->

						</div>
						<!-- end row -->

						<!-- end content -->

						

						<!-- ============================================================== -->
						<!-- End Page content -->
						<!-- ============================================================== -->
					</div>
				</div>
				<%@ include file="../footer.jsp"%>
			</div>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

</body>
</html>