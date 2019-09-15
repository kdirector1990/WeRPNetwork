
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<!--  
상세계정 코드의 값 설정들이 완료되어야지 완벽하게 돌릴 수 있음.
ceq_code의 select박스는 그때 해당 값을 집어넣을 예정.
-->
<head>
<%@ include file="../setting.jsp" %>
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js" ></script> 
		<script src="/erp/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	
        	function focuse(s) {
        		var name = s;
        		$(".spoat-table-bordered-primary tbody *").focus(function() {
        			$(".spoat-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().parent().children().children().css("background-color", "#E8F8F5");
        			$(this).parent().parent().children().css("background-color", "#E8F8F5");
        			$(this).css("background-color", "");
        			$(this).parent().css("background-color", "");
        		});
        	}
        	
        	
        	/* submit 엔터로 넘어가는 거 막는 이벤트. 
        	document.addEventListener("keydown", function(event){
        		if(event.keyCode == 13){
        			event.preventDefault();
        		};
        	}, true); */
        	
        	
        	
        	function enter(cc, dd) {
        		alert("동작");
        		if(cc == "INPUT"){
        			alert("동작1");
        			var swit = 0;
        			var nowme = $("input[name=" + dd +"]").parent();
        			if(window.event.which == 13){
        				for(var i = 0; i < $("input[name=" + dd +"]").parent().nextAll.children().length; i++){
        					nowme = nowme.next();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
        			} }/*  else if(window.event.which == 9){
        				$("*[name=" + dd +"]").parent().prev().children().focus();
        				return false;
        			}
        			else if(window.event.which == 37){
        				alert("동작2")
        				for(var i = 0; i < $("input[name=" + dd + "]").parent().prevAll().children().length; i++){
        					nowme = nowme.prev();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
        			}
        			else if(window.event.which == 38){
        				alert("동작3")
        				$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) -1) + "]").focus();
        			}
        			else if(window.event.which == 39){
        				alert("동작4")
        				for(var i = 0; i < $("input[name=" + dd +"]").parent().nextAll().children().length; i++){
        					nowme = nowme.next();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
        			}
        			else if(window.event.which == 40){
        				alert("동작5")
        				$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1, dd.length)) + 1) +"]").focus();
        			} */
        		/* }
        		 else if(cc == "SELECT"){
    				if(window.event.which == 9){
    					$("select[name=" + dd +"]").parent().prev().children().focus();
    				} 	
    			}
        		/* alert(window.event.which) */
    			/* $("input[name=" + cc + "]").parent().next().children().focus(); */
        	}
        	
        	function change(cc){
        		$("select[name=" + cc + "]").parent().next().children().focus();
        	}
        	
        	$(document).ready(function(){
        		$("#enter").keydown(function(key){
        			if(key.keyCode == 13){
        				alert("엔터키 작동합니다.");
        				enterinsert(cc);
        			}
        		});
        	});
        	
        	function add(){
        		$(".spoat-table-bordered-primary tbody").append('<tr>' +
       						'<td><select name="ceq_code' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName, this.name);" autofocus>' +
		                 			'<option value="">선택' +
		                 			'<option value="003">장비' +
								'</select></td>'+
        					'<td><input type="text" onfocus = "focuse();" name = "ceq_name' + count + '" id="first" onkeyup = "enter(this.tagName, this.name);" class="form-control"  placeholder = "ex)전산처리기계" style = "width: 100%; border:0px;" autofocus></td>' +
                            '<td><select class="form-control" onfocus = "focuse();" name = "ceq_type' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;" onchange="enter(this.tagName, this.name);">' +
                            	'<option value="">선택</option>' +
                            	'<option value="보유">보유' +
                            	'<option value="대여">대여' +
                            '</select></td>' +
                            '<td><input type="date" onfocus = "focuse();" name = "ceq_acquire_date' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);" required></td>' +
                            '<td><select class="form-control" onfocus = "focuse();" name = "deparment_code' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;"  onchange="enter(this.tagName, this.name);">' +
                            	'<c:forEach var="vo" items="${dto}">' +
                    				'<option value="${vo.department_code }">${vo.department_name}</option>' +
                    			'</c:forEach>' +
                       		'</select></td>' +
                       		'<td><input type="text" onfocus = "focuse();" name = "ceq_location' + count +'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>' +
                            '<td><input type="text" class="form-control" onfocus = "focuse();" name = "ceq_prime_cost' + count +'" onkeyup="removeChar(event); inputNumberFormat(this);" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName,this.name);" required></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "ceq_durable' + count + '" onkeyup="removeChar(event); inputNumberFormat(this);" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>' +
                       		'<td><select onfocus = "focuse();" name="ceq_depreciation' + count + '" id = "enter" onchange="enterinsert(0);" class="form-control" style = "width: 100%; -webkit-appearance: none; border:0px;" required>' +
                       			'<option value="">선택</option>' +
                       			'<option value="1">Y</option>' +
                       			'<option value="2">N</option>' +
                       		'</select>' +
                       		'<td><select id="enter" name = "ceq_depreciation_type'+ count +'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName, this.name);">' +
                   			'<option value="">선택' +
                   			'<option value="정률법">정률법' +
                   			'<option value="정액법">정액법' +
                   			'</select> </td>' +
                       '</tr>');
       			 $(".spoat-table-bordered-primary tbody #first").focus();
       			count = count + 1;
        	}
        	
        	function del(){
        		$(".spoat-table-bordered-primary tbody").empty('<tr>'+
        		'<td><select name="ceq_code' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName, this.name);" autofocus>' +
		                 '<option value="">선택' +
		                 '<option value="003">장비' +
					'</select></td>'+
        		'<td><input type="text" onfocus = "focuse();" name = "ceq_name' + count + '" id="first" onclick="init();" onkeyup = "enter(this.tagName, this.name);" class="form-control"  placeholder = "ex)전산처리기계" style = "width: 100%; border:0px;" autofocus></td>' +
                '<td><select class="form-control" onfocus = "focuse();" name = "ceq_type' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;" onchange="enter(this.tagName, this.name);">' +
                	'<option value="">선택</option>' +
                	'<option value="보유">보유' +
                	'<option value="대여">대여' +
                '</select></td>' +
                '<td><input type="date" onfocus = "focuse();" name = "ceq_acquire_date' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);" required></td>' +
                '<td><select class="form-control" onfocus = "focuse();" name = "deparment_code' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;"  onchange="enter(this.tagName, this.name);">' +
                	'<c:forEach var="vo" items="${dto}">' +
                		'<option value="${vo.department_code }">${vo.department_name}</option>' +
                	'</c:forEach>' +
                '</select></td>' +
           		'<td><input type="text" onfocus = "focuse();" name = "ceq_location' + count +'" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>' +
                '<td><input type="text" class="form-control" onfocus = "focuse();" name = "ceq_prime_cost' + count +'" onkeyup="removeChar(event); inputNumberFormat(this);" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName,this.name);" required></td>' +
                '<td><input type="text" onfocus = "focuse();" name = "ceq_durable' + count + '" onkeyup="removeChar(event); inputNumberFormat(this);" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);"></td>' +
           		'<td><select onfocus = "focuse();" name="ceq_depreciation' + count + '" id = "enter" onchange="enterinsert(0);" class="form-control" style = "width: 100%; -webkit-appearance: none; border:0px;" required>' +
           			'<option value="N">선택</option>' +
           			'<option value="1">Y</option>' +
           			'<option value="2">N</option>' +
           		'</select>' +
           		'<td><input type="text" onfocus = "focuse();" name = "ceq_depreciation_type' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;"></td>' +
           '</tr>');
           count = 0;
        	}
        	
        	function Insert(){
        		var param = $("#CTinsert").serializeArray();
        		alert(JSON.stringify(param));
        		$.ajax({
        			url: '/erp/CT_subject_add',
        			type: 'POST',
        			data : param,
        			dataTpye: 'json',
        			success: function(param){
        				alert("자산을 입력하였습니다.");
        			},
        			error : function(){
        				alert("전산 오류로 인하여 입력에 실패하였습니다.");
        			}
        		});
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">전산</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">설비관리</a></li>
                                            <li class="breadcrumb-item active">전산설비 등록</li>
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
                                        <div align="right">
		    								<button id="insertCT" onclick="Insert();" type="button" class="btn btn-outline-primary waves-effect waves-light">등록</button>
										</div>
                                        
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <td>작성자 : ${name }</td>
                                            </tr>
                                        </table>
                                        
                                       <div class="table-responsive" style = "margin: 15px 0px 50px">
                                       <form id="CTinsert" action="CT_subject_add" method="post" class="form-horizontal">
                                        <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
                                            <table class="table m-0 spoat-table-colored-bordered spoat-table-bordered-primary table-bordered">
	                                            <col style = "width:12%">
	                                            <col style = "width:13%;">
                                                <col style = "width:7%">
                                                <col style = "width:7%;">
                                                <col style = "width:8%;">
                                                <col style = "width:11%;">
                                                <col style = "width:9%;">
                                                <col style = "width:13%;">
                                                <col style = "width:10%;">
                                                <col style = "width:10%;">

                                                <thead>
                                                    <tr>
                                                    	<th>설비코드</th>
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
		                                            	<td><select name="ceq_code0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName, this.name);" autofocus>
		                                            			<option value="">선택
		                                            			<option value="025">장비
		                                            		</select></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "ceq_name0" id="first" onkeydown = "enter(this.tagName,this.name);" class="form-control"  placeholder = "ex)전산처리기계" style = "width: 100%; border:0px;"></td>
		                                                <td><select class="form-control" name = "ceq_type0" onfocus = "focuse();" style = "width: 100%; -webkit-appearance: none; border:0px;" required onchange="enter(this.tagName,this.name);">
		                                                	<option value="null">선택</option>
		                                                	<option value="보유">보유
		                                                	<option value="대여">대여
		                                                </select></td>
		                                                <td><input type="date" onfocus = "focuse(this.name);" name = "ceq_acquire_date0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "enter(this.tagName, this.name);" required></td>
		                                                <td><select class="form-control" onfocus = "focuse(this.name);" name = "deparment_code0" style = "width: 100%; -webkit-appearance: none; border:0px;"  onchange="enter(this.tagName, this.name);">
		                                                	<c:forEach var="vo" items="${dto}">
		                                                		<option value="${vo.department_code }">${vo.department_name }</option>
		                                                	</c:forEach>
			                                       		</select></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "ceq_location0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup="enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" class="form-control" name = "ceq_prime_cost0" onfocus = "focuse();" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup="removeChar(event); inputNumberFormat(this);" onchange="enter(this.tagName,this.name);" required></td>
			                                       		<td><input type="text" onfocus = "focuse(this.name);" name = "ceq_durable0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup="removeChar(event); inputNumberFormat(this);" onkeyup="enter(this.tagName, this.name);"></td>
			                                       		<td><select name="ceq_depreciation0" onfocus = "focuse();" class="form-control" style = "width: 100%; -webkit-appearance: none; border:0px;" onchange="enterinsert(0);" required>
			                                       			<option value="">선택</option>
			                                       			<option value="2">Y</option>
			                                       			<option value="1">N</option>
			                                       		</select>
			                                       		<td>
			                                       		<select id="enter" name = "ceq_depreciation_type0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onchange="enter(this.tagName, this.name);">
			                                       			<option value="N">선택
			                                       			<option value="정률법">정률법
			                                       			<option value="정액법">정액법
			                                       		</select>
			                                       		</td>
		                                            </tr>
		                                        </tbody>
                                            </table>
<<<<<<< HEAD
                                          </form>   
										  </div>
										  <div class="form-group text-right mb-0">
		    										<button onclick="add();" type="button" class="btn btn-outline-primary waves-effect waves-light">추가</button>
		    										<button onclick="del();" type="button" class="btn btn-outline-primary waves-effect waves-light">삭제</button>
											</div>
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
        
        <script type="text/javascript">
        
        //문자 지우기
        function removeChar(event) {
       	    event = event || window.event;
       	    var keyID = (event.which) ? event.which : event.keyCode;
       	    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
       	        return;
       	    else
       	    	 event.target.value = event.target.value.replace(/[^-\.0-9]/g, "");
       }
       
      //콤마 찍기
        function comma(obj) {
            var regx = new RegExp(/(-?\d+)(\d{3})/);
            var bExists = obj.indexOf(".", 0);//0번째부터 .을 찾는다.
            var strArr = obj.split('.');
            while (regx.test(strArr[0])) {//문자열에 정규식 특수문자가 포함되어 있는지 체크
                //정수 부분에만 콤마 달기 
                strArr[0] = strArr[0].replace(regx, "$1,$2");//콤마추가하기
            }
            if (bExists > -1) {
                //. 소수점 문자열이 발견되지 않을 경우 -1 반환
                obj = strArr[0] + "." + strArr[1];
            } else { //정수만 있을경우 //소수점 문자열 존재하면 양수 반환 
                obj = strArr[0];
            }
            return obj;//문자열 반환
        }
      
      //input 태그 콤마 달기
        function inputNumberFormat(obj) {
       	    obj.value = comma(obj.value);
       	}
        
        </script>
=======
                                            </form>
										  </div>
										  <div class="form-group text-right mb-0">
		    										<button onclick="add();" type="button" class="btn btn-outline-primary waves-effect waves-light">추가</button>
		    										<button onclick="del();" type="button" class="btn btn-outline-primary waves-effect waves-light">삭제</button>
											</div>
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
        
        <script type="text/javascript">
        
        //문자 지우기
        function removeChar(event) {
       	    event = event || window.event;
       	    var keyID = (event.which) ? event.which : event.keyCode;
       	    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
       	        return;
       	    else
       	    	 event.target.value = event.target.value.replace(/[^-\.0-9]/g, "");
       }
       
      //콤마 찍기
        function comma(obj) {
            var regx = new RegExp(/(-?\d+)(\d{3})/);
            var bExists = obj.indexOf(".", 0);//0번째부터 .을 찾는다.
            var strArr = obj.split('.');
            while (regx.test(strArr[0])) {//문자열에 정규식 특수문자가 포함되어 있는지 체크
                //정수 부분에만 콤마 달기 
                strArr[0] = strArr[0].replace(regx, "$1,$2");//콤마추가하기
            }
            if (bExists > -1) {
                //. 소수점 문자열이 발견되지 않을 경우 -1 반환
                obj = strArr[0] + "." + strArr[1];
            } else { //정수만 있을경우 //소수점 문자열 존재하면 양수 반환 
                obj = strArr[0];
            }
            return obj;//문자열 반환
        }
      
      //input 태그 콤마 달기
        function inputNumberFormat(obj) {
       	    obj.value = comma(obj.value);
       	}
        
        </script>
>>>>>>> branch 'master' of https://github.com/kdirector1990/WeRPNetwork.git
    </body>
    </html>