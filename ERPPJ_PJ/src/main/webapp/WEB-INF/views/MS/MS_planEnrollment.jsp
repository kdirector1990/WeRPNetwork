<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script type="text/javascript">
        function usernameList() {
    		window.open("MS_searchUsername", "username_list", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
    	}
        
        function positionCode() {
    		window.open("MS_positionCode", "positionCode", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
    	}
        
        function insertPlan(){
    		var param = $("#insertPlan").serializeArray();
    		alert(JSON.stringify(param));
    		$.ajax({
    			url: '/erp/MS_insertPlanPro',
    			type: 'POST',
    			data : param,
    			dataTpye: 'json',
    			success: function(param){
    				alert("기획서가 등록되었습니다.");
    				location.reload();
    			},
    			error : function(){
    				alert("기획서 등록에 실패하였습니다.");
    			}
    		});
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
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">경영지원</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">기획서</a></li>
								</ol>
							</div>
							<h4 class="page-title">기획서 등록</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<h4 class="header-title">등록</h4>
								<p class="sub-header">기획서 등록</p>

								<form action="MS_insertPlanPro" id="insertPlan">
									<input type='hidden' name="${_csrf.parameterName }"
										value="${_csrf.token }"> <input type="hidden"
										name="hiddenId" value="0">
									<div class="form-group">
										<label class="col-md-1 col-form-label">기획명</label> <input
											type="text" name="plan_name" class="form-control" required
											placeholder="기획명" />
									</div>
									<div class="form-group">
										<label class="col-md-1 col-form-label">시작예정일</label>
										<!-- <input type="date" id="datepicker1" name="plan_startdate" class="form-control" data-toggle="input-mask" style="width: 100%;"> -->
										<input type="text" name="plan_startdate" class="form-control"
											placeholder="yyyy/mm/dd" data-provide="datepicker"
											data-date-autoclose="true">
									</div>
									<div class="form-group">
										<label class="col-md-1 col-form-label">종료목표일</label>
										<!--  <input type="date" id="datepicker2" name="plan_enddate" class="form-control" data-toggle="input-mask" style="width: 100%;" data-date-autoclose="true"> -->
										<input type="text" name="plan_enddate" class="form-control"
											placeholder="yyyy/mm/dd" data-provide="datepicker"
											data-date-autoclose="true">
									</div>
									<div class="form-group">
										<label class="col-md-1 col-form-label">기획상태</label> <select
											name="plan_state" class="form-control" required>
											<option>선택</option>
											<option value="기획단계">기획단계</option>
											<option value="준비중">준비중</option>
											<option value="진행중">진행중</option>
										</select>
									</div>
									<div class="form-group">
										<div style="display: flex;">
											<label class="col-md-1 col-form-label">기획제안자</label> <input
												type="text" name="username" id="username"
												class="form-control" required placeholder="기획제안자코드"
												onclick="usernameList()" /> <label
												class="col-md-1 col-form-label">사원명</label> <input
												type="text" name="e_name" id="e_name" class="form-control"
												required placeholder="사원명" disabled /> <label
												class="col-md-1 col-form-label">부서코드</label> <input
												type="text" name="department_code" id="department_code"
												class="form-control" required placeholder="부서코드" disabled />
											<label class="col-md-1 col-form-label">직책코드</label> <input
												type="text" name="position_code" id="position_code"
												class="form-control" required placeholder="직책코드" disabled />
										</div>
									</div>
									<div class="form-group">
										<div style="display: flex;">
											<label class="col-md-1 col-form-label">책임자</label> <input
												type="text" name="position_code" id="position_code2"
												onclick="positionCode();" class="form-control" required
												placeholder="책임자코드" /> <label
												class="col-md-1 col-form-label">사원명</label> <input
												type="text" name="e_name" id="e_name2" class="form-control"
												required placeholder="사원명" disabled /> <label
												class="col-md-1 col-form-label">부서코드</label> <input
												type="text" name="department_code" id="department_code2"
												class="form-control" required placeholder="부서코드" disabled />
											<label class="col-md-1 col-form-label">사원코드</label> <input
												type="text" name="username" id="username2"
												class="form-control" required placeholder="사원코드" disabled />
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-1 col-form-label">기획목표</label>
										<div>
											<textarea required name="plan_objective" class="form-control"
												rows="7" placeholder="기획목표"></textarea>
										</div>
									</div>
									<div class="form-group mb-0">
										<div>
											<button type="submit" onclick="insertPlan();"
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
				</div>
				<!-- end row -->
			</div>
			<!-- end container-fluid -->
			<%@ include file="../footer.jsp"%>

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