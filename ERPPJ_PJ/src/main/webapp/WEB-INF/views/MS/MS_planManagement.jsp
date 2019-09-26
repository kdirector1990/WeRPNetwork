<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.result {
	display: none;
}

#updatePlan {
	display: none;
}

#searchTable {
	display: none;
}
</style>
<%@ include file="../setting.jsp"%>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
function updatePlan(){
	var param = $("#datatable2").serializeArray();
	alert(JSON.stringify(param));
	$.ajax({
		url: '/erp/MS_updatePlanPro?${_csrf.parameterName}=${_csrf.token }',
		type: 'POST',
		data : param,
		dataTpye: 'json',
		success: function(param){
			alert("수정되었습니다.");
			$('#result').empty();
			searchCus();
		},
		error : function(){
			alert("수정에 실패하였습니다.");
		}
	});
}

function deletePlan(){
	var param = $("#datatable2").serializeArray();
	alert(JSON.stringify(param));
	$.ajax({
		url: '/erp/MS_deletePlanPro?${_csrf.parameterName}=${_csrf.token }',
		type: 'POST',
		data : param,
		dataTpye: 'json',
		success: function(param){
			alert("삭제되었습니다.");
			$('#result').empty();
			searchCus();
		},
		error : function(){
			alert("삭제 실패하였습니다.");
		}
	});
}


function ST_searchUsername() {
	window.open("ST_searchUsername", "ST_searchUsername", "menubar=no, width=450px, height = 600px, location=no, status=nos, top = 200, left = 500");
}

function enterkey() {
    if (window.event.keyCode == 13) {
         // 엔터키가 눌렸을 때 실행할 내용
         searchCus();
    }
}

//결과
function MS_planUpdateDelete(url) { 
	sendRequest(callback, "MS_planUpdateDelete", "post", "${_csrf.parameterName }=${_csrf.token }&plan_code="+url);
}

function callback() {
	var result = document.getElementById("result");
	
	if(httpRequest.readyState == 4){	//4 : completed => 전체 데이터가 취득 완료된 상태
	
		if(httpRequest.status == 200){	// 200 : 정상 종료
			result.innerHTML = "정상종료";
			// 응답 결과가 html이면 responseText로 받고, XML이면 responseXML로 받는다.
			
			var datas = httpRequest.responseText;
			document.getElementById("updatePlan").style.display="block";
			result.innerHTML = datas;
		} else {
			result.innerHTML = "에러발생";
		}
	} else {
		result.innerHTML = "상태 : " + httpRequest.readyState;
	}
} 


function searchCus() {
	 var param = $("#search").serializeArray();
	 /* alert(JSON.stringify(param));  */
		$.ajax({
			url: '/erp/MS_planInquiry_result?${_csrf.parameterName}=${_csrf.token }',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(vo){
				
				document.getElementById("searchTable").style.display="block";
				
				$('#result1').empty();
				$('#result').empty();
				
				document.getElementById("updatePlan").style.display="none";
				
				$('#resulttable').empty();
				$('#bodyappend').empty();
				
				$('#resulttable').append(
						'<table id="datatable" class="table table-striped table-bordered dt-responsive nowrap">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
						'<col style="width: 10%;">'+
							'<thead class="bg-primary text-white">'+
								'<tr>'+
								'<th>기획서코드</th>'+
								'<th>기획명</th>'+
								'<th>기획제안자</th>'+
								'<th>책임자</th>'+
								'<th>기획등록일</th>'+
								'<th>시작예정일</th>'+
								'<th>종료예정일</th>'+
								'<th>기획상태</th>'+
								'<th>기획목표</th>'+
								'<th>상세 기획안 파일</th>'+
								'</tr>'+
							'</thead>'+
							'<tbody id="result1">'+
							'</tbody>'+
						'</table>');
	
				for(var i = 0; i < vo.length; i++){
					
					var plan_code = vo[i].plan_code;
					var plan_name = vo[i].plan_name;
					var username = vo[i].username;
					var position_code = vo[i].position_code;
					var plan_regdate = vo[i].plan_regdate;
					var plan_startdate = vo[i].plan_startdate;
					var plan_enddate = vo[i].plan_enddate;
					var plan_state = vo[i].plan_state;
					var plan_objective = vo[i].plan_objective;
					var plan_proposal = vo[i].plan_proposal;
					
					$("#datatable").append('<tr onclick="MS_planUpdateDelete(\''+plan_code+'\')">' +
						'<td>'+ plan_code+ '</td>' +
						'<td>'+ plan_name+ '</td>' +
						'<td>'+ username + '</td>' +
						'<td>'+ position_code + '</td>' +
						'<td>'+ vo[i].plan_regdate_s + '</td>' +
						'<td>'+ vo[i].plan_startdate_s + '</td>' +
						'<td>'+ vo[i].plan_enddate_s + '</td>' +
						'<td>'+ plan_state + '</td>' +
						'<td>'+ plan_objective + '</td>' +
						'<td>' + plan_proposal + '</td></tr>' 
					);
					
				}
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
			},
			error : function(){
				alert("실패.");
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

			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
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
							<h4 class="page-title">기획서 관리</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->

				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-body">
								<form id="search" onsubmit="return false">
									<table class="col-12">
										<tr class="form-group row">
										<tr class="form-group row">
											<th class="col-md-1 col-form-label">사원</th>
											<td class="col-md-2 input-group"><input type="text"
												name="username" id="username" class="form-control"
												onclick="ST_searchUsername();" onkeyup="enterkey();">
												<input type="text" name="e_name" id="e_name"
												class="form-control" readonly></td>

										</tr>
									</table>
								</form>
								<div align="right">
									<button type="button"
										class="btn btn-dark waves-effect waves-light"
										onclick="searchCus();">조회</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="searchTable">
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div id="resulttable">
										<!-- 검색 목록 출력  -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="updatePlan">
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div id="result">
										<!-- 수정/삭제 가능한 상세 페이지 출력 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end container-fluid -->

		</div>
		<!-- end content -->

		<%@ include file="../footer.jsp"%>


		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>

    <div id="bodyappend"></div>
</body>
</html>