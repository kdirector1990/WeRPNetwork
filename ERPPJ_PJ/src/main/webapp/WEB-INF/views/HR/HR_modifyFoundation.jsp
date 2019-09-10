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
            	<div class="content">

				<!-- Start Content-->
					<div class="container-fluid">                
            			<div class="row">
							<div class="col-12">
								<div class="page-title-box">
									<div class="page-title-right">
										<ol class="breadcrumb m-0">
	                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
	                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사</a></li>
	                                            <li class="breadcrumb-item"><a href="javascript: void(0);">인사정보</a></li>
	                                            <li class="breadcrumb-item active"></li>
	                                        </ol>
									</div>
									<h4 class="page-title">사원정보수정</h4>
								</div>
							</div>
						</div>
						<!-- end page title -->
                		
                		<div class="row">
                			<div class="col-sm-12">
							<form action="HR_modifyFoundationPro" class="form-horizontal" id="foundation" method="post">
							<input type = "hidden" name ="${_csrf.parameterName}" value = "${_csrf.token}">												

								<div class="card-body table-responsive">
								 <h4 class="header-title">기초 정보</h4>
								 <h4 class="header-title">&nbsp;</h4>
									<div class="form-group row">
										<!-- <label class="col-md-1 col-form-label" for="simpleinput">사진등록<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<input type="file" class="dropify" name="e_picture"/>
											</div> -->
										<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
											<div class="col-md-6">
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="simpleinput">성명<span class="text-danger">*</span></label>
													<div class="col-lg-8">
														<input type="text" class="form-control" name="e_name" value="${fd.e_name}">
													</div>
												</div>
												<div class="form-group row">	
													<label class="col-md-2 col-form-label"
														for="simpleinput">성별<span class="text-danger">*</span></label>
													<div class="col-md-3  col-form-label">
														<div>
			                                        	    <div class="custom-control custom-radio custom-control-inline mb-2">
			                                       	        	<input type="radio" id="customRadioInline1" name="e_gender" class="custom-control-input" value="1" checked>
			                                      	         	<label class="custom-control-label" for="customRadioInline1">남성</label>
			                                           		</div>
				                                            <div class="custom-control custom-radio custom-control-inline mb-2">
				                                                <input type="radio" id="customRadioInline2" name="e_gender" class="custom-control-input" value="2">
				                                                <label class="custom-control-label" for="customRadioInline2">여성</label>
				                                            </div>
			                                        	</div>
													</div>
													<label class="col-md-2 col-form-label"
														for="simpleinput">내/외국인<span class="text-danger">*</span></label>
													<div class="col-md-4  col-form-label">
														<div>
				                                            <div class="custom-control custom-radio custom-control-inline mb-2">
				                                                <input type="radio" id="customRadioInline7" name="e_type" class="custom-control-input" value="local" checked>
				                                                <label class="custom-control-label" for="customRadioInline7">내국인</label>
				                                            </div>
				                                            <div class="custom-control custom-radio custom-control-inline mb-2">
				                                                <input type="radio" id="customRadioInline8" name="e_type" class="custom-control-input" value="foreign">
				                                                <label class="custom-control-label" for="customRadioInline8">외국인</label>
				                                            </div>
				                                        </div>
													</div>
												</div>	
												<div class="form-group row">
													<label class="col-md-2 col-form-label"
														for="simpleinput">주민등록번호<span class="text-danger">*</span></label>
													<div class="col-md-8">
														<input type="text" class="form-control" name="e_code" value="${fd.e_code}" size="13">
													</div>
												</div>
												<div class="form-group row">	
													<label class="col-md-2 col-form-label"
														for="simpleinput">전화번호<span class="text-danger">*</span></label>
													<div class="col-md-8">
													<input type="text" class="form-control" name="e_hp" value="${fd.e_hp}" size="13">
													</div>
												</div>
											</div>	
										</div>
										<div class="form-group row">
											<label class="col-md-1 col-form-label"
												for="simpleinput">주민등록주소<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<input type="text" class="form-control" name="e_address1" placeholder="주민등록주소" size="13">
											</div>
											<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
											<label class="col-md-1 col-form-label"
												for="simpleinput">상세주소<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<input type="text" class="form-control" name="e_address2" placeholder="상세주소" size="13">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-md-1 col-form-label"
												for="simpleinput">우편번호<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<input type="text" class="form-control" name="e_mailcode" value="${fd.e_mailcode}">
											</div>
											<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
											<label class="col-md-1 col-form-label" for="simpleinput">출입카드No.<span class="text-danger">*</span></label> 
											<div class="col-md-4">
												<input type="text" class="form-control" name="e_nfcCodeNFC" value="${fd.e_nfcCodeNFC}">
											</div>																
										</div>
										
										<div class="form-group row">
											<label class="col-md-1 col-form-label" for="simpleinput">부서<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<select class="form-control select2" name="department_code" onchange="">
													<c:forEach var="dep" items="${dep}">
													<option value="${dep.department_code}">${dep.department_name}</option>	
													</c:forEach>																																							
												</select>
											</div>
											<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
											<label class="col-md-1 col-form-label" for="simpleinput">직책<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<select class="form-control select2" name="position_code" onchange="">
													<c:forEach var="poi" items="${poi}">
													<option value="${poi.position_code}">${poi.position_code}</option>	
													</c:forEach>																							
												</select>
											</div>																
										</div>
										
										<div class="form-group row">
											<label class="col-md-1 col-form-label" for="simpleinput">직급<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<select class="form-control select2" name="rank_code" onchange="">
													<c:forEach var="rank" items="${rank}">
													<option value="${rank.rank_code}">${rank.rank_code}</option>	
													</c:forEach>																							
												</select>
											</div>
											<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
											<label class="col-md-1 col-form-label" for="simpleinput">호봉<span class="text-danger">*</span></label>
											<div class="col-md-4">
												<input type="text" class="form-control" name="level_step" value="${fd.level_step}">
											</div>																
										</div>															
										<div class="form-group text-right mb-0">
	                                        <button class="btn btn-primary waves-effect waves-light mr-1" type="submit">
	                                                                                    수정
	                                        </button>
	                                        <button type="reset" class="btn btn-secondary waves-effect">
	                                                                                     취소
	                                        </button>
	                                    </div>																
									</div>
								</form>               		
                			</div>
                		
                		</div>
                
                
               
               
                <!-- 페이지 내용 입력 공간 종료 -->
               
                <%@ include file="../footer.jsp" %>
					</div>
				</div>
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