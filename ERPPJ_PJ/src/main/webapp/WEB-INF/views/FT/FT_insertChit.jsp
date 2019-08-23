<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/pj/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	
        	function inin() {
        		alert("dkdkk");
        	}
        	function focuse(s) {
        		var name = s;
        		$(".chit-table-bordered-primary tbody *").focus(function() {
        			$(".chit-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
        		});
        		if($("input[name=key" + name.substring(name.length-1, name.length) + "]").val() != ""){
        			subcount = 1;
        			$(".chitsub-table-bordered-primary tbody").html('<tr>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subnumber0" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" id = "first"  name = "subtype0" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "code0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subject0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountcode0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountname0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "hostno0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "price0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subno0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "summary0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "document0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "entersubinsert(0,this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "computer0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "tax0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                   '</tr>');
        		} else {
        			$(".chitsub-table-bordered-primary tbody").html('');
        		}
        	}
        	
        	function subfocuse(s) {
        		$(".chitsub-table-bordered-primary tbody *").focus(function() {
        			$(".chitsub-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#D6EAF8");
        			$(this).parent().parent().children().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
        		});
        	}
        	
        	function enter(cc, dd) {
        		if(cc == "INPUT") {
        			var swit = 0;
        			var nowme = $("input[name=" + dd + "]").parent();
        			if(window.event.which == 13){
        				for(var i = 0; i < $("input[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme = nowme.next();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
            		} else if(window.event.which == 9) {
            			if($("input[name=" + dd + "]").val() == ""){
            				$("input[name=" + dd + "]").parent().prev().children().focus();
            				return false;
            			}
            			for(var i = 0; i < $("input[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme = nowme.next();
        					if(!nowme.children().attr("readonly")){
        						nowme.prev().children().focus();
        						return false;
        					}
        				}
            		} else if(window.event.which == 37) {
            			$("input[name=" + dd + "]").parent().prev().children().focus();
            			for(var i = 0; i < $("input[name=" + dd + "]").parent().prevAll().children().length; i++){
        					nowme = nowme.prev();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
            		} else if(window.event.which == 38) {
            			$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) - 1) + "]").focus();
            		} else if(window.event.which == 39) {
        				$("input[name=" + dd + "]").parent().next().children().focus();
        				for(var i = 0; i < $("input[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme = nowme.next();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
            		} else if(window.event.which == 40) {
            			$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) + 1) + "]").focus();
            		}
        		} else if(cc == "SELECT"){
        			$("select[name=" + dd + "]").parent().next().children().focus();
        		}
        	}
        	
        	function enterupdate(vv) {
        		var obj = new Object();
        		var jsonData;
        		// 자바스크립트 객체 생성
        		obj.key = $("input[name=key" + vv + "]").val();
        		obj.date = $("input[name=date" + vv + "]").val();
        		obj.no = $("input[name=no" + vv + "]").val();
        		obj.text = $("input[name=text" + vv + "]").val();
        		obj.type = $("select[name=type" + vv + "]").val();
        		obj.num = $("input[name=num" + vv + "]").val();
        		obj.state = $("select[name=state" + vv + "]").val();
        		obj.confirmname = $("input[name=confirmname" + vv + "]").val();
        		obj.devprice = $("input[name=devprice" + vv + "]").val();
        		obj.writer = $("input[name=writer" + vv + "]").val();
        		obj.slee = $("input[name=slee" + vv + "]").val();
        		
        		// json 객체를 String 객체로 변환 -- 
        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
        		jsonData = JSON.stringify(obj);
        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
        		
        		$.ajax({
                       type : "POST",
                       url : "/pj/FT_chitupdate",
                       data : jsonData,
                       contentType : 'application/json;charset=UTF-8',
                       success : function(data) {
                              // data는 서버로부터 전송받은 결과(JSON)이므로 바로 사용한다
                              alert(data);
                             /*  if (data.answer == 'success') {
                                      alert(data.name + '님 환영합니다.');
                                      var map = new MapArray();
                                      postData('/News/index.do', map);
                              } else if (data.answer == 'fail') {
                                      alert('아이디와 비번이 일치하지 않습니다.');
                              } else if (data.answer == 'error') {
                                      alert('원활한 접속이 이루어 지지 못했습니다. 관리자에게 문의하십시오.');
                              } */
                       },
                       error : function(e) {
                              alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                       }
               });
        	}
        	
        	function enterinsert(cc) {
       			$(".chit-table-bordered-primary tbody #enter").attr("onchange", "enterupdate(" + cc + ");");
       			$(".chit-table-bordered-primary tbody #enter").attr("id", "enter" + cc);
       			$(".chit-table-bordered-primary tbody #first").attr("id", "first" + cc);
       			$(".chit-table-bordered-primary tbody").append('<tr>' +
                           '<td><input type="text" onfocus = "focuse(this.name);" name = "date' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly></td>' +
                           '<td><input type="text" onfocus = "focuse(this.name);" name = "key' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" readonly></td>' +
                           '<td><input type="text" onfocus = "focuse(this.name);" id = "first" name = "no' + count + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName,this.name);"></td>' +
                            '<td><input type="text" onfocus = "focuse(this.name);" name = "text' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName,this.name);"></td>' +
                            '<td><select class="form-control" id = "enter" onfocus = "focuse(this.name);" name = "type' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;"  onchange="enterinsert(' + count + ');">' +
                            '<option value="">== 선택 ==</option>' +
                            '<option value="일반">일반</option>' +
                            '<option value="매입">매입</option>' +
                            '<option value="매출">매출</option>' +
                            '<option value="결산">결산</option>' +
                    		'</select></td>' +
                            '<td><input type="text" onfocus = "focuse(this.name);" name = "num' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                            '<td><select class="form-control" onfocus = "focuse(this.name);" name = "state' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;" readonly>' +
                            '<option value="미결">미결</option>' +
                    		'</select></td>' +
                            '<td><input type="text" onfocus = "focuse(this.name);" name = "confirmname' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                            '<td><input type="text" onfocus = "focuse(this.name);" name = "devprice' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                            '<td><input type="text" onfocus = "focuse(this.name);" name = "writer' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                            '<td><input type="text" onfocus = "focuse(this.name);" name = "slee' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
                       '</tr>');
                    count = count + 1;
          		 $("input[name=key"+ cc +"]").val("1000" + cc);
       			 $(".chit-table-bordered-primary tbody #first").focus();
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
        	
        	function entersubinsert(cc, dd) {
        		if(window.event.which == 13){
        			/* var nowme = $("input[name=" + dd + "]").parent();
        			if($("input[name=" + dd + "]").val() == ""){
        				alert("글씨를 입력하세요!");
        				return false;
        			} */
	       			$(".chitsub-table-bordered-primary tbody #entersub").attr("onchange", "entersubupdate(" + cc + ");");
	       			$(".chitsub-table-bordered-primary tbody #entersub").attr("id", "entersub" + cc);
	       			$(".chitsub-table-bordered-primary tbody #firstsub").attr("id", "firstsub" + cc);
	       			$(".chitsub-table-bordered-primary tbody").append('<tr>' +
	       					'<td><input type="text" onfocus = "subfocuse(this.name);" name = "subnumber' + subcount + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" id = "firstsub"  name = "subtype' + subcount + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "code' + subcount + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subject' + subcount + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountcode' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountname' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "hostno' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "price' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subno' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "summary' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "document' + subcount + '" id = "entersub" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "entersubinsert(' + subcount + ',this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "computer' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "tax' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>' +
	                       '</tr>');
	                    subcount = subcount + 1;
	       			 $(".chitsub-table-bordered-primary tbody #firstsub").focus();
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
        	}
        	
        	/*
    		 * 콜백함수
    		 	- 서버로부터 응답이 오면 동작할 함수(시스템이 자동으로 호출)
    		 	- 콜백함수 명은 sendRequest(콜백함수명)과 일치해야 한다.
    		 	- simple_callback() : 콜백함수
    		 	- result : 출력위치
    		 */
    		 function load_insert(){
     			// 4 : completed => 전체데이터가 취득환료된 상태
     			if(httpRequest.readyState == 4){ 
     				if(httpRequest.status == 200) { // 200 : 정상종료
     					//result.innerHTML = "정상종료";
     					var data = httpRequest.responseText;
     					
     					alert(data);
     					//result.innerHTML = httpRequest.responseXML;
     				} else {
     					alert("에러발생");
     				}
     			} else {
     				alert("상태 : " + httpRequest.readyState);
     			}
     		}
        </script>
        <!-- Table datatable css -->
        <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            
            <%@ include file="../sidebar.jsp" %>

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
                                    <h4 class="page-title">전표입력</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">Example</h4>
                                        <div align="right" style = "margin-bottom: 30px;">
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">전표복사</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">전표검색</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">전표삭제</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">품의적요등록</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">전표양식</button>
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">재무부서</button>
    									<br>
    									</div>
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <td>회계단위</td>
                                                <td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                </td>
                                                
                                                <td>기표기간</td>
                                                <td>.. / .. / ..</td>
                                                
                                                <td>
                                                <!-- 기간 달력 여기 넣고 -->
                                                </td>
                                                <td>결의부서</td>
                                                <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                	<input type="text" class="" readonly>
                                                </td>
                                               
                                                <td>년</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            	<td>월</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            	<td>일</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a></td>
                                            </tr>
                                        </table>
                                        
                                       <div class="table-responsive" style = "margin: 15px 0px 50px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:5%;">
                                                <col style = "width:10%;">
                                                <col style = "width:5%">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <thead>
                                                    <tr>
		                                                <th>일</th>
		                                                <th>번호</th>
		                                                <th>No</th>
		                                                <th>품의내역</th>
		                                                <th>유형</th>
		                                                <th>기표번호</th>
		                                                <th>상태</th>
		                                                <th>승인자</th>
		                                                <th>대차차액</th>
		                                                <th>작업자</th>
		                                                <th>연동구분</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <tr>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "date0" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "key0" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" readonly></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" id = "first" name = "no0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><select class="form-control" id = "enter" onfocus = "focuse(this.name);" name = "type0" style = "width: 100%; -webkit-appearance: none; border:0px;"  onchange="enterinsert(0);">
		                                                <option value="">== 선택 ==</option>
		                                                <option value="일반">일반</option>
		                                                <option value="매입">매입</option>
		                                                <option value="매출">매출</option>
		                                                <option value="결산">결산</option>
			                                       		</select></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "num0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>
		                                                <td><select class="form-control" onfocus = "focuse(this.name);" name = "state0" style = "width: 100%; -webkit-appearance: none; border:0px;" readonly>
		                                                <option value="미결">미결</option>
			                                       		</select></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "confirmname0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "devprice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "writer0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "slee0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly></td>
		                                            </tr>
		                                        </tbody>
                                            </table>
                                        </div>
                                        
                                        <div class="table-responsive" style = "margin: 0px 0px 50px">
                                            <table class="table m-0 chitsub-table-colored-bordered chitsub-table-bordered-primary table-bordered">
                                                <col style = "width:5%;">
                                                <col style = "width:10%;">
                                                <col style = "width:5%">
                                                <col style = "width:10%;">
                                                <col style = "width:5%;">
                                                <col style = "width:10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 5%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 5%;">
                                                <col style = "width: 5%;">
                                                <thead>
                                                    <tr>
		                                                <th>순번</th>
		                                                <th>구분</th>
		                                                <th>코드</th>
		                                                <th>계정과목</th>
		                                                <th>코드</th>
		                                                <th>거래처명</th>
		                                                <th>사업자(주민)번호</th>
		                                                <th>금액</th>
		                                                <th>No</th>
		                                                <th>적요명</th>
		                                                <th>증빙</th>
		                                                <th>전자</th>
		                                                <th>국세청</th>
		                                            </tr>
		                                      	</thead>
		    
		                                        <tbody>
		                                            
		                                        </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
                

                <!-- Footer Start -->
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
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="mdi mdi-close"></i>
                </a>
                <h5 class="m-0 text-white">Settings</h5>
            </div>
            <div class="slimscroll-menu">
                <hr class="mt-0">
                <h5 class="pl-3">Basic Settings</h5>
                <hr class="mb-0" />


                <div class="p-3">
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                        <label class="custom-control-label" for="customCheck1">Notifications</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck2" checked>
                        <label class="custom-control-label" for="customCheck2">API Access</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck3">
                        <label class="custom-control-label" for="customCheck3">Auto Updates</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck4" checked>
                        <label class="custom-control-label" for="customCheck4">Online Status</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck5">
                        <label class="custom-control-label" for="customCheck5">Auto Payout</label>
                    </div>
                </div>

                <!-- Timeline -->
                <hr class="mt-0" />
                <h5 class="pl-3 pr-3">Timeline</h5>
                <hr class="mb-0" />

                <div class="p-3">
                    <ul class="list-unstyled activity-widget">
                        <li class="activity-list">
                            <p class="mb-0"><small>08 July</small></p>
                            <p>Neque porro quisquam est</p>
                        </li>
                        <li class="activity-list">
                            <p class="mb-0"><small>09 July</small></p>
                            <p>Ut enim ad minima veniam quis velit esse </p>
                        </li>
                        <li class="activity-list">
                            <p class="mb-0"><small>10 July</small></p>
                            <p>Quis autem vel eum iure</p>
                        </li>
                    </ul>
                </div>

                <!-- Messages -->
                <hr class="mt-0" />
                <h5 class="pl-3 pr-3">Messages <span class="float-right badge badge-pill badge-danger">24</span></h5>
                <hr class="mb-0" />
                <div class="p-3">
                    <div class="inbox-widget">
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-1.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Chadengle</a></p>
                            <p class="inbox-item-text">Hey! there I'm available...</p>
                            <p class="inbox-item-date">13:40 PM</p>
                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-2.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Tomaslau</a></p>
                            <p class="inbox-item-text">I've finished it! See you so...</p>
                            <p class="inbox-item-date">13:34 PM</p>
                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-3.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Stillnotdavid</a></p>
                            <p class="inbox-item-text">This theme is awesome!</p>
                            <p class="inbox-item-date">13:17 PM</p>
                        </div>

                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-4.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Kurafire</a></p>
                            <p class="inbox-item-text">Nice to meet you</p>
                            <p class="inbox-item-date">12:20 PM</p>

                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-5.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Shahedk</a></p>
                            <p class="inbox-item-text">Hey! there I'm available...</p>
                            <p class="inbox-item-date">10:15 AM</p>

                        </div>
                    </div> <!-- end inbox-widget -->
                </div> <!-- end .p-3-->

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        
        
        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
        
    </body>
</html>