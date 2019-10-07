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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item active">Dashboard</li>
                                        </ol>
                                    </div>
                                     <%-- <sec:authorize access="isAuthenticated()">
                                    	<h4 class="page-title">사원명 : ${name }</h4>
                                    	<h4 class="page-title">직책코드: ${pCode }</h4>
                                    	<h4 class="page-title">직책명: ${pName }</h4>
                                    	<h4 class="page-title">부서코드: ${dCode }, 부서명: ${dName }</h4>
                                    	<h4 class="page-title">사번: ${username }, 권한: ${auth }</h4>
                                    	<h4 class="page-title">관리자권한: ${ADMIN }, 경영권한: ${MS }, 인사권한: ${HR }</h4>
                                    	<h4 class="page-title">영업권한: ${ST }, 재무권한: ${FT }</h4>
                                    	<h4 class="page-title">전산권한: ${CT }, 생산권한: ${MF }</h4>
                                    </sec:authorize>
                                    <sec:authorize access="isAnonymous()">
                                 	   <h4 class="page-title">부정한 접근 감지</h4>
                                    </sec:authorize>  --%>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        
						
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                    <h4 class="header-title">판매수량</h4>
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
                                    <h4 class="header-title">판매실적</h4>           
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
                                    <h4 class="header-title">발주수량</h4>
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
                                    <h4 class="header-title">발주실적</h4>
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
	<c:set var = "amount01" value = "${amount01 }"/>
	<c:set var = "amount02" value = "${amount02 }"/>
	<c:set var = "amount03" value = "${amount03 }"/>
	<c:set var = "amount04" value = "${amount04 }"/>
	<c:set var = "amount05" value = "${amount05 }"/>
	<c:set var = "amount06" value = "${amount06 }"/>
	<c:set var = "amount07" value = "${amount07 }"/>
	<c:set var = "amount08" value = "${amount08 }"/>
	<c:set var = "amount09" value = "${amount09 }"/>
	<c:set var = "amount10" value = "${amount10 }"/>
	<c:set var = "amount11" value = "${amount11 }"/>
	<c:set var = "amount12" value = "${amount12 }"/>
	<c:set var = "price01" value = "${price01 }"/>
	<c:set var = "price02" value = "${price02 }"/>
	<c:set var = "price03" value = "${price03 }"/>
	<c:set var = "price04" value = "${price04 }"/>
	<c:set var = "price05" value = "${price05 }"/>
	<c:set var = "price06" value = "${price06 }"/>
	<c:set var = "price07" value = "${price07 }"/>
	<c:set var = "price08" value = "${price08 }"/>
	<c:set var = "price09" value = "${price09 }"/>
	<c:set var = "price10" value = "${price10 }"/>
	<c:set var = "price11" value = "${price11 }"/>
	<c:set var = "price12" value = "${price12 }"/>
	<c:set var = "aamount01" value = "${aamount01 }"/>
	<c:set var = "aamount02" value = "${aamount02 }"/>
	<c:set var = "aamount03" value = "${aamount03 }"/>
	<c:set var = "aamount04" value = "${aamount04 }"/>
	<c:set var = "aamount05" value = "${aamount05 }"/>
	<c:set var = "aamount06" value = "${aamount06 }"/>
	<c:set var = "aamount07" value = "${aamount07 }"/>
	<c:set var = "aamount08" value = "${aamount08 }"/>
	<c:set var = "aamount09" value = "${aamount09 }"/>
	<c:set var = "aamount10" value = "${aamount10 }"/>
	<c:set var = "aamount11" value = "${aamount11 }"/>
	<c:set var = "aamount12" value = "${aamount12 }"/>
	<c:set var = "aprice01" value = "${aprice01 }"/>
	<c:set var = "aprice02" value = "${aprice02 }"/>
	<c:set var = "aprice03" value = "${aprice03 }"/>
	<c:set var = "aprice04" value = "${aprice04 }"/>
	<c:set var = "aprice05" value = "${aprice05 }"/>
	<c:set var = "aprice06" value = "${aprice06 }"/>
	<c:set var = "aprice07" value = "${aprice07 }"/>
	<c:set var = "aprice08" value = "${aprice08 }"/>
	<c:set var = "aprice09" value = "${aprice09 }"/>
	<c:set var = "aprice10" value = "${aprice10 }"/>
	<c:set var = "aprice11" value = "${aprice11 }"/>
	<c:set var = "aprice12" value = "${aprice12 }"/>
	 <script type = "text/javascript">
		 Morris.Bar({
	      	  element: 'morris-bar-example',
	      	  data: [
	      		{ y: '1', a: ${aamount01}},
	       	    { y: '2', a: ${aamount02} },
	       	    { y: '3', a: ${aamount03} },
	       	    { y: '4', a: ${aamount04} },
	       	    { y: '5', a: ${aamount05} },
	       	    { y: '6', a: ${aamount06} },
	       	  	{ y: '7', a: ${aamount07} },
	     	    { y: '8', a: ${aamount08} },
	     	    { y: '9', a: ${aamount09} },
	     	    { y: '10', a: ${aamount10} },
	     	    { y: '11', a: ${aamount11} },
	     	    { y: '12', a: ${aamount12} }
	      	  ],
	      	  xkey: 'y',
	      	  ykeys: ['a'],
	      	  labels: ['판매수량']
	      });  
		 
		 Morris.Bar({
	     	  element: 'morris-bar-example2',
	     	  data: [
	     		{ y: '1', a: ${aprice01} },
           	    { y: '2', a: ${aprice02} },
           	    { y: '3', a: ${aprice03} },
           	    { y: '4', a: ${aprice04} },
           	    { y: '5', a: ${aprice05} },
           	    { y: '6', a: ${aprice06} },
           	  	{ y: '7', a: ${aprice07} },
         	    { y: '8', a: ${aprice08} },
         	    { y: '9', a: ${aprice09} },
         	    { y: '10', a: ${aprice10} },
         	    { y: '11', a: ${aprice11} },
         	    { y: '12', a: ${aprice12} }
	     	  ],
	     	  xkey: 'y',
	     	  ykeys: ['a'],
	     	  labels: ['판매금액']
     	});     
       	
       	Morris.Bar({
         	  element: 'morris-bar-example3',
         	  data: [
         		{ y: '1', a: ${amount01}},
           	    { y: '2', a: ${amount02} },
           	    { y: '3', a: ${amount03} },
           	    { y: '4', a: ${amount04} },
           	    { y: '5', a: ${amount05} },
           	    { y: '6', a: ${amount06} },
           	  	{ y: '7', a: ${amount07} },
         	    { y: '8', a: ${amount08} },
         	    { y: '9', a: ${amount09} },
         	    { y: '10', a: ${amount10} },
         	    { y: '11', a: ${amount11} },
         	    { y: '12', a: ${amount12} }
         	  ],
         	  xkey: 'y',
         	  ykeys: ['a'],
         	  labels: ['발주수량']
         	});
       	
       	Morris.Bar({
         	  element: 'morris-bar-example4',
         	  data: [
         		{ y: '1', a: ${price01} },
           	    { y: '2', a: ${price02} },
           	    { y: '3', a: ${price03} },
           	    { y: '4', a: ${price04} },
           	    { y: '5', a: ${price05} },
           	    { y: '6', a: ${price06} },
           	  	{ y: '7', a: ${price07} },
         	    { y: '8', a: ${price08} },
         	    { y: '9', a: ${price09} },
         	    { y: '10', a: ${price10} },
         	    { y: '11', a: ${price11} },
         	    { y: '12', a: ${price12} }
         	  ],
         	  xkey: 'y',
         	  ykeys: ['a'],
         	  labels: ['발주금액']
         	});
       </script>
	
        
    </body>
</html>