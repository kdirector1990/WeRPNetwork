<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
		<script src="/erp/resources/assets/css/js/request.js"></script>
        <script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	var frontcursor;
        	var updatekey = 0;
        	var selectval;
        	function notfocus(dd){
    			var nowme = $("*[name=" + dd + "]").parent();
        		for(var i = 0; i < $("*[name=" + dd + "]").parent().nextAll().children().length; i++){
					nowme = nowme.next();
					if(!nowme.children().attr("readonly")){
						nowme.children().focus();
						return false;
					}
				}
    			nowme = $("*[name=" + dd + "]").parent();
    			for(var i = 0; i < $("*[name=" + dd + "]").parent().prevAll().children().length; i++){
					nowme = nowme.prev();
					if(!nowme.children().attr("readonly")){
						nowme.children().focus();
						return false;
					}
				}
        	}
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
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subnumber0" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly onclick = "notfocus(this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" id = "firstsub"  name = "subtype0" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "code0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subject0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountcode0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountname0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "hostno0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "price0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subno0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "summary0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" id = "entersub" name = "document0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "entersubinsert(0,this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "computer0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                       '<td><input type="text" onfocus = "subfocuse(this.name);" name = "tax0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
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
            			if($("*[name=" + dd + "]").parent().parent().parent().parent().attr("class") == "table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered"){
                			frontcursor = dd;
            				$(".chitsub-table-bordered-primary tbody #firstsub").focus();
            				$(".chitsub-table-bordered-primary tbody #firstsub").parent().prev().children().focus();
            			} else if($("*[name=" + dd + "]").parent().parent().parent().parent().attr("class") == "table m-0 chitsub-table-colored-bordered chitsub-table-bordered-primary table-bordered"){
            				$("*[name=" + frontcursor + "]").focus();
            				$("*[name=" + frontcursor + "]").parent().prev().children().focus();
            			}
            			$("*[name=" + dd + "]").parent().prev().children().focus();
            			return false;	
            		} else if(window.event.which == 37) {
            			for(var i = 0; i < $("input[name=" + dd + "]").parent().prevAll().children().length; i++){
        					nowme = nowme.prev();
        					if(!nowme.children().attr("readonly")){
        						nowme.children().focus();
        						return false;
        					}
        				}
						return false;
            		} else if(window.event.which == 38) {
            			$("input[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) - 1) + "]").focus();
            		} else if(window.event.which == 39) {
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
        		obj.key = $("input[name=key" + vv + "]").val();
        		
        		// json 객체를 String 객체로 변환 -- 
        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
        		jsonData = JSON.stringify(obj);
        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
        		
        		$.ajax({
                       type : "POST",
                       url : "/erp/FT_chitupdate?${_csrf.parameterName }=${_csrf.token }",
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
        		frontcursor = $(".chit-table-bordered-primary tbody #enter" + cc).attr("name");
       			$(".chit-table-bordered-primary tbody #enter" + cc).attr("onchange", "enterupdate(" + cc + ");");
       			$(".chit-table-bordered-primary tbody #enter" + cc).attr("onkeydown", "enterupdate(" + cc + ");");
       			$(".chit-table-bordered-primary tbody").append('<tr>' +
       					'<input type = "hidden" name = "writer' + count + '" value = "작성자">' +
                		'<input type = "hidden" name = "formaler' + count + '" value = "승인자">' +
       					'<td><input type="text" onfocus = "focuse(this.name);" name = "date' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "key' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" id = "first' + count + '" name = "number' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectcode' + count + '" class="form-control" onclick = "" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectname' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "accountcode' + count + '" class="form-control" onclick = "" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "accountname' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "leftprice' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "rightprice' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "count' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><select class="form-control" id = "enter' + count + '" onfocus = "focuse(this.name);" name = "type' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;" onkeydown = "enter(this.tagName,this.name);" onchange="enterinsert(' + count + ');">' +
                        '<option value="">== 선택 ==</option>' +
                        '<option value="일반">일반</option>' +
                        '<option value="매입">매입</option>' +
                        '<option value="매출">매출</option>' +
                        '<option value="결산">결산</option>' +
                   		'</select></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "updateday' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                       '</tr>');
                    count = count + 1;
          		 $("input[name=key"+ cc +"]").val("1000" + cc);
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
        	
        	function entersubinsert(cc, dd) {
        		var nowme = $("*[name=" + dd + "]").parent();
        		if(window.event.which == 9) {
        			$("*[name=" + dd + "]").parent().prev().children().focus();
        		} else if(window.event.which == 37) {
        			for(var i = 0; i < $("*[name=" + dd + "]").parent().prevAll().children().length; i++){
    					nowme = nowme.prev();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
        		} else if(window.event.which == 38) {
        			$("*[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) - 1) + "]").focus();
        			return false;
        		} else if(window.event.which == 39) {
    				for(var i = 0; i < $("*[name=" + dd + "]").parent().nextAll().children().length; i++){
    					nowme = nowme.next();
    					if(!nowme.children().attr("readonly")){
    						nowme.children().focus();
    						return false;
    					}
    				}
        		} else if(window.event.which == 40) {
        			$("*[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) + 1) + "]").focus();
        			return false;
        		} else if(window.event.which == 13){
        			/* var nowme = $("input[name=" + dd + "]").parent();
        			if($("input[name=" + dd + "]").val() == ""){
        				alert("글씨를 입력하세요!");
        				return false;
        			} */
	       			$(".chitsub-table-bordered-primary tbody #entersub").attr("onchange", "entersubupdate(" + cc + ");");
	       			$(".chitsub-table-bordered-primary tbody #entersub").attr("id", "entersub" + cc);
	       			$(".chitsub-table-bordered-primary tbody #firstsub").attr("id", "firstsub" + cc);
	       			$(".chitsub-table-bordered-primary tbody").append('<tr>' +
	       					'<td><input type="text" onfocus = "subfocuse(this.name);" name = "subnumber' + subcount + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly onclick = "notfocus(this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" id = "firstsub"  name = "subtype' + subcount + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "code' + subcount + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subject' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountcode' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "accountname' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "hostno' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "price' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "subno' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "summary' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "document' + subcount + '" id = "entersub" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "entersubinsert(' + subcount + ',this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "computer' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
	                        '<td><input type="text" onfocus = "subfocuse(this.name);" name = "tax' + subcount + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
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
        	
        	
        	function subjectlist(subjectcode) {
        		var url = "FT_Subject_list?key=" + $("*[name=subjectCode" + subjectcode + "]").val() + "&keyname=" + subjectcode;
        		window.open(url, "subject_list", "menubar=no, width=700, height = 500");
        		
        	}
        	
        	function accountlist(accountcode) {
        		var url = "FT_account_list?key=" + $("*[name=accountCode" + accountcode + "]").val() + "&keyname=" + accountcode;
        		window.open(url, "account_list", "menubar=no, width=700, height = 500");
        		
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
                                        <div align="right" style = "margin-bottom: 30px;">
    									<button type="button" class="btn btn-outline-primary waves-effect waves-light">전표삭제</button>
    									<br>
    									</div>
    									<table id="datatable" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <tr>
                                                <td>결의부서</td>
                                                <td><input type="text" class="" readonly style = "width: 100px;">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                	<input type="text" class="" readonly style = "width: 100px;">
                                                </td>
                                                
                                                <td>작성자</td>
                                                <td><input type="text" class="" readonly style = "width: 100px;">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                	<input type="text" class="" readonly style = "width: 100px;"></td>
                                               
                                                <td>년</td>
                                            	<td><input type="text" class="" data-toggle="input-mask" data-mask-format="0000" placeholder = "ex)2018" style = "width: 100px;"></td>
                                            	<td>월</td>
                                            	<td><select class="" style = "width:50px;">
			                                                <option value="1">1</option>
			                                                <option value="2">2</option>
			                                                <option value="3">3</option>
			                                                <option value="4">4</option>
			                                                <option value="5">5</option>
			                                                <option value="6">6</option>
			                                                <option value="7">7</option>
			                                                <option value="8">8</option>
			                                                <option value="9">9</option>
			                                                <option value="10">10</option>
			                                                <option value="11">11</option>
			                                                <option value="12" selected="selected">12</option>
			                                        </select></td>
                                            	<td>일</td>
                                            	<td><input type="text" class="" data-toggle="input-mask" data-mask-format="00" placeholder = "ex)29" style = "width: 100px;"></td>
                                            </tr>
                                        </table>
                                        
                                       <div class="table-responsive" style = "margin: 15px 0px 50px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:5%;">
                                                <col style = "width:8%;">
                                                <col style = "width:5%">
                                                <col style = "width:5%;">
                                                <col style = "width:10%;">
                                                <col style = "width:5%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 5%;">
                                                <col style = "width: 10%;">
                                                <col style = "width: 7%;">
                                                <col style = "width: 10%;">
                                                <thead>
                                                    <tr>
		                                                <th>일</th>
		                                                <th>분개코드</th>
		                                                <th>번호</th>
		                                                <th>계정</th>
		                                                <th>계정명</th>
		                                                <th>거래처</th>
		                                                <th>거래처명</th>
		                                                <th>차변금액</th>
		                                                <th>대변금액</th>
		                                                <th>수량</th>
		                                                <th>적요</th>
		                                                <th>전표상태</th>
		                                                <th>최종수정일</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            <tr>
		                                                <input type = "hidden" name = "writer0" value = "작성자">
		                                                <input type = "hidden" name = "formaler0" value = "승인자">
		                                                <td>
		                                                <input type="text" onfocus = "focuse(this.name);" name = "date0" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly onclick = "notfocus(this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "key0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" id = "first0" name = "number0" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "subjectcode0" class="form-control" onclick = "subjectlist(0)" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "subjectname0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "accountcode0" class="form-control" onclick = "accountlist(0)" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "accountname0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "leftprice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "rightprice0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "count0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>
		                                                <td><select class="form-control" id = "enter0" onfocus = "focuse(this.name);" name = "type0" style = "width: 100%; -webkit-appearance: none; border:0px;" onkeydown = "enter(this.tagName,this.name);" onchange="enterinsert(0);">
		                                                <option value="">== 선택 ==</option>
		                                                <option value="일반">일반</option>
		                                                <option value="매입">매입</option>
		                                                <option value="매출">매출</option>
		                                                <option value="결산">결산</option>
			                                       		</select></td>
		                                                <td><input type="text" onfocus = "focuse(this.name);" name = "updateday0" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>
		                                            </tr>
		                                        </tbody>
                                            </table>
                                        </div>
                                        
                                        <!-- <div class="table-responsive" style = "margin: 0px 0px 50px">
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
                                        </div> -->
                                    </div>
                                </div>
                                <div class="card">
									<div class="card-body">
										<!-- 인적정보 -->
										<form action="HR_inputProHR1" class="form-horizontal"
											method="post">
											<div class="col-sm-12">
												<div class="card-body table-responsive">
													<h4 class="header-title">상세 정보</h4>
													<h4 class="header-title">&nbsp;</h4>
													<div class="form-group row">
														<div class="col-md-5" id = "leftsummary">
															
														</div>
														<label class="col-md-1 col-form-label" for="simpleinput">&nbsp;</label>
														<div class="col-md-5" id = "rightsummary">
															
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