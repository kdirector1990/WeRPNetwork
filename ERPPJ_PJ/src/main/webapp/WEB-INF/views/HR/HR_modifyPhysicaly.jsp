<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
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
										<li class="breadcrumb-item active">신체정보수정</li>
									</ol>
								</div>
								<h4 class="page-title">신체정보수정</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="col-sm-12">
						<form action="HR_modifyPhysicalyPro" class="form-horizontal" id="physical" name="modifyPhysicaly"
							method="post">															
								<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
								<input type="text" name="username" value="${pvo.username}">
								<div class="card-body table-responsive">
								<h4 class="header-title">신체 정보</h4>
								<h4 class="header-title">&nbsp;</h4>															
								
								<div class="form-group row">
									<label class="col-md-1 col-form-label"
										for="simpleinput">신장</label>
									<div class="col-md-3">
										<input type="text" class="form-control" name="e_height" value="${pvo.e_height}">
									</div>
									<label class="col-md-1 col-form-label"
										for="simpleinput">cm</label>
									<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
									<label class="col-md-1 col-form-label"
										for="simpleinput">체중</label>
									<div class="col-md-3">
										<input type="text" class="form-control" name="e_weight" value="${pvo.e_weight}">
									</div>
									<label class="col-md-1 col-form-label"
										for="simpleinput">kg</label>
								</div>
								<div class="form-group row">
									<label class="col-md-1 col-form-label"
										for="simpleinput">시력(좌)</label>
									<div class="col-md-1">
										<input type="text" class="form-control" name="e_left_sight" value="${pvo.e_left_sight}">
									</div>
									<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
									<label class="col-md-1 col-form-label"
										for="simpleinput">시력(우)</label>
									<div class="col-md-1">
										<input type="text" class="form-control" name="e_right_sight" value="${pvo.e_right_sight}">
									</div>
									
									<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
									<label class="col-md-1 col-form-label"
										for="simpleinput">색약</label>
										<div class="col-md-3 col-form-label">
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline9" name="e_color_blind" class="custom-control-input" value = "blind" checked>
	                                               <label class="custom-control-label" for="customRadioInline9">유</label>
	                                           </div>
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline10" name="e_color_blind" class="custom-control-input" value = "common">
	                                               <label class="custom-control-label" for="customRadioInline10">무</label>
	                                           </div>
	                                       </div>
									</div>
									
									
								<div class="form-group row">
									<label class="col-md-1 col-form-label"
										for="simpleinput">혈액형</label>
										<div class="col-md-3 col-form-label">
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline11" name="e_blood_type" class="custom-control-input" value = "a" checked>
	                                               <label class="custom-control-label" for="customRadioInline11">A</label>
	                                           </div>
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline12" name="e_blood_type" class="custom-control-input" value = "b">
	                                               <label class="custom-control-label" for="customRadioInline12">B</label>
	                                           </div>
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline13" name="e_blood_type" class="custom-control-input" value = "ab" checked>
	                                               <label class="custom-control-label" for="customRadioInline13">AB</label>
	                                           </div>
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline14" name="e_blood_type" class="custom-control-input" value = "o">
	                                               <label class="custom-control-label" for="customRadioInline14">O</label>
	                                           </div>
	                                       </div>
	                                       <label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
	                                       <label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
	                                      <label class="col-md-1 col-form-label"
										for="simpleinput">혈압</label>
											<div class="col-md-1">
												<input type="text" class="form-control" name="e_blood_presure1" placeholder="최저">
											</div>
											<label class="col-md-1 col-form-label"
												for="simpleinput">mmHg ~</label>
											<div class="col-md-1">
												<input type="text" class="form-control" name="e_blood_presure2" placeholder="최고">
											</div>																		
											<label class="col-md-1 col-form-label"
												for="simpleinput">mmHg</label>
									</div>
									
									<div class="form-group row">																	
										<label class="col-md-1 col-form-label"
										for="simpleinput">병력</label>
										<div class="col-md-5">
											<input type="text" class="form-control" name="e_medical_info" value="${pvo.e_medical_info}">
										</div>	
											
									</div>
									
									<div class="form-group row">																	
										<label class="col-md-1 col-form-label" for="simpleinput">장애 구분/등급<span class="text-danger">*</span></label> 
										<div class="col-md-3 col-form-label">
											<div>
	                                            <div class="custom-control custom-radio custom-control-inline mb-2">
	                                                <input type="radio" id="customRadioInline3" name="e_disability_type" class="custom-control-input" value = "1" checked>
	                                                <label class="custom-control-label" for="customRadioInline3">비해당</label>
	                                            </div>
	                                            <div class="custom-control custom-radio custom-control-inline mb-2">
	                                                <input type="radio" id="customRadioInline4" name="e_disability_type" class="custom-control-input" value = "2">
	                                                <label class="custom-control-label" for="customRadioInline4">장애인</label>
	                                            </div>
	                                            <div class="custom-control custom-radio custom-control-inline mb-2">
	                                                <input type="radio" id="customRadioInline5" name="e_disability_type" class="custom-control-input" value = "3">
	                                                <label class="custom-control-label" for="customRadioInline5">국가유공자</label>
	                                            </div>
	                                            <div class="custom-control custom-radio custom-control-inline mb-2">
	                                                <input type="radio" id="customRadioInline6" name="e_disability_type" class="custom-control-input" value = "4">
	                                                <label class="custom-control-label" for="customRadioInline6">중증</label>
	                                            </div>
	                                        </div>								                                        
	                                        
										</div>
										<div class="col-md-1">
												<input type="text" class="form-control" name="e_disability_level" placeholder="장애인 등급">
										</div>
										<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
										
										<label class="col-md-1 col-form-label" for="simpleinput">보훈구분<span class="text-danger">*</span></label>
										<div class="col-md-3 col-form-label">
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline9" name="e_veteran_type" class="custom-control-input" value="0" checked>
	                                               <label class="custom-control-label" for="customRadioInline9">비해당</label>
	                                           </div>
	                                           <div class="custom-control custom-radio custom-control-inline mb-2">
	                                               <input type="radio" id="customRadioInline10" name="e_veteran_type" class="custom-control-input" value="1">
	                                               <label class="custom-control-label" for="customRadioInline10">해당</label>
	                                           </div>
	                                       </div>
									</div>
									
									<div class="form-group row">
										<label class="col-md-1 col-form-label" for="simpleinput">보훈관계<span class="text-danger">*</span></label>
										<div class="col-md-4">
											<select class="form-control select2" name="e_veteran_info" onchange="">
												<option value="비해당">0. 비해당</option>
												<option value="할아버지">1. 할아버지</option>
												<option value="아버지">2. 아버지</option>
												<option value="본인">3. 본인</option>																																							
											</select>
										</div>
										<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
										<label class="col-md-1 col-form-label" for="simpleinput">보훈등급<span class="text-danger">*</span></label>
										<div class="col-md-4">
											<select class="form-control select2" name="e_veteran_level" onchange="">
												<option value="비해당">0. 비해당</option>
												<option value="국가유공자">1. 국가유공자</option>
												<option value="고엽제후유증환자">2. 고엽제 후유증 및 고엽제 후유증 2세환자</option>
												<option value="5.18 민주유공자">3. 5.18 민주유공자</option>
												<option value="특수임무수행자">4. 특수임무수행자</option>
												<option value="중장기복무제대군인">5. 중장기복무제대군인</option>																							
											</select>
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
							</div>
							</form>
						</div>
					</div>
					<!-- 페이지 내용 입력 공간 종료 -->
					<%@ include file="../footer.jsp"%>
					</div>
				</div>

				<!-- ============================================================== -->
				<!-- End Page content -->
				<!-- ============================================================== -->

			</div>
			<!-- END wrapper -->

			<%@ include file="../rightbar.jsp"%>
			<%@ include file="../setting2.jsp"%>
</body>
</html>