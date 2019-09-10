<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8" http-equiv = "refresh" content ="3; url = 'index'">
<head>
    <%@ include file="setting.jsp" %>
</head>
	<body>
     	 <!-- Begin page -->
    	 <div id="wrapper">
    	 <%@ include file="sidebar.jsp" %>
            <div class="content-page">
			<!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->           
            
                <!-- 페이지 내용 입력 공간 -->
                
                 <div class="content">
                    
                    <!-- Start Content-->
                    <div class="container-fluid">
                    
                     <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">WeRP</a></li>
                                            <li class="breadcrumb-item active">403 Error</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">403 Error</h4>
                                </div>
                            </div>
                        </div>     
            
               		 <div class="row">
               		 	<div class="col-3">
               		 	</div>
                            <div class="col-6">
                                <div class="card">
                               		<div class="card-header bg-primary">
                                        <div class="logo-box">
						                    <a href="index" class="logo text-center">
						                        <span class="logo-lg">
						                            <img src="/erp/resources/assets/images/logo-light.png" alt="" height="20">
						                            <!-- <span class="logo-lg-text-light">UBold</span> -->
						                        </span>
						                        <span class="logo-sm">
						                            <!-- <span class="logo-sm-text-dark">U</span> -->
						                            <img src="/erp/resources/assets/images/logo-sm.png" alt="" height="24">
						                        </span>
						                    </a>
						                </div>
                                    </div>
                                    <div class="card-body">
                                    	<img src = "/erp/resources/assets/images/images.jpg" style = "width:750px; height:auto;">
                                    	<h4 class="text-primary" align = "center">권한이 없습니다. 잠시후 DASHBOARD로 이동합니다.</h4>
                                    </div>
                                </div>
                            </div>
               		 </div>
               
               
               <!-- 페이지 내용 입력 공간 종료 -->
               
                
                </div>

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->
		</div>
        </div>
        <!-- END wrapper -->

        <%@ include file="setting2.jsp" %>
    </body>
</html>