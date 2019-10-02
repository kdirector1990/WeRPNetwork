<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../setting.jsp"%>
<script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/erp/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
        	var count = 1;
        	var subcount = 1;
        	var frontcursor;
        	var updatekey = 0;
        	var selectval;
        	var d = new Date();
			$(function(){
        		$("#dated").val(d.getFullYear());
			});
        	function focuse(s) {
        		$(".chit-table-bordered-primary tbody *").focus(function() {
        			$(".chit-table-bordered-primary tbody *").css("background-color", "");
        			$(this).parent().css("background-color", "#D6EAF8");
        			$(this).css("background-color", "#D6EAF8");
        		});
        		var obj = new Object();
        		var jsonData;
        		
        		obj.dated = $("#dated").val();
        		
        		// json 객체를 String 객체로 변환 -- 
        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
        		jsonData = JSON.stringify(obj);
        		
        		
        		// 자바스크립트 객체 생성
        		if($("#name" + s).html() == "건물"){
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_BDepreciationDataList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   $(".chitsub-table-bordered-primary tbody").html("");
	                    	   if(data != null){
								for(var i = 0; i < data.length; i++){
									$(".chitsub-table-bordered-primary tbody").append('<tr>' +
										'<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].code + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].name + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].baseCost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].beforesum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].unprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                '</tr>');
								}
	                    	   }
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
        		} else if($("#name" + s).html() == "토지"){
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_LDepreciationDataList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   $(".chitsub-table-bordered-primary tbody").html("");
	                    	   if(data != null){
								for(var i = 0; i < data.length; i++){
									$(".chitsub-table-bordered-primary tbody").append('<tr>' +
											'<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].code + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].name + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].baseCost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].beforesum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].unprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                '</tr>');
								}
	                    	   }
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
	     		} else if($("#name" + s).html() == "설비"){
	        		$.ajax({
	                    type : "POST",
	                    url : "/erp/FT_EDepreciationDataList?${_csrf.parameterName }=${_csrf.token }",
	                    data : jsonData,
	                    contentType : 'application/json;charset=UTF-8',
	                    success : function(data) {
	                 	   $(".chitsub-table-bordered-primary tbody").html("");
	                 	   if(data != null){
								for(var i = 0; i < data.length; i++){
									$(".chitsub-table-bordered-primary tbody").append('<tr>' +
											'<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].code + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].name + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].baseCost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].beforesum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
											'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
											'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
											'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
											'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].unprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                             '</tr>');
								}
	                 	   }
	                    },
	                    error : function(e) {
	                    		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                    }
	     		});
	 		} else if($("#name" + s).html() == "전산설비"){
	    		$.ajax({
	                type : "POST",
	                url : "/erp/FT_CDepreciationDataList?${_csrf.parameterName }=${_csrf.token }",
	                data : jsonData,
	                contentType : 'application/json;charset=UTF-8',
	                success : function(data) {
	             	   $(".chitsub-table-bordered-primary tbody").html("");
	             	   if(data != null){
							for(var i = 0; i < data.length; i++){
								$(".chitsub-table-bordered-primary tbody").append('<tr>' +
										'<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].code + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].name + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].baseCost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].beforesum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                                    '<td onfocus = "subfocuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
										'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
										'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
										'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
										'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].unprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
	                         '</tr>');
							}
	             	   }
	                },
	                error : function(e) {
	                		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                }
	 			});
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
        			var nowme = $("*[name=" + dd + "]").parent();
        			if(window.event.which == 13){
    					nowme.next().children().focus();
    					return false;
            		} else if(window.event.which == 9) {
            			if($("*[name=" + dd + "]").parent().parent().parent().parent().attr("class") == "table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered"){
                			frontcursor = dd;
            				$(".chitsub-table-bordered-primary tbody #firstsub").focus();
            				$(".chitsub-table-bordered-primary tbody #firstsub").parent().prev().children().focus();
            			} else if($("*[name=" + dd + "]").parent().parent().parent().parent().attr("class") == "table m-0 chitsub-table-colored-bordered chitsub-table-bordered-primary table-bordered"){
            				$("*[name=" + frontcursor + "]").focus();
            				$("*[name=" + frontcursor + "]").parent().prev().children().focus();
            			}
            				
            		} else if(window.event.which == 37) {
            			for(var i = 0; i < $("*[name=" + dd + "]").parent().prevAll().children().length; i++){
        					nowme.prev().children().focus();
        					return false;
        				}
            		} else if(window.event.which == 38) {
            			$("*[name=" + dd.substring(0, dd.length-1) + (parseInt(dd.substring(dd.length-1,dd.length)) - 1) + "]").focus();
            		} else if(window.event.which == 39) {
        				for(var i = 0; i < $("*[name=" + dd + "]").parent().nextAll().children().length; i++){
        					nowme.next().children().focus();
        					return false;
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
        	
        	function allCheck(dd) {
        		if($("img[name=" + dd + "]").attr("src") == "/erp/resources/img/checked.png"){
        			$("img[name=" + dd + "]").attr("src", "/erp/resources/img/checked2.png");
        			$("input[type='checkbox']").prop("checked", true);
        		} else {
        			$("img[name=" + dd + "]").attr("src", "/erp/resources/img/checked.png");
        			$("input[type='checkbox']").prop("checked", false);
        		}
        	}
        	
        	function chkformal() {
        		var obj = new Object();
        		var jsonData;
                
        		var dd = document.getElementsByName("check");
        		var datelist = "";
        		var nolist = "";
        		for(var i = 0; i<dd.length; i++) {
        			if(dd[i].checked){
        				datelist += $("input[name=date" + dd[i].value + "]").val() + "/";
        				nolist += $("input[name=no" + dd[i].value + "]").val() + "/";
        			}
        		}
              	// 자바스크립트 객체 생성
         		obj.dates = datelist;
         		obj.nos = nolist;
         		obj.username = ${sessionScope.username};
         		// json 객체를 String 객체로 변환 -- 
         		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
         		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
         		jsonData = JSON.stringify(obj);
         		
         		$.ajax({
                        type : "POST",
                        url : "/erp/FT_CheckFormal?${_csrf.parameterName }=${_csrf.token }",
                        data : jsonData,
                        contentType : 'application/json;charset=UTF-8',
                        success : function(data) {
                        	alert(data);
                        	location.reload();
                        },
                        error : function(e) {
                               alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                        }
                });
        	}
        	
        	function ajaxload() {
        		var obj = new Object();
        		var jsonData;
        		
        		if(window.event.which == 13){
	        		// 자바스크립트 객체 생성
        			if(parseInt($("#dated").val()) < d.getFullYear()){
            			alert("오늘날 이하로 해주세요!");
            			$("#dated").focus();
            			return false;
            		} else if(!$("#dated").val()){
            			alert("입력해주세요!!");
            			$("#dated").focus();
            			return false;
            		}
	        		obj.dated = $("#dated").val();
	        		
	        		// json 객체를 String 객체로 변환 -- 
	        		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
	        		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
	        		jsonData = JSON.stringify(obj);
	        		$(".chit-table-bordered-primary tbody").html("");
	        		/* sendRequest(load_insert, "FT_chitupdate", "post", jsonData); */
	        		$.ajax({
	                       type : "POST",
	                       url : "/erp/FT_DepreciationList?${_csrf.parameterName }=${_csrf.token }",
	                       data : jsonData,
	                       contentType : 'application/json;charset=UTF-8',
	                       success : function(data) {
	                    	   if(data != null){
									for(i = 0; i < data.length; i++){
										$(".chit-table-bordered-primary tbody").append('<tr>' +
												'<td onclick = "focuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
												'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
												'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
												'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].code + '</td>' +
			                                    '<td onclick = "focuse(' + i + ');" id = "name' + i + '" style = "height: calc(1.5em + .9rem + 2px);' +
												'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
												'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
												'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].name + '</td>' +
			                                    '<td onclick = "focuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
												'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
												'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
												'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].baseCost.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
			                                    '<td onclick = "focuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
												'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
												'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
												'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].beforesum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
			                                    '<td onclick = "focuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
												'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
												'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
												'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
			                                    '<td onclick = "focuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
												'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
												'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
												'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].nowsum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
			                                    '<td onclick = "focuse(' + i + ');" style = "height: calc(1.5em + .9rem + 2px);' +
												'padding: .45rem .9rem; font-size: .8125rem; font-weight: 400; line-height: 1.5; color: #6c757d; background-color: #fff;' +
												'background-clip: padding-box; border: 1px solid #ced4da; border-radius: .2rem; vertical-align:middle;' +
												'-webkit-transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, -webkit-box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;' +
												'transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out, -webkit-box-shadow .15s ease-in-out">' + data[i].unprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + '</td>' +
		                                '</tr>');
									}
		                    	   } else {
		                    		   alert("데이터가 없습니다. 있는 기간을 선택해주세요!");
		                    	   }
	                       },
	                       error : function(e) {
	                       		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                       }
	        		});
        		}
        	}
        </script>
<!-- Table datatable css -->
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
	href="/erp/resources/assets/libs/datatables/fixedcolumns.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
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
											href="javascript: void(0);">Codefox</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">Tables</a></li>
										<li class="breadcrumb-item active">Datatables</li>
									</ol>
								</div>
								<h4 class="page-title">감가상각현황</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<input type="hidden" name="${_csrf.parameterName }"
						value="${_csrf.token }">
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body table-responsive">
									<table id="datatable"
										style="border-collapse: collapse; border-spacing: 0; width: 100%;">
										<tr>
											<td>기간&emsp;&emsp;
											<input type="text" id = "dated" onkeyup = "ajaxload();" class="form-control" data-toggle="input-mask" data-mask-format="0000" placeholder = "YYYY" style = "width:200px; display:inline;">
											</td>
										</tr>
									</table>

									<div class="table-responsive" style="margin: 15px 0px 50px">
										<table
											class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
											<col style = "width:10%;">
											<col style = "width:10%;">
											<col style = "width:10%;">
											<col style = "width:20%;">
											<col style = "width:20%;">
											<col style = "width:20%;">
											<col style = "width:10%;">
											<thead>
												<tr>
													<th>코드</th>
													<th>계정과목</th>
													<th>기초가액</th>
													<th>전기충당금누계액</th>
													<th>당기감가상각비</th>
													<th>감가상각누계액</th>
													<th>미상각액</th>
												</tr>
											</thead>

											<tbody>

											</tbody>
										</table>
									</div>

									<div class="table-responsive" style="margin: 0px 0px 50px">
										<table
											class="table m-0 chitsub-table-colored-bordered chitsub-table-bordered-primary table-bordered">
											<col style = "width:10%;">
											<col style = "width:10%;">
											<col style = "width:10%;">
											<col style = "width:20%;">
											<col style = "width:20%;">
											<col style = "width:20%;">
											<col style = "width:10%;">
											<thead>
												<tr>
													<th>코드</th>
													<th>계정과목</th>
													<th>기초가액</th>
													<th>전기충당금누계액</th>
													<th>당기감가상각비</th>
													<th>감가상각누계액</th>
													<th>미상각액</th>
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
				</div>
				<!-- end container-fluid -->

			</div>
			<!-- end content -->


			<%@ include file="../footer.jsp"%>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="../rightbar.jsp"%>
	<%@ include file="../setting2.jsp"%>
	
    <!-- Plugins js -->
    <script src="/erp/resources/assets/libs/jquery-mask-plugin/jquery.mask.min.js"></script>
    <script src="/erp/resources/assets/libs/autonumeric/autoNumeric-min.js"></script>
    
    <!-- Init js-->
    <script src="/erp/resources/assets/js/pages/form-masks.init.js"></script>
</body>
</html>