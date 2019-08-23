<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
 
<%@ include file="../setting.jsp" %> 
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/erp/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	
        	function inin() {
        		alert("inin알럿");
        	}
        	
        	function focuse() {
        		$(".spoat-table-bordered-primary tbody *").focus(function() {
        			$(".spoat-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#E8F8F5");
        			$(this).parent().parent().children().css("background-color", "#E8F8F5");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
        		});
        	}
        	
        	function enter(cc, dd) {
        		/* alert(window.event.which) */
    			/* $("input[name=" + cc + "]").parent().next().children().focus(); */
        	}
        	
        	function change(cc){
        		$("select[name=" + cc + "]").parent().next().children().focus();
        	}
        	
        	function enterupdate(vv) {
        		var obj = new Object();
        		var jsonData;
        		if(event.keyCode == 13) {
	        		// 자바스크립트 객체 생성
	        		obj.ceq_code = $("input[name=ceq_code" + vv + "]").val();
	        		obj.account_code = $("input[name=account_code" + vv + "]").val();
	        		obj.ceq_name = $("input[name=ceq_name" + vv + "]").val();
	        		obj.ceq_type = $("input[name=ceq_type" + vv + "]").val();
	        		obj.ceq_acquire_date = $("input[name=ceq_acquire_date" + vv + "]").val();
	        		obj.department_code = $("select[name=department_code" + vv + "]").val();
	        		obj.ceq_location = $("input[name=ceq_location" + vv + "]").val();
	        		obj.ceq_prime_cost = $("select[name=ceq_prime_cost" + vv + "]").val();
	        		obj.ceq_durable = $("input[name=ceq_durable" + vv + "]").val();
	        		obj.ceq_depreciation = $("input[name=ceq_depreciation" + vv + "]").val();
	        		obj.ceq_depreciation_type = $("input[name=ceq_depreciation_type" + vv + "]").val();
	        		
	        		
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		alert(obj.ceq_code);
	        		alert(obj.account_code);
	        		alert(obj.ceq_name);
	        		alert(obj.ceq_type);
	        		alert(obj.ceq_acquire_date);
	        		alert(obj.department_code);
	        		alert(obj.ceq_location);
	        		alert(obj.ceq_prime_cost);
	        		alert(obj.ceq_durable);
	        		alert(obj.ceq_depreciation);
	        		alert(obj.ceq_depreciation_type);
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/CT_subject_add",
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
        	}
        	
        	function enterinsert(cc) {
       			$(".spoat-table-bordered-primary tbody #enter").attr("onchange", "enterupdate(" + cc + ");");
       			$(".spoat-table-bordered-primary tbody #enter").attr("id", "enter" + cc);
       			$(".spoat-table-bordered-primary tbody #first").attr("id", "first" + cc);
       			$(".spoat-table-bordered-primary tbody").append('<tr>' +
       						'<td><input type="text" onfocus = "focuse();" name = "ceq_code"' + count + ' class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "10021" readonly></td>' +
       						'<td><input type="text" onfocus = "focuse();" name = "ceq_name"' + count + ' id="first" onclick="init();" onkeyup = "enter(this.tagName, this.name);" class="form-control"  placeholder = "ex)전산처리기계" style = "width: 100%; border:0px;" autofocus></td>' +
                            '<td><select class="form-control" onfocus = "focuse();" name = "ceq_type"' + count + ' style = "width: 100%; -webkit-appearance: none; border:0px;" onchange="enter(this.tagName, this.name);">' +
                            	'<option value="">선택</option>' +
                            	'<option value="1">보유' +
                            	'<option value="2">대여' +
                            '</select></td>' +
                            '<td><input type="date" onfocus = "focuse();" name = "ceq_acquire_date"' + count + ' class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>' +
                            '<td><select class="form-control" onfocus = "focuse();" name = "deparment_code"' + count + ' style = "width: 100%; -webkit-appearance: none; border:0px;"  onchange="enter(this.tagName, this.name);">' +
                            '<option value="">선택</option>' +
                            '<option value="1">인사</option>' +
                            '<option value="2">영업</option>' +
                            '<option value="3">재무</option>' +
                            '<option value="4">전산</option>' +
                            '<option value="5">제조</option>' +
                       		'</select></td>' +
                       		'<td><input type="text" onfocus = "focuse();" name = "location"' + count +' class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>' +
                            '<td><input type="number" class="form-control" onfocus = "focuse();" name = "ceq_prime_cost" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName,this.name);"></td>' +
                            '<td><input type="number" onfocus = "focuse();" name = "ceq_durable"' + count + ' class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>' +
                       		'<td><select onfocus = "focuse();" name="ceq_depreciation"' + count + ' id = "enter" onchange="enterinsert(0);" class="form-control" style = "width: 100%; -webkit-appearance: none; border:0px;">' +
                       			'<option value="">선택</option>' +
                       			'<option value="1">Y</option>' +
                       			'<option value="2">N</option>' +
                       		'</select>' +
                       		'<td><input type="text" onfocus = "focuse();" name = "ceq_depreciation_type"' + count + ' class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>' +
                       '</tr>');
                    count = count + 1;
          		 $("input[name=key"+ cc +"]").val("10001");
       			 $(".spoat-table-bordered-primary tbody #first").focus();
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">전산</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">설비관리</a></li>
                                            <li class="breadcrumb-item active">전산 설비 등록</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">전산설비 등록</h4>
                                </div>
                            </div>
                        </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">설비등록</h4>
                                        
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <td>작성자</td>
                                            	<td><input type="text" class="" placeholder="사원명">&nbsp;<a href="#"></a></td>
                                            </tr>
                                        </table>
                                        
                                       <div class="table-responsive" style = "margin: 15px 0px 50px">
                                       <form action="CT_subject_add" method="post" class="form-horizontal">
                                       <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
                                            <table class="table m-0 spoat-table-colored-bordered spoat-table-bordered-primary table-bordered">
                                                <col style = "width:7%;">
                                                <col style = "width:10%;">
                                                <col style = "width:7%">
                                                <col style = "width:7%;">
                                                <col style = "width:8%;">
                                                <col style = "width:8%;">
                                                <col style = "width:7%;">
                                                <col style = "width:15%;">
                                                <col style = "width:15%;">
                                                <col style = "width:16%;">
                                                
                                                <thead>
                                                    <tr>
		                                                <th>계정코드</th>
		                                                <th>설비명</th>
		                                                <th>보유구분</th>
		                                                <th>구입일</th>
		                                                <th>사용부서</th>
		                                                <th>위치</th>
		                                                <th>매입가</th>
		                                                <th>예상내용연수</th>
		                                                <th>감가상각여부</th>
		                                                <th>감가상각법</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <tr>
		                                                <td><input type="text" onfocus = "focuse();" name = "ceq_code" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" value = "10021" readonly></td>
		                                                <td><input type="text" onfocus = "focuse();" name = "ceq_name" id="first" onclick="inin();" onkeyup = "enter(this.tagName,this.name);" class="form-control"  placeholder = "ex)전산처리기계" style = "width: 100%; border:0px;" autofocus></td>
		                                                <td><select class="form-control" name = "ceq_type" onfocus = "focuse();" style = "width: 100%; -webkit-appearance: none; border:0px;" onchange="enter(this.tagName,this.name);">
		                                                	<option value="">선택</option>
		                                                	<option value="1">보유
		                                                	<option value="2">대여
		                                                </select></td>
		                                                <td><input type="date" onfocus = "focuse();" name = "ceq_acquire_date" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>
		                                                <td><select class="form-control" onfocus = "focuse();" name = "deparment_code" style = "width: 100%; -webkit-appearance: none; border:0px;"  onchange="enter(this.tagName, this.name);">
		                                                <option value="">선택</option>
		                                                <option value="1">인사</option>
		                                                <option value="2">영업</option>
		                                                <option value="3">재무</option>
		                                                <option value="4">전산</option>
		                                                <option value="5">제조</option>
			                                       		</select></td>
		                                                <td><input type="text" onfocus = "focuse();" name = "location" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup="enter(this.tagName, this.name);"></td>
		                                                <td><input type="number" class="form-control" onfocus = "focuse();" name = "ceq_prime_cost" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName,this.name);"></td>
			                                       		<td><input type="number" onfocus = "focuse();" name = "ceq_durable" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup="enter(this.tagName, this.name);"></td>
			                                       		<td><select name="ceq_depreciation" id = "enter" onfocus = "focuse();" onchange="enterinsert(0);" class="form-control" style = "width: 100%; -webkit-appearance: none; border:0px;">
			                                       			<option value="">선택</option>
			                                       			<option value="1">Y</option>
			                                       			<option value="2">N</option>
			                                       		</select>
			                                       		<td><input type="text" onfocus = "focuse();" name = "ceq_depreciation_type" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>
		                                            </tr>
		                                        </tbody>
                                            </table>
                                        </div>
                                        <div align="right" style = "margin-bottom: 30px;">
		                                                <button class="btn btn-outline-primary waves-effect waves-light" type="submit">
		                                                    등록
		                                                </button>
		                                                <button type="reset" class="btn btn-outline-primary waves-effect waves-light">
		                                                    삭제
		                                                </button>
		                                     </div>
										</form>                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
          
                <%@ include file="../footer.jsp" %>

            

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

       
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
    </body>
    
</html>