<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<link href="/erp/resources/assets/libs/dropify/dropify.min.css" rel="stylesheet" type="text/css" />
<!-- Table datatable css -->
        <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
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
        	
        	function focuse(s) {
        		$(".chit-table-bordered-primary tbody *").focus(function() {
        			$(".chit-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        		});
        	}
        	
        	function enter(cc, dd) {
        		if(cc == "INPUT") {
        			var swit = 0;
        			var nowme = $("*[name=" + dd + "]").parent();
        			if(window.event.which == 13){
    					nowme.next().children().focus();
    					return false;
            		} else if(window.event.which == 9) {
            			$("*[name=" + dd + "]").parent().prev().children().focus();
            		} else if(window.event.which == 37) {
            			for(var i = 0; i < $("*[name=" + dd + "]").parent().prevAll().children().length; i++){
        					nowme.prev().children().focus();
        					return false;
        				}
            		} else if(window.event.which == 38) {
            			$("*[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) - 1) + "]").focus();
            		} else if(window.event.which == 39) {
        				for(var i = 0; i < $("*[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme.next().children().focus();
        					return false;
        				}
            		} else if(window.event.which == 40) {
            			$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) + 1) + "]").focus();
            		}
        		} else if(cc == "SELECT"){
        			if(window.event.which == 9) {
            			$("select[name=" + dd + "]").parent().prev().children().focus();
            		}
        		}
        	}
        	
        	function enterupdate(vv) {
        		var obj = new Object();
        		var jsonData;
        		frontcursor = $(".chit-table-bordered-primary tbody #enter" + vv).attr("name");
        		if(window.event.which == 9) {
        			$(".chit-table-bordered-primary tbody #enter" + vv).parent().prev().children().focus();
        		}
        		var nowme = $("#enter" + vv).parent();
				
                if(window.event.which == 37) {
                	updatekey = 1;
                	selectval = $("#enter" + vv).val();
          			for(var i = 0; i < $("#enter" + vv).parent().prevAll().children().length; i++){
    					nowme = nowme.prev();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
        		} else if(window.event.which == 38) {
                	updatekey = 1;
                	selectval = $("#enter" + vv).val();
                	$("#enter" + (vv-1)).focus();
					return false;
        		} else if(window.event.which == 39) {
        			updatekey = 1;
                	selectval = $("#enter" + vv).val();
    				for(var i = 0; i < $("#enter" + vv).parent().nextAll().children().length; i++){
    					nowme = nowme.next();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
                	$("#first" + (vv+1)).focus();
					return false;
        		} else if(window.event.which == 40) {
                	updatekey = 1;
                	selectval = $("#enter" + vv).val();
                	if($("#enter" + (vv+1)).attr("onchange") != "enterinsert(" + (vv+1) + ");"){
                    	$("#enter" + (vv+1)).focus();
                	}
					return false;
        		} else if(window.event.which == 13) {
                	updatekey = 2;
        			$(".chit-table-bordered-primary tbody #enter" + vv).onclick();
					return false;
        		}
        		
        		// 자바스크립트 객체 생성
        		obj.checkbox = $("*[name=checkbox" + vv + "]").val();
        		obj.code = $("*[name=code" + vv + "]").val();
        		obj.AccName = $("*[name=AccName" + vv + "]").val();
        		obj.type = $("*[name=type" + vv + "]").val();
        		
        		// json 객체를 String 객체로 변환 -- 
        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
        		jsonData = JSON.stringify(obj);
        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
        		
        		$.ajax({
                       type : "POST",
                       url : "/erp/FT_AccinputEx?${_csrf.parameterName }=${_csrf.token }",
                       data : jsonData,
                       contentType : 'application/json;charset=UTF-8',
                       success : function(data) {
                              // data는 서버로부터 전송받은 결과(JSON)이므로 바로 사용한다
                             /*  if (data.answer == 'success') {
                                      alert(data.name + '님 환영합니다.');
                                      var map = new MapArray();
                                      postData('/News/index.do', map);
                              } else if (data.answer == 'fail') {
                                      alert('아이디와 비번이 일치하지 않습니다.');
                              } else if (data.answer == 'error') {
                                      alert('원활한 접속이 이루어 지지 못했습니다. 관리자에게 문의하십시오.');
                              } */
                              alert(data);
                              if(updatekey == 0){
                    				
                                } else {
                              	 if(updatekey == 1){
                               	 	$("#enter" + vv).val(selectval);
                              	 } else if(updatekey == 2){
                                   	$("#first" + (vv+1)).focus();
                              	 }
                              	 updatekey = 0;
                                }
                       },
                       error : function(e) {
                              alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                       }
               });
        	}
        	
        	function enterinsert(cc) {
				var nowme = $("#enter" + cc).parent();
				
                if(window.event.which == 37) {
                	updatekey = 1;
                	selectval = $("#enter" + cc).val();
          			for(var i = 0; i < $("#enter" + cc).parent().prevAll().children().length; i++){
    					nowme = nowme.prev();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
        		} else if(window.event.which == 38) {
                	updatekey = 1;
                	selectval = $("#enter" + cc).val();
                	alert("#enter" + (cc-1));
                	$("#enter" + (cc-1)).focus();
					return false;
        		} else if(window.event.which == 39) {
        			updatekey = 1;
                	selectval = $("#enter" + cc).val();
    				for(var i = 0; i < $("#enter" + cc).parent().nextAll().children().length; i++){
    					nowme = nowme.next();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
                	$("#first" + (cc+1)).focus();
					return false;
        		}
       			$(".chit-table-bordered-primary tbody #enter" + cc).attr("onchange", "enterupdate(" + cc + ");");
       			$(".chit-table-bordered-primary tbody #enter" + cc).attr("onkeydown", "enterupdate(" + cc + ");");
       			$(".chit-table-bordered-primary tbody").append('<tr>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "code' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "AccName' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><select class="form-control" id = "enter' + count + '" onfocus = "focuse(this.name);" name = "type' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;" onkeydown = "enter(this.tagName,this.name);" onchange="enterinsert(' + count + ');">' +
                        '<option value="">== 선택 ==</option>' +
                        '<option value="일반">일반</option>' +
                        '<option value="매입">매입</option>' +
                        '<option value="매출">매출</option>' +
                   		'</select></td>' +
                       '</tr>');
                    count = count + 1;
       			 $(".chit-table-bordered-primary tbody #first" + count).focus();
       			 /* $.ajax({
            			url : '${pageContext.request.contextPath}/FT_chitupdate?data=' + vv, 
            			type : 'GET',
            			success : function(data) { // 콜백함수 - 정상적으로 처리되었을 때의 결과가 result에 들어간다.
            				// 변수명이 반드시 . html(result)일 필요는 없으나 위 콜백함수의 변수명 result와 일치해야 한다.
            				var text = "";
            				alert(data.length);
            				for(var i = 0; i<data.length; i++){
            					alert(data[i].name);
            					text += "<option value = " + data[i].price + ">" + data[i].name + "</option>";
            				}
            				$('input[name=key' + vv + ']').val(text);
            			},
            			error : function() {
            				alert('오류');
            			}
            		}); */
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사정보</a></li>
                                            <li class="breadcrumb-item active">인사정보등록</li>
                                        </ol>
								</div>
								<h4 class="page-title">인사정보등록</h4>
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
	                                           	일반 거래처 목록
	                                        </a>
	                                    </h4>
	                                </div>
	                                <div id="collapseOne" class="collapse show" data-parent="#accordion-test">
	                                    <div class="card-body">
	                                        <div class="table-responsive" style = "margin: 15px 0px 15px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col>
                                                <col>
                                                <thead>
                                                    <tr>
		                                                <th>코드</th>
		                                                <th>거래처명</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <tr>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "code0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "AccName0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>
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
									<form action="HR_inputProHR1" class="form-horizontal" method="post">
										<div class="col-sm-12">
											<div class="card-body table-responsive">
												<h4 class="header-title">거래처 추가</h4>
												<h4 class="header-title">&nbsp;</h4>
												<div class="form-group row">
													<div class="col-md-5">
														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">거래처명<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="customerName" placeholder = "거래처명">
															</div>
														</div>
													
														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">사업자명<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="bsName" placeholder = "거래처명">
															</div>
														</div>
														
														<div class="form-group row">
															<label class="col-lg-4 col-form-label" for="simpleinput">사업자등록번호<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="bsNumber" placeholder = "사업자등록번호">
															</div>
														</div>
														
														<div class="form-group row">	
															<label class="col-lg-4 col-form-label"
																for="simpleinput">대표자성명<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="bsMaster" placeholder = "한글이름">
															</div>
														</div>
														
														<div class="form-group row">	
															<label class="col-lg-4 col-form-label"
																for="simpleinput">업태<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="bsCondition" placeholder = "한글이름">
															</div>
														</div>
														
														<div class="form-group row">	
															<label class="col-lg-4 col-form-label"
																for="simpleinput">종목<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="bsLine" placeholder = "한글이름">
															</div>
														</div>
														
														<div class="form-group row">	
															<label class="col-lg-4 col-form-label"
																for="simpleinput">신용도<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="text" class="form-control" name="customerCredit" placeholder = "한글이름">
															</div>
														</div>
														
														<div class="form-group row">	
															<label class="col-lg-4 col-form-label"
																for="simpleinput">개업년월일<span class="text-danger">*</span></label>
															<div class="col-lg-8">
																<input type="date" class="form-control" name="bsStartdate" placeholder = "한글이름">
															</div>
														</div>
													</div>
													<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
														<div class="col-md-5">
															<div class="form-group row">
																<label class="col-lg-4 col-form-label" for="simpleinput">지점명<span class="text-danger">*</span></label>
																<div class="col-lg-8">
																	<input type="text" class="form-control" name="branchName" placeholder = "한글이름">
																</div>
															</div>
															
															<div class="form-group row">	
																<label class="col-lg-4 col-form-label"
																	for="simpleinput">거래상태<span class="text-danger">*</span></label>
																<div class="col-lg-8">
																	<select class="form-control" name = "state">
						                                                <option value="0">== 선택 ==</option>
						                                                <option value="1">일반</option>
						                                                <option value="2">매입</option>
						                                                <option value="3">매출</option>
						                                                <option value="4">금융기관</option>
						                                                <option value="5">카드사</option>
							                                       	</select>
																</div>
															</div>
															
															<div class="form-group row">	
																<label class="col-lg-4 col-form-label"
																	for="simpleinput">사업장소재지<span class="text-danger">*</span></label>
																<div class="col-lg-8">
																	<input type="text" class="form-control" name="bsAddress" placeholder = "한글이름">
																</div>
															</div>
															
															<div class="form-group row">	
																<label class="col-lg-4 col-form-label"
																	for="simpleinput">본점소재지<span class="text-danger">*</span></label>
																<div class="col-lg-8">
																	<input type="text" class="form-control" name="bsAddress2" placeholder = "한글이름">
																</div>
															</div>
															
															<div class="form-group row">	
																<label class="col-lg-4 col-form-label"
																	for="simpleinput">스캔파일명<span class="text-danger">*</span></label>
																<div class="col-lg-8">
																	<input type="file" class="dropify" name="scanfile"/>
																</div>
															</div>
														</div>	
													</div>
												</div>
											</div>
										<div class="form-group text-right mb-0">
                                            <button class="btn btn-primary waves-effect waves-light mr-1" type="submit">
                                                Submit
                                            </button>
                                            <button type="reset" class="btn btn-secondary waves-effect">
                                                Cancel
                                            </button>
                                        </div>
									</form>
								</div>
							</div>
							<!-- end container-fluid -->

						</div>
						<!-- end row -->

						<footer class="footer">
		                    <div class="container-fluid">
		                        <div class="row">
		                            <div class="col-md-6">
		                                2016 - 2019 &copy; Codefox theme by <a href="">Coderthemes</a>
		                            </div>
		                            <div class="col-md-6">
		                                <div class="text-md-right footer-links d-none d-sm-block">
		                                    <a href="#">About Us</a>
		                                    <a href="#">Help</a>
		                                    <a href="#">Contact Us</a>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </footer>

					</div>

					<!-- ============================================================== -->
					<!-- End Page content -->
					<!-- ============================================================== -->

				</div>
				<!-- END wrapper -->

				
			</div>
		</div>
	</div>
	

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>
	
        <%@ include file="../rightbar.jsp" %>
   		<%@ include file="../setting2.jsp" %>

</body>
</html>