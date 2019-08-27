<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
         <script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
        <script type="text/javascript">
           var count = 1;   
       
           function focuse() {
               $(".chit-table-bordered-primary tbody *").focus(function() {
                  $(".chit-table-bordered-primary tbody *").css("background-color", "");
                  $(this).parent().parent().children().children().css("background-color", "#D6EAF8");
                  $(this).parent().parent().children().css("background-color", "#D6EAF8");
                  $(this).css("background-color", "");
                  $(this).parent().css("background-color", "");
               });
            }
           
           function enterupdate(vv) {
              if(event.keyCode == 13) {
                 alert(vv + 100);
              }
           }
           
           function enterinsert(cc) {
              if(event.keyCode == 13) {
                 alert(cc);
                 alert(count);
                 $(".chit-table-bordered-primary tbody #enter").attr("onkeyup", "enterupdate(" + cc + ");");
                 $(".chit-table-bordered-primary tbody #enter").attr("id", "enter" + cc);
                 $(".chit-table-bordered-primary tbody #first").attr("id", "first" + cc);
                 $(".chit-table-bordered-primary tbody").append('<tr>' +
                            '<td><input type="text" onfocus = "focuse();" name = "code' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "name' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "standard' + count + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "unit' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "amount' + count + '" class="form-control"  data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "revise' + count + '" id = "first" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "gap' + count + '" id = "first" class="form-control" data-toggle="input-mask"  style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "text' + count + '" class="form-control" data-toggle="input-mask" style = "width: 200px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "te' + count + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                           	'<td><input type="text" onfocus = "focuse();" name = "slee' + count + '" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 100px; border:0px;" onkeyup="enterinsert(' + count + ');"></td>' +
                        '</tr>');
                     count = count + 1;
                     alert(count);
                  $(".chit-table-bordered-primary tbody #first").focus();
              }
           }
           
           function enterinsert(zz) {
               if(event.keyCode == 13) {
                  alert(zz);
                  alert(count);
                  $(".chit-table-bordered-primary tbody #enter").attr("onkeyup", "enterupdate(" + zz + ");");
                  $(".chit-table-bordered-primary tbody #enter").attr("id", "enter" + zz);
                  $(".chit-table-bordered-primary tbody #first").attr("id", "first" + zz);
                  $(".chit-table-bordered-primary tbody").append('<tr>' +
                             '<td><input type="text" onfocus = "focuse();" name = "co' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "na' + count + '" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "am' + count + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "ga' + count + '" id = "first" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "re' + count + '" class="form-control"  data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                              '<td><input type="text" onfocus = "focuse();" name = "won' + count + '" id = "first" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>' +
                              '<td><input type="text" onfocus = "focuse();" name = "rewon' + count + '" id = "first" class="form-control" data-toggle="input-mask"  style = "width: 150px; border:0px;"></td>' +
                            	'<td><input type="text" onfocus = "focuse();" name = "diwon' + count + '" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 100px; border:0px;" onkeyup="enterinsert(' + count + ');"></td>' +
                         '</tr>');
                      count = count + 1;
                      alert(count);
                   $(".chit-table-bordered-primary tbody #first").focus();
               }
            }
           
           function enterinsert(ss) {
               if(event.keyCode == 13) {
                  alert(ss);
                  alert(count);
                  $(".chit-table-bordered-primary tbody #enter").attr("onkeyup", "enterupdate(" + ss + ");");
                  $(".chit-table-bordered-primary tbody #enter").attr("id", "enter" + ss);
                  $(".chit-table-bordered-primary tbody #first").attr("id", "first" + ss);
                  $(".chit-table-bordered-primary tbody").append('<tr>' +
                             '<td><input type="text" onfocus = "focuse();" name = "h' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "y' + count + '" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "s' + count + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "c' + count + '" id = "first" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "ye' + count + '" class="form-control"  data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                              '<td><input type="text" onfocus = "focuse();" name = "su' + count + '" id = "first" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "ca' + count + '" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 100px; border:0px;" onkeyup="enterinsert(' + count + ');"></td>' +
                         '</tr>');
                      count = count + 1;
                      alert(count);
                   $(".chit-table-bordered-primary tbody #first").focus();
               }
            }
           
        </script>
        
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
                                       <!--  <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Codefox</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">UI Kit</a></li>
                                            <li class="breadcrumb-item active">Images</li>
                                        </ol> -->
                                    </div>
                                    <h2 class="page-title">판매계획관리</h2>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
                        
                        
 
                        <!-- end row-->

                        <!-- ===== MEDIA ==== -->
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card"  style = "width: 1600px; height: 1700px;">
                                    <div class="card-body" style = "width: 1600px;">
                                        <h4 class="header-title mb-3">Default Tabs</h4>
                                        
                                                                               <div class="table-responsive">
                                         <table id="datatable" style="border-collapse:10px; border-spacing:10px; width: 100%; padding : 10px;">
                                            <tr>
                                                <td>사업장</td>
                                                <td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                                </td>
                                                
                                                <td>부서</td>
                                                <td>
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class="">
                                                <td>사원
                                                	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class="">
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                            	<td>견적기간</td>
                                            	<td>
                                            		<input type="date" id="userdate" name="userdate" value="yyyy">
                                            	</td>
                                            	<td>품목군</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class=""></td>
                                            
                                            	<td><select class="">
			                                                <option value="">0.품번</option>
			                                                <option value="">1.품명</option>
			                                                <option value="">2.규격</option>
			                                                <option value="">3.품번범위</option>
			                                                <option value="">4.품번개별</option>
			                                        </select>
			                                        <input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a>
                                            	</td>
                                            </tr>	
                                            	
                                            <tr>
                                            	<td>대분류</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class=""></td>
                                            	<td>중분류</td>
                                            	<td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class=""></td>
                                            	<td>소분류
                                            	<input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><input type="text" class=""></td>  
                                            </tr>
                                            
                                            <tr>
                                            <td>환종</td>
                                           	 <td><input type="text" class="">&nbsp;<a href="#"><i class="dripicons-zoom-in"></i></a><td>
                                            </tr>
                                        </table>
                                        </div>
    
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-home"></i></span>
                                                    <span class="d-none d-sm-block">품 목 별</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">        
                                                    <span class="d-block d-sm-none"><i class="fa fa-user"></i></span>
                                                    <span class="d-none d-sm-block">품목군별</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="message-tab" data-toggle="tab" href="#message" role="tab" aria-controls="message" aria-selected="false">
                                                    <span class="d-block d-sm-none"><i class="fa fa-envelope-o"></i></span>
                                                    <span class="d-none d-sm-block">월   별</span>
                                                </a>
                                            </li>
                                           
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-pane" id="home" role="tabpanel" aria-labelledby="home-tab">
                                   <div class="row">
		                            <div class="col-lg-12">
		                                <div class="card">
		                                    <div class="card-body">
		                                        <p class="sub-header">
		                                        </p>
                                        <div class="table-responsive">
                                          <div class="table-responsive" style = "margin: 15px 0px 15px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;"> 
                                                <col style = "width:160px;">
                                               
                                                <thead>
                                                    <tr>
                                                      <th>품번</th>
                                                      <th>품명</th>
                                                      <th>규격</th>
                                                      <th>단위 (관리)</th>
                                                      <th>연초수량</th>
                                                      <th>수정수량</th>
                                                      <th>차이수량</th>
                                                      <th>연초원화금액</th>
                                                      <th>수정원화금액</th>
                                                      <th>차이원화금액</th>
                                                  </tr>
                                              </thead>
          
          
                                              <tbody>
                                                  <tr>
                                                      <td><input type="text" onfocus = "focuse();" name = "code0" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "00000" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "name0" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "standard0" class="form-control"  data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                	  <td><input type="text" onfocus = "focuse();" name = "unit0" class="form-control" data-toggle="input-mask"  style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "amount0" class="form-control"  data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "revise0" class="form-control"  data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "gap0" class="form-control" data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "te0" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "slee0" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;" onkeyup="enterinsert(0);"></td>
                                                  </tr>
                                              </tbody>
                                            </table>
                                        </div>
		                              </div>
		                                        
		                                         <div class="table-responsive">
		                                            <table class="table m-0">
		                                                <thead>
		                                                    <tr>
		                                                        <th>해당월</th>
		                                                        <th>연초 수량</th>
		                                                        <th>수정 수량</th>
		                                                        <th>차이 수량</th>
		                                                        <th>연초 원화 단가</th>
		                                                        <th>연초 원화 금액</th>
		                                                        <th>수정 원화 금액</th>
		                                                        <th>차이 원화 금액</th>
		                                                    </tr>
		                                                </thead>
		                                                <tbody>
		                                                    <tr>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                   </tr>
		                                                </tbody>
		                                            </table>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            
		                        </div>
		                        
                                            </div>
                                            <div class="tab-pane show active" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                              		                            <div class="col-lg-12">
		                                <div class="card">
		                                    <div class="card-body">
		                                        <p class="sub-header">
		                                        </p>
		    
                                        <div class="table-responsive">
                                          <div class="table-responsive" style = "margin: 15px 0px 15px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;"> 
                                               
                                                <thead>
                                                    <tr>
                                                      <th>품목군코드</th>
                                                      <th>품목군명</th>
                                                      <th>연초수량</th>
                                                      <th>수정수량</th>
                                                      <th>차이수량</th>
                                                      <th>연초원화금액</th>
                                                      <th>수정원화금액</th>
                                                      <th>차이원화금액</th>
                                                  </tr>
                                              </thead>
          
          
                                              <tbody>
                                                  <tr>
                                                      <td><input type="text" onfocus = "focuse();" name = "co0" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "00000" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "na0" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "am0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                	  <td><input type="text" onfocus = "focuse();" name = "ga0" class="form-control" data-toggle="input-mask"  style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "re0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "won0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "rewon0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "diwon0" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;" onkeyup="enterinsert(0);"></td>
                                                  </tr>
                                              </tbody>
                                            </table>
                                        </div>
		                              </div>
		                                        
		                                         <div class="table-responsive">
		                                         
		                                            <table class="table m-0">
		                                                <thead>
		                                                    <tr>
		                                                    	<th><input type = "checkbox"></th>
		                                                        <th>해당월</th>
		                                                        <th>연초 수량</th>
		                                                        <th>수정 수량</th>
		                                                        <th>차이 수량</th>
		                                                        <th>연초 원화 단가</th>
		                                                        <th>연초 원화 금액</th>
		                                                        <th>수정 원화 금액</th>
		                                                        <th>차이 원화 금액</th>
		                                                    </tr>
		                                                </thead>
		                                                <tbody>
		                                                    <tr>
		                                                        <th scope="row"><input type = "checkbox"></th>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                   </tr>
		                                                </tbody>
		                                            </table>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            
                                            </div>
                                            <div class="tab-pane" id="message" role="tabpanel" aria-labelledby="message-tab">
                                              <div class="card">
		                                    <div class="card-body">
		                                        <p class="sub-header">
		                                        </p>
		                                     
		                                        <div class="table-responsive">
                                          		<div class="table-responsive" style = "margin: 15px 0px 15px">
                                            	<table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                               
                                                <thead>
                                                    <tr>
                                                      <th>해당월</th>
                                                      <th>연초수량</th>
                                                      <th>수정수량</th>
                                                      <th>차이수량</th>
                                                      <th>연초원화금액</th>
                                                      <th>수정원화금액</th>
                                                      <th>차이원화금액</th>
                                                  </tr>
                                              </thead>
          
          
                                              <tbody>
                                                  <tr>
                                                      <td><input type="text" onfocus = "focuse();" name = "h0" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "00" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "y0" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "s0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 150px; border:0px;"></td>
                                                	  <td><input type="text" onfocus = "focuse();" name = "c0" class="form-control" data-toggle="input-mask"  style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "ye0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "su0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "00"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "ca0" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 150px; border:0px;" onkeyup="enterinsert(0);"></td>
                                                  </tr>
                                              </tbody>
                                            </table>
                                        </div>
		                              </div>
		    
		                                        <div class="table-responsive">
		                                            <table class="table m-0">
		                                                <thead>
		                                                    <tr>
		                                                    	<th><input type = "checkbox"></th>
		                                                        <th>품번군 코드</th>
		                                                        <th>폼목군명</th>
		                                                        <th>연초수량</th>
		                                                        <th>수정수량</th>
		                                                        <th>차이수량</th>
		                                                        <th>연초원화금액</th>
		                                                        <th>수정원화금액</th>
		                                                        <th>차이원화금액</th>
		                                                    </tr>
		                                                </thead>
		                                                <tbody>
		                                                    <tr>
		                                                        <th scope="row"><input type = "checkbox"></th>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                        <td>Table cell</td>
		                                                   </tr>
		                                                </tbody>
		                                            </table>
		                                        </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                         
                        
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
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>