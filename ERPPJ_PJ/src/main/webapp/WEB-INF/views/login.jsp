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
                                    <h4 class="page-title">Log In</h4>
                                </div>
                            </div>
                        </div>     
            
               		 <div class="row">
                            <div class="col-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Log In</h4>
                                        
    
                                        <form name = "logIn" action = "login_check.do" method="post">
                                        <input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Account</label>
                                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Account">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
    
                                            <button type="submit" class="btn btn-purple waves-effect waves-light mt-3">Log In</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
               		 </div>
               
               
               <!-- 페이지 내용 입력 공간 종료 -->
               
                <%@ include file="footer.jsp" %>
                
                </div>

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="rightbar.jsp" %>
        <%@ include file="setting2.jsp" %>
    </body>
</html>