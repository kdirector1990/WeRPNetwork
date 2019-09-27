<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
#timeButton {
	display: none;
}

</style>
<%@ include file="../setting.jsp"%>
<!-- c3 plugin css -->
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
	<script src="/erp/resources/assets/js/moment-duration-format.js"></script>

<script src="/erp/resources/assets/css/js/request.js"></script>
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
	
	function Comma(inputNumber) {
		   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}

	function searchWork() {
		var param = $("#select_user_time").serializeArray();
		$.ajax({
					url : '/erp/HR_User_Time',
					type : 'POST',
					data : param,
					dataTpye : 'json',
					success : function(vo) {

						$('#result').empty();
						$('#bodyappend').empty();
						document.getElementById("timeButton").style.display = "block";

						for (var i = 0; i < vo.length; i++) {
							var rownum = vo[i].rownum;
							var username = vo[i].username;
							var e_name = vo[i].e_name;

							$("#result").append(
											'<tr onclick="selectUsersWork('+ username + '); selectCount('+ username + '); selectLate('+username+');">'
												+ '<td><input type="checkbox" name="username" value="'+username+'" class="checklist"></td>'
												+ '<td>' + rownum + '</td>'
												+ '<td>' + username
												+ '</td>' + '<td>' + e_name
												+ '</td></tr>');
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
					error : function() {
						alert("전산 오류로 인하여 사원 검색에 실패하였습니다.");
					}
				});
	}

	function startWork() {
		var param = $("#timeRecordTbl").serializeArray();
		$.ajax({
			url : '/erp/HR_Start_Work',
			type : 'POST',
			data : param,
			dataTpye : 'json',
			success : function(insertCnt) {
				if (insertCnt == 1) {
					alert("사원출근을 기록하였습니다.");
				} else if (insertCnt == 0) {
					alert("이미 출근을 기록한 사원입니다.")
				}
			},
			error : function() {
				alert("전산 오류로 인하여 사원의 출근 기록을 실패하였습니다.");
			}
		});
	}

	function endWork() {
		var param = $("#timeRecordTbl").serializeArray();
		$.ajax({
			url : '/erp/HR_End_Work',
			type : 'POST',
			data : param,
			dataTpye : 'json',
			success : function(updateCnt) {
				if (updateCnt == 1) {
					alert("사원의 퇴근을 기록하였습니다.");
				} else if (updateCnt == 0) {
					alert("이미 퇴근을 기록한 사원입니다.");
				}
			},
			error : function() {
				alert("전산 오류로 인하여 사원의 퇴근 기록에 실패하였습니다.");
			}
		});
	}

	function selectCount(code) {
		var param = {
			"username" : code
		};
		$.ajax({
					url : '/erp/HR_select_count?${_csrf.parameterName}=${_csrf.token }',
					type : 'POST',
					data : param,
					dataTpye : 'json',
					success : function(vo) {
						$('#result3').empty();
						
						for (var i = 0; i < vo.length; i++) {
							var count = vo[i].count;
							var month = i + 1;

						$("#result3").append(
								"<tr><td>" + month + "월</td><td>" + count
										+ "일</td></tr>");
						}
					},
					error : function() {
						alert("전산 오류로 인하여 사원의 기록을 가져오지 못했습니다.");
					}
				});
	}
	
	function selectUsersWork(code) {
		var param = {
			"username" : code
		};
		$.ajax({
					url : '/erp/Select_Users_Work_Data?${_csrf.parameterName}=${_csrf.token }',
					type : 'POST',
					data : param,
					dataTpye : 'json',
					success : function(vo) {
						$('#result2').empty();
						var Count = 0;
						var count = 0;
						var resultHr = 0;
						var resultMm = 0;
						var resultHour = 0;
						var resultMin = 0;
						var cmMonth = 0;

						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 1) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						var s = 1;
						if (s == 1) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 2) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();
								
								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 2) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 3) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 3) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 4) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 4) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 5) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 5) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 6) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 6) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 7) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 7) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 8) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 8) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());
							
							if (cmMonth == 9) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();
								
								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 9) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 10) {
								count = vo[i].count;

								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								

								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 10) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 11) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 11) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
						for (var i = 0; i < vo.length; i++) {

							var come = vo[i].tc_come_time;
							var end = vo[i].tc_leave_time;

							var cm = new Date(come);
							var ed = new Date(end);

							var cmMonth = (1 + cm.getMonth());

							if (cmMonth == 12) {
								count = vo[i].count;
								var cmHour = cm.getHours();
								var cmMm = cm.getMinutes();

								var edHour = ed.getHours();
								var edMm = ed.getMinutes();

								if(edMm < cmMm){
									resultHr = edHour - cmHour - 1;
									resultMm = edMm - cmMm + 60;
								}
								else{
									resultHr = edHour - cmHour;
									resultMm = edMm - cmMm;	
								}
								
								Count += count;
								resultHour += resultHr;
								resultMin += resultMm;
								if (resultMin > 60) {
									resultHour = resultHour + 1;
									resultMin = resultMin - 60;
								}
							}
						}
						if (s == 12) {
							$("#result2").append(
									"<tr><td>" + s + "월</td><td>" + Count
											+ "일</td><td>" + resultHour + "시간"
											+ resultMin + "분</td></tr>");
							s++;
							Count = 0;
							count = 0;
							resultHr = 0;
							resultMm = 0;
							resultHour = 0;
							resultMin = 0;
							cmMonth = 0;
						}
					},
					error : function() {
						alert("전산 오류로 인하여 사원의 기록을 못 가져왔습니다.");
					}
				});
	}
	
	function selectLate(code){
		var param = { "username" : code}
		$.ajax({
			url : '/erp/HR_Late_Check?${_csrf.parameterName}=${_csrf.token }',
			type : 'POST',
			data : param,
			dataTpye : 'json',
			success : function(vo) {
				$('#result4').empty();
				
				var Count = 0;
				var count = 0;
				var resultHr = 0;
				var resultMm = 0;
				var resultHour = 0;
				var resultMin = 0;
				var cmMonth = 0;
				var money = 0;

				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 1) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				var s = 1;
				if (s == 1) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 2) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();
						
						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 2) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 3) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 3) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 4) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 4) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 5) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 5) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 6) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 6) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 7) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 7) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 8) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 8) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());
					
					if (cmMonth == 9) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();
						
						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
							money = (resultHr * 8350);
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
							money = (resultHr * 8350);
						}
						
						money += money;
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 9) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 10) {
						count = vo[i].count;

						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
							money = (resultHr * 8350);
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;

						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 10) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 11) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 11) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
				for (var i = 0; i < vo.length; i++) {

					var come = vo[i].tc_come_time;
					var end = vo[i].tc_leave_time;

					var cm = new Date(come);
					var ed = new Date(end);

					var cmMonth = (1 + cm.getMonth());

					if (cmMonth == 12) {
						count = vo[i].count;
						var cmHour = cm.getHours();
						var cmMm = cm.getMinutes();

						var edHour = ed.getHours();
						var edMm = ed.getMinutes();

						if(cmHour > 9){
							resultHr = cmHour - 9;
							resultMm = cmMm;
						}
						else if(edHour > 18){
							resultHr = edHour - 18;
							resultMm = edMm;	
						}
						
						Count += count;
						resultHour += resultHr;
						resultMin += resultMm;
						if (resultMin > 60) {
							resultHour = resultHour + 1;
							resultMin = resultMin - 60;
						}
					}
				}
				if (s == 12) {
					$("#result4").append(
							"<tr><td>" + s + "월</td><td>" + Count
									+ "일</td><td>" + resultHour + "시간"
									+ resultMin + "분</td><td>"
									+ Comma(money) + "원</td></tr>");
					s++;
					Count = 0;
					count = 0;
					money = 0;
					resultHr = 0;
					resultMm = 0;
					resultHour = 0;
					resultMin = 0;
					cmMonth = 0;
				}
			},
			error : function() {
				alert("전산 오류로 인하여 사원의 기록을 가져오지 못했습니다.");
			}
		});
	}

	function allcheck() {
		if ($("#allChecked").prop("checked")) {
			$(".checklist").prop("checked", true);
		} else {
			$(".checklist").prop("checked", false);
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
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">인사</a></li>
										<li class="breadcrumb-item active">인사/급여관리</li>
									</ol>
								</div>
								<h4 class="page-title">근태결과입력</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->


					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<div align="right">
										<br>
									</div>
									<form id="select_user_time">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<table class="col-12">
											<tr class="form-group row">
												<th class="col-md-1 col-form-label">사번</th>
												<td class="col-md-2 input-group"><input type="text"
													name="username" class="form-control"></td>

												<th class="col-md-1 col-form-label">부서</th>
												<td class="col-md-2 input-group"><select
													name="department_code" class="form-control">
														<option value="">전체</option>
														<c:forEach var="dto" items="${dto }">
															<option value="${dto.department_code }">${dto.department_name }</option>
														</c:forEach>
												</select></td>
												<th class="col-md-1 col-form-label">사원이름</th>
												<td class="col-md-2 input-group"><input type="text"
													name="e_name" class="form-control"></td>
											</tr>
										</table>
										<div align="right">
											<button type="button"
												class="btn btn-primary waves-effect waves-light" onclick="searchWork();">조회</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<form id="timeRecordTbl">
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
										<table id="datatable-fixed-col"
											class="table table-striped table-bordered dt-responsive nowrap center"
											style="border-collapse: collapse; border-spacing: 0; width: 100%;">
											<thead>
												<tr>
													<th><input type="checkbox" id="allChecked"
														onclick="allcheck();"></th>
													<th>N O</th>
													<th>사 원 코 드</th>
													<th>성 명</th>
												</tr>
											</thead>
											<tbody id="result">
											</tbody>
										</table>
									</form>
									<div id="timeButton">
										<button type="button"
											class="btn btn-primary waves-effect waves-light"
											onclick="startWork();">출근</button>
										<button type="button"
											class="btn btn-primary waves-effect waves-light"
											onclick="endWork();">퇴근</button>
									</div>
								</div>
							</div>
						</div>
						<!-- end col -->

						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<table id="datatable-fixed-col"
										class="table table-striped table-bordered dt-responsive nowrap center"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead class="center">
											<tr>
												<th colspan="3">근무일별 근태집계</th>
											</tr>
											<tr>
												<th>구 분</th>
												<th>일 수</th>
												<th>시 간</th>
											</tr>
										</thead>

										<tbody id="result2">

										</tbody>
									</table>

								</div>
							</div>
						</div>
						<!-- end col -->
						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<table id="datatable-fixed-col"
										class="table table-striped table-bordered dt-responsive nowrap center"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead class="center">
											<tr>
												<th colspan="3">근태결과일 근태집계</th>
											</tr>
											<tr>
												<th>구 분</th>
												<th>일 수</th>
											</tr>
										</thead>

										<tbody id="result3">

										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="col-xl-6">
							<div class="card">
								<div class="card-body">
									<table id="datatable-fixed-col"
										class="table table-striped table-bordered dt-responsive nowrap center"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<thead class="center">
											<tr>
												<th colspan="4">지각조퇴/사용자정의</th>
											</tr>
											<tr>
												<th>구 분</th>
												<th>일 수</th>
												<th>시 간</th>
												<th>차 감 금 액</th>
											</tr>
										</thead>

										<tbody id="result4">

										</tbody>

									</table>

								</div>
							</div>
						</div>
					</div>


					<%@ include file="../footer.jsp"%>
				</div>
			</div>
		</div>

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

</body>
</html>