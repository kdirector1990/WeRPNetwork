<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
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
                                            <li class="breadcrumb-item active">Log In</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Log In${auth }</h4>
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
                                        <h4 class="header-title">Log In</h4>
	                                        <form name = "logIn" action = "login_check.do" method="post">
                                        <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Account</label>
                                                <input type="text" class="form-control" id="exampleInputEmail1" name = "username" placeholder="Account">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" name = "password" placeholder="Password">
                                            </div>
                                            <div class="row">
    										<div class="col-5"></div>
                                            <button type="submit" class="btn btn-purple waves-effect waves-light mt-3">Log In</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
               		 </div>
               
               
               <!-- 페이지 내용 입력 공간 종료 -->
               
                
                </div>

            </div></div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="setting2.jsp" %>
    </body>
</html>