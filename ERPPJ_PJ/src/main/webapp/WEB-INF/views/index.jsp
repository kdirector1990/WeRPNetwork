<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <!-- c3 plugin css -->
        <link rel="stylesheet" type="text/css" href="/erp/resources/assets/libs/c3/c3.min.css">
        <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
		<script src="/erp/resources/assets/css/js/request.js"></script>
		<script src="/erp/resources/assets/js/request.js"></script>
       
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            <%@ include file="sidebar.jsp" %>

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
                                            <li class="breadcrumb-item active">Dashboard</li>
                                        </ol>
                                    </div>
                                    <%-- <sec:authorize access="isAuthenticated()">
                                    	<h4 class="page-title">사원명 : ${name }</h4>
                                    	<h4 class="page-title">직책코드: ${pCode }</h4>
                                    	<h4 class="page-title">직책명: ${pName }</h4>
                                    	<h4 class="page-title">부서코드: ${dCode }</h4>
                                    	<h4 class="page-title">부서명: ${dName }</h4>
                                    	<h4 class="page-title">사번: ${username }</h4>
                                    	<h4 class="page-title">권한: ${auth }</h4>
                                    	<h4 class="page-title">관리자권한: ${ADMIN }</h4>
                                    	<h4 class="page-title">경영권한: ${MS }</h4>
                                    	<h4 class="page-title">인사권한: ${HR }</h4>
                                    	<h4 class="page-title">영업권한: ${ST }</h4>
                                    	<h4 class="page-title">재무권한: ${FT }</h4>
                                    	<h4 class="page-title">전산권한: ${CT }</h4>
                                    	<h4 class="page-title">생산권한: ${MF }</h4>
                                    </sec:authorize>
                                    <sec:authorize access="isAnonymous()">
                                 	   <h4 class="page-title">부정한 접근 감지</h4>
                                    </sec:authorize> --%>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        
						
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                   		<div id="morris-bar-example" class="morris-chart" style="height: 320px;"></div>
                                        <div class="text-center">
                                             <p class="text-uppercase mb-0">
                                                 <span class="mx-2"><i class="mdi mdi-checkbox-blank-circle text-primary"></i>판매수량(EA)</span>
                                              </p>
                                         </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">                
                                         <div id="morris-bar-example2" class="morris-chart" style="height: 320px;"></div>
                                         <div class="text-center">
                                             <p class="text-uppercase mb-0">
                                                 <span class="mx-2"><i class="mdi mdi-checkbox-blank-circle text-primary"></i>판매실적(원)</span>
                                                 
                                              </p>
                                         </div> 
                                    </div>
                                </div>
                            </div>
                         </div>
                         <div class="row">   
							<div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                   		<div id="morris-bar-example3" class="morris-chart" style="height: 320px;"></div>
                                        <div class="text-center">
                                             <p class="text-uppercase mb-0">
                                                 <span class="mx-2"><i class="mdi mdi-checkbox-blank-circle text-primary"></i>발주수량(EA)</span>
                                                 
                                              </p>
                                         </div>  
	                                 </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">   
                          	        	<div id="morris-bar-example4" class="morris-chart" style="height: 320px;"></div>
                                  		<div class="text-center">
                                           <p class="text-uppercase mb-0">
                                               <span class="mx-2"><i class="mdi mdi-checkbox-blank-circle text-primary"></i>발주실적(원)</span>
                                               
                                            </p>
                                        </div> 
	                                </div>
	                            </div>
	                        </div>
                       </div>
                        
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->

                

   			<%@ include file="footer.jsp"%>
		</div>
	</div>
	<!-- END wrapper -->

	<%@ include file="rightbar.jsp"%>
	<div id = "bodyappend">
        <script src="/erp/resources/assets/libs/morris-js/morris.min.js"></script>
        <script src="/erp/resources/assets/libs/raphael/raphael.min.js"></script>
        <script src="/erp/resources/assets/js/pages/morris.init.js"></script>
        <%@ include file="setting2.jsp"%>
	</div>
	<c:forEach var = "lis" items = "${list }">
	</c:forEach>
	 <script type = "text/javascript">
	 Morris.Bar({
      	  element: 'morris-bar-example',
      	  data: [
      	    { y: '1', a: 100 },
      	    { y: '2', a: 75 },
      	    { y: '3', a: 50 },
      	    { y: '4', a: 75 },
      	    { y: '5', a: 50 },
      	    { y: '6', a: 75 },
      	  	{ y: '7', a: 100 },
    	    { y: '8', a: 75 },
    	    { y: '9', a: 50 },
    	    { y: '10', a: 75 },
    	    { y: '11', a: 50 },
    	    { y: '12', a: 75 }
      	  ],
      	  xkey: 'y',
      	  ykeys: ['a'],
      	  labels: ['Series A']
      	});     	
		 Morris.Bar({
	     	  element: 'morris-bar-example2',
	     	  data: [
	     		{ y: '1', a: 100 },
	       	    { y: '2', a: 75 },
	       	    { y: '3', a: 50 },
	       	    { y: '4', a: 75 },
	       	    { y: '5', a: 50 },
	       	    { y: '6', a: 75 },
	       	  	{ y: '7', a: 100 },
	     	    { y: '8', a: 75 },
	     	    { y: '9', a: 50 },
	     	    { y: '10', a: 75 },
	     	    { y: '11', a: 50 },
	     	    { y: '12', a: 75 }
	     	  ],
	     	  xkey: 'y',
	     	  ykeys: ['a'],
	     	  labels: ['Series A']
     	});     
       	
       	Morris.Bar({
         	  element: 'morris-bar-example3',
         	  data: [
         		{ y: '1', a: 100 },
           	    { y: '2', a: 75 },
           	    { y: '3', a: 50 },
           	    { y: '4', a: 75 },
           	    { y: '5', a: 50 },
           	    { y: '6', a: 75 },
           	  	{ y: '7', a: 100 },
         	    { y: '8', a: 75 },
         	    { y: '9', a: 50 },
         	    { y: '10', a: 75 },
         	    { y: '11', a: 50 },
         	    { y: '12', a: 75 }
         	  ],
         	  xkey: 'y',
         	  ykeys: ['a'],
         	  labels: ['Series A']
         	});
       	
       	Morris.Bar({
         	  element: 'morris-bar-example4',
         	  data: [
         		{ y: '1', a: 100 },
           	    { y: '2', a: 75 },
           	    { y: '3', a: 50 },
           	    { y: '4', a: 75 },
           	    { y: '5', a: 50 },
           	    { y: '6', a: 75 },
           	  	{ y: '7', a: 100 },
         	    { y: '8', a: 75 },
         	    { y: '9', a: 50 },
         	    { y: '10', a: 75 },
         	    { y: '11', a: 50 },
         	    { y: '12', a: 75 }
         	  ],
         	  xkey: 'y',
         	  ykeys: ['a'],
         	  labels: ['Series A']
         	});
       </script>
	
        
    </body>
</html>