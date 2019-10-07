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
            
                <!-- 페이지 내용 입력 공간 -->
            	<div class="content">

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">WeRP</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사정보</a></li>
										<li class="breadcrumb-item active">개인정보 수정</li>
									</ol>
								</div>
								<h4 class="page-title">인사정보등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active"
											id="employee-tab" data-toggle="tab" href="#employee"
											role="tab" aria-controls="employee" aria-selected="false">
												<span class="d-block d-sm-none"><i
													class="fa fa-employee"></i></span> <span class="d-none d-sm-block">사원정보</span>
										</a></li>
										<!-- <li class="nav-item"><a class="nav-link"
											id="presidency-tab" data-toggle="tab" href="#presidency"
											role="tab" aria-controls="presidency" aria-selected="true">
												<span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
												<span class="d-none d-sm-block">재직정보</span>
										</a></li>
										<li class="nav-item"><a class="nav-link" id="message-tab"
											data-toggle="tab" href="#message" role="tab"
											aria-controls="message" aria-selected="false"> <span
												class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
												<span class="d-none d-sm-block">급여정보</span>
										</a></li> -->
									</ul>

									<div class="tab-content">
										<!-- 인적정보 -->
										<div class="tab-pane show active" id="employee"
											role="tabpanel" aria-labelledby="employee-tab">
											<div class="col-sm-12">
												<c:forEach var="user" items="${user}">
												<form action="HR_modifyUserPro?${_csrf.parameterName}=${_csrf.token}" class="form-horizontal"
													id="foundation" method="post" enctype="multipart/form-data">
													<input type="hidden" name="${_csrf.parameterName}"
														value="${_csrf.token}">

													<div class="card-body table-responsive">
														<h4 class="header-title">기초정보 수정</h4>
														<h4 class="header-title">&nbsp;</h4>
														<div class="form-group row">'	  	
											  					<label class="col-md-1 col-form-label" for="simpleinput">사진등록<span class="text-danger">*</span></label>
																	<div class="col-md-4">
																		<input type="file" class="dropify" name="e_picture">
																	</div>
																<label class="col-md-1 col-form-label" for="simpleinput">현재사진<span class="text-danger">*</span></label>
																	<div class="col-md-4">
																		<img src = "/erp/resources/hr_img/${user.e_picture}" style="width:40%; height:auto;">
																	</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															</div>
										  					<div class="form-group row">
										  						<label class="col-md-1 col-form-label" for="simpleinput">사원명<span class="text-danger">*</span></label>        
										  							<div class="col-md-4">
										  				    			<input type="text" name="e_name" value="${user.e_name}" class="form-control">
										  				        	</div>
										  				        	<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																<label class="col-md-1 col-form-label" for="simpleinput">성별<span class="text-danger">*</span></label>
																<div class="col-md-2  col-form-label">
										                   	    	<div class="custom-control custom-radio custom-control-inline mb-2">
										                  	        	<input type="radio" id="customRadioInline1" name="e_gender" class="custom-control-input" value="1" checked>
										                 	         	<label class="custom-control-label" for="customRadioInline1">남성</label>
										                      		</div>
										                           <div class="custom-control custom-radio custom-control-inline mb-2">
										                               <input type="radio" id="customRadioInline2" name="e_gender" class="custom-control-input" value="2">
										                               <label class="custom-control-label" for="customRadioInline2">여성</label>
										                           </div>
										                   		</div>
									                   			<label class="col-md-1 col-form-label" for="simpleinput">내/외국인<span class="text-danger">*</span></label>
																	<div class="col-md-2  col-form-label">
																		<div>
									                             			<div class="custom-control custom-radio custom-control-inline mb-2">
									                                 			<input type="radio" id="customRadioInline7" name="e_type" class="custom-control-input" value="local" checked>
									                                 			<label class="custom-control-label" for="customRadioInline7">내국인</label>
									                             			</div>'
										                             		<div class="custom-control custom-radio custom-control-inline mb-2">
										                                 		<input type="radio" id="customRadioInline8" name="e_type" class="custom-control-input" value="foreign">
										                                 		<label class="custom-control-label" for="customRadioInline8">외국인</label>                                        
										                             		</div>
									                         			</div>
																</div>
															</div>
															<div class="form-group row">'
																<label class="col-md-1 col-form-label" for="simpleinput">비밀번호<span class="text-danger">*</span></label>
																<div class="col-md-4">
																	<input type="password" class="form-control" name="password" value ="${user.password}" size="15">
																</div>							
																<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
																<label class="col-md-1 col-form-label" for="simpleinput">전화번호<span class="text-danger">*</span></label>
																<div class="col-md-4">
																	<input type="text" class="form-control" name="e_hp" value="${user.e_hp}" size="13">
																</div>
															</div>
														</div>	
														<div class="form-group row">'
															<label class="col-md-1 col-form-label" for="simpleinput">생년월일<span class="text-danger">*</span></label>
															<div class="col-md-4">
																<input type="text" class="form-control" name="e_code" value="${user.e_code}" size="13">
															</div>
															<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
															<label class="col-md-1 col-form-label" for="simpleinput">주소<span class="text-danger">*</span></label>
															<div class="col-md-5">
																<input type="text" class="form-control" name="e_address" value="${user.e_address}">
															</div>							
														</div>
														<div class="form-group row">
														<label class="col-md-1 col-form-label" for="simpleinput">우편번호<span class="text-danger">*</span></label>
															<div class="col-md-4">
																<input type="text" class="form-control" name="e_mailcode" value="${user.e_mailcode}">
															</div>																		
														</div>														
														
														<div class="form-group text-right mb-0">'
															<input type="submit" class="btn btn-primary waves-effect waves-light" <%-- formaction="HR_modifyUserPro?${_csrf.parameterName}=${_csrf.token }" --%> value="수정">
														</div>
														</form>
														</c:forEach>
													</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>              
               
               <!-- 페이지 내용 입력 공간 종료 -->
               
                <%@ include file="../footer.jsp" %>
                	</div>
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