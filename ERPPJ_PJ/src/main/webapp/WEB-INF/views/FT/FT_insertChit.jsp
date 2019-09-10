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
        	var date = new Date();
       		var toyear = date.getFullYear(); //yyyy 
       		var tomonth = (1 + date.getMonth()); //M 
       		tomonth = tomonth >= 10 ? tomonth : '0' + tomonth; //month 두자리로 저장 
       		var today = date.getDate(); //d 
       		today = today >= 10 ? today : '0' + today; //day 두자리로 저장
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
        	}
        	
        	function RLenter(cc, dd) {
       			if(window.event.which == 97) {
           			$("input[name=" + dd + "]").val("차변");
           		} else if(window.event.which == 98) {
           			$("input[name=" + dd + "]").val("대변");
           		} else {
           			$("input[name=" + dd + "]").val("");
           		}
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
         		obj.wname = $("input[name=writer" + vv + "]").val();
         		obj.fname = $("input[name=formaler" + vv + "]").val();
         		obj.date = $("#year").val() + "-" + $("#month").val() + "-" + $("#day").val();
         		obj.number = $("#journalNum").val();
         		obj.accountcode = $("input[name=accountcode" + vv + "]").val();
         		obj.subjectcode = $("input[name=subjectcode" + vv + "]").val();
         		if($("input[name=RLstate" + vv + "]").val() == "대변"){
         			obj.leftprice = "0";
         			obj.leftcount = "0";
         			obj.rightprice = $("input[name=price" + vv + "]").val();
         			obj.rightcount = $("input[name=count" + vv + "]").val();
         		} else {
         			obj.rightprice = "0";
         			obj.rightcount = "0";
         			obj.leftprice = $("input[name=price" + vv + "]").val();
         			obj.leftcount = $("input[name=count" + vv + "]").val();
         		}
         		obj.text = $("input[name=text" + vv + "]").val();
         		obj.type = $("input[name=type" + vv + "]").val();
         		obj.updateday = $("input[name=updateday" + vv + "]").val();
        		
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
        		var obj = new Object();
        		var jsonData;
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
                        '<input type = "hidden" name = "writer' + count + '" value = "${sessionScope.name}">' +
                        '<input type = "hidden" name = "formaler' + count + '" value = "">' +
                        '<td>' +
                        '<input type="text" onfocus = "focuse(this.name);" name = "date' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "key' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "number' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + $("#journalNum").val() + '"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" id = "first' + count + '" name = "RLstate' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "RLenter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectcode' + count + '" class="form-control" onclick = "subjectlist(' + count + ')" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectname' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "accountcode' + count + '" class="form-control" onclick = "accountlist(' + count + ')" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "accountname' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "price' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "count' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "text' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
                        '<td><select class="form-control" id = "enter' + count + '" onfocus = "focuse(this.name);" name = "type' + count + '" style = "width: 100%; -webkit-appearance: none; border:0px;" onkeydown = "enter(this.tagName,this.name);" onchange="enterinsert(' + count + ');">' +
                        '<option value="0">== 선택 ==</option>' +
                        '<option value="1">일반</option>' +
                        '<option value="2">매입</option>' +
                        '<option value="3">매출</option>' +
                        '<option value="4">결산</option>' +
                   		'</select></td>' +
                        '<td><input type="text" onfocus = "focuse(this.name);" name = "updateday' + count + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + toyear + "-" + tomonth + "-" + today + '"></td>' +
                    '</tr>');
                    count = count + 1;
          		 $("input[name=key"+ cc +"]").val("1000" + cc);
       			 $(".chit-table-bordered-primary tbody #first" + count).focus();

         		// 자바스크립트 객체 생성
         		obj.wname = $("input[name=writer" + cc + "]").val();
         		obj.fname = $("input[name=formaler" + cc + "]").val();
         		obj.date = $("#year").val() + "-" + $("#month").val() + "-" + $("#day").val();
         		obj.number = $("#journalNum").val();
         		obj.accountcode = $("input[name=accountcode" + cc + "]").val();
         		obj.subjectcode = $("input[name=subjectcode" + cc + "]").val();
         		if($("input[name=RLstate" + cc + "]").val() == "대변"){
         			obj.leftprice = "0";
         			obj.leftcount = "0";
         			obj.rightprice = $("input[name=price" + cc + "]").val();
         			obj.rightcount = $("input[name=count" + cc + "]").val();
         		} else {
         			obj.rightprice = "0";
         			obj.rightcount = "0";
         			obj.leftprice = $("input[name=price" + cc + "]").val();
         			obj.leftcount = $("input[name=count" + cc + "]").val();
         		}
         		obj.text = $("input[name=text" + cc + "]").val();
         		obj.type = $("input[name=type" + cc + "]").val();
         		obj.updateday = $("input[name=updateday" + cc + "]").val();
         		
         		
         		// json 객체를 String 객체로 변환 -- 
         		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
         		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
         		jsonData = JSON.stringify(obj);
         		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
         		
         		$.ajax({
                        type : "POST",
                        url : "/erp/FT_chitInsert?${_csrf.parameterName }=${_csrf.token }",
                        data : jsonData,
                        contentType : 'application/json;charset=UTF-8',
                        success : function(data) {
							alert(data);
                        },
                        error : function(e) {
                               alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                        }
                });
        	}
        	
        	function subjectlist(subjectcode) {
            	var popupX = Math.ceil((window.screen.width - 363)/2);
            	var popupY = Math.ceil((window.screen.height - 528)/2);
        		var url = "FT_Subject_list?key=" + $("*[name=subjectcode" + subjectcode + "]").val() + "&keyname=" + subjectcode;
        		window.open(url, "subject_list", "menubar=no, width=363px, height = 528px, left="+ popupX + ", top="+ popupY);
        		
        	}
        	
        	function accountlist(accountcode) {
            	var popupX = Math.ceil((window.screen.width - 363)/2);
            	var popupY = Math.ceil((window.screen.height - 528)/2);
        		var url = "FT_account_list?key=" + $("*[name=accountcode" + accountcode + "]").val() + "&keyname=" + accountcode;
        		window.open(url, "account_list", "menubar=no, width=363px, height = 528px, left=" + popupX + ", top=" + popupY);
        		
        	}
        	
        	function ajaxload() {
        		var obj = new Object();
        		var jsonData;
        		
        		if(!$("#year").val()){
        			$("#year").focus();
        			return false;
        		} else if(!$("#month").val()) {
        			$("#month").focus();
        			return false;
        		} else if(parseInt($("#day").val()) > (new Date(obj.year, obj.month, 0)).getDate()){
        			alert("날짜가 초과되었습니다. 다시 입력해주세요");
        			$("#day").focus();
        			return false;
        		} else if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
	        		obj.year = $("#year").val();
	        		obj.month = $("#month").val();
	        		obj.day = $("#day").val();
	        		
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		alert((new Date(obj.year, obj.month, 0)).getDate());
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_chitMaxNumber?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   alert(data);
	                    	   $("#journalNum").attr("max", data);
	                    	   $("#journalNum").val(data);
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
        		}
        	}
        	
        	function change() {
        		if(window.event.which == 13){
	        		var obj = new Object();
	        		var jsonData;
	        		
	        		if(!$("#year").val()){
	        			$("#year").focus();
	        			return false;
	        		} else {
		        		// 자바스크립트 객체 생성
		        		obj.year = $("#year").val();
		        		obj.month = $("#month").val();
		        		obj.day = $("#day").val();
		        		obj.chkno = $("#journalNum").val();
		        		
		        		// json 객체를 String 객체로 변환 -- 
		        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
		        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
		        		jsonData = JSON.stringify(obj);
		        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
		        		$.ajax({
		                       type : "POST",
		                       url : "/erp/FT_chitDataLoad?${_csrf.parameterName }=${_csrf.token }",
		                       data : jsonData,
		                       contentType : 'application/json;charset=UTF-8',
		                       success : function(data) {
		                    	   $(".chit-table-bordered-primary tbody").html("");
		                    	   if(data != null){
		                    		var i = 0;
									for(i = 0; i < data.length; i++){
										var RLtype;
										var price;
										if(data[i].debtor_value == 0){
											RLtype = "대변";
										} else {
											RLtype = "차변";
										}
										
										if(data[i].debtor_value == 0){
											price = data[i].creditor_value;
										} else {
											price = data[i].debtor_value;
										}
										
										$(".chit-table-bordered-primary tbody").append('<tr>' +
		                                    '<input type = "hidden" name = "writer' + i + '" value = "' + data[i].wname + '">' +
		                                    '<input type = "hidden" name = "formaler' + i + '" value = "' + data[i].fname + '">' +
		                                    '<td>' +
		                                    '<input type="text" onfocus = "focuse(this.name);" name = "date' + i + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + $("#day").val() + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "key' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + data[i].journal_code + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "number' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + data[i].journal_number + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" id = "first' + i + '" name = "RLstate' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "RLenter(this.tagName, this.name);" value = "' + RLtype + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectcode' + i + '" class="form-control" onclick = "subjectlist(' + i + ')" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" value = "' + data[i].detail_ac_code + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectname' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + data[i].account_name + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "accountcode' + i + '" class="form-control" onclick = "accountlist(' + i + ')" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" value = "' + data[i].customer_code + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "accountname' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + data[i].customer_name + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "price' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" value = "' + price + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "count' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" value = "' + data[i].count_value + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "text' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);" value = "' + data[i].journal_abstract + '"></td>' +
		                                    '<td><select class="form-control" id = "enter' + i + '" onfocus = "focuse(this.name);" name = "type' + i + '" style = "width: 100%; -webkit-appearance: none; border:0px;" onkeydown = "enterupdate(' + i + ');" onchange="enterupdate(' + i + ');" value = "' + data[i].jr_state + '">' +
		                                    '<option value="0">== 선택 ==</option>' +
		                                    '<option value="1">일반</option>' +
		                                    '<option value="2">매입</option>' +
		                                    '<option value="3">매출</option>' +
		                                    '<option value="4">결산</option>' +
		                               		'</select></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "updateday' + i + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + data[i].last_update + '"></td>' +
		                                '</tr>');
									}
		                    	   }
		                    	   $(".chit-table-bordered-primary tbody").append('<tr>' +
		                                    '<input type = "hidden" name = "writer' + i + '" value = "${sessionScope.name}">' +
		                                    '<input type = "hidden" name = "formaler' + i + '" value = "">' +
		                                    '<td>' +
		                                    '<input type="text" onfocus = "focuse(this.name);" name = "date' + i + '" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 100%; border:0px;" value = "30" readonly onclick = "notfocus(this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "key' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "number' + i + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex)10001" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + $("#journalNum").val() + '"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" id = "first' + i + '" name = "RLstate' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeyup = "RLenter(this.value, this.name);" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectcode' + i + '" class="form-control" onclick = "subjectlist(0)" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "subjectname' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "accountcode' + i + '" class="form-control" onclick = "accountlist(0)" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "accountname' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "price' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "count' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "text' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" onkeydown = "enter(this.tagName, this.name);"></td>' +
		                                    '<td><select class="form-control" id = "enter' + i + '" onfocus = "focuse(this.name);" name = "type' + i + '" style = "width: 100%; -webkit-appearance: none; border:0px;" onkeydown = "enter(this.tagName,this.name);" onchange="enterinsert(' + i + ');">' +
		                                    '<option value="">== 선택 ==</option>' +
		                                    '<option value="일반">일반</option>' +
		                                    '<option value="매입">매입</option>' +
		                                    '<option value="매출">매출</option>' +
		                                    '<option value="결산">결산</option>' +
		                               		'</select></td>' +
		                                    '<td><input type="text" onfocus = "focuse(this.name);" name = "updateday' + i + '" class="form-control" data-toggle="input-mask" style = "width: 100%; border:0px;" readonly onclick = "notfocus(this.name);" value = "' + toyear + "-" + tomonth + "-" + today + '"></td>' +
		                                '</tr>');
		        						count = i+1;
		                       },
		                       error : function(e) {
		                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
		                       }
		        		});
	        		}
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
                                            	<td><input type="text" class="" data-toggle="input-mask" data-mask-format="0000" placeholder = "ex)2018" style = "width: 100px;" id = "year"></td>
                                            	<td>월</td>
                                            	<td><select class="" style = "width:50px;" id = "month">
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
                                            	<td><input type="text" class="" id = "day" data-toggle="input-mask" data-mask-format="00" placeholder = "ex)29" style = "width: 100px;" onkeydown="ajaxload();"></td>
                                            	<td><input type="number" class="" id = "journalNum" data-toggle="input-mask" style = "width: 100px;" min = "0" max="0" value = "0" onkeydown="change();"></td>
                                            	
                                            </tr>
                                        </table>
                                        
                                       <div class="table-responsive" style = "margin: 15px 0px 50px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:5%;">
                                                <col style = "width:8%;">
                                                <col style = "width:5%">
                                                <col style = "width:8%;">
                                                <col style = "width:6%;">
                                                <col style = "width:10%;">
                                                <col style = "width: 6%;">
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
		                                                <th>구분</th>
		                                                <th>계정</th>
		                                                <th>계정명</th>
		                                                <th>거래처</th>
		                                                <th>거래처명</th>
		                                                <th>금액</th>
		                                                <th>수량</th>
		                                                <th>적요</th>
		                                                <th>전표상태</th>
		                                                <th>최종수정일</th>
		                                            </tr>
		                                        </thead>
		    
		                                        <tbody>
		                                            
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