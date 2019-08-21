<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
    </head>

    <body class="authentication-bg">
    
            <div class="home-btn d-none d-sm-block">
                <a href="index"><i class="fas fa-home h2 text-white"></i></a>
            </div>
            <div class="account-pages my-5 pt-5">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div>
    
                                <div class="text-center mb-4">
                                    <a href="index">
                                        <span><img src="assets/images/logo-light.png" alt="" height="30"></span>
                                    </a>
                                    <h3 class="text-white text-uppercase mt-5">Stay tunned, we're launching very soon</h3>
                                </div>
                                
                                <div class="row mt-5 justify-content-center">
                                    <div class="col-md-10">
                                        <div data-countdown="2020/07/22" class="counter-number"></div>
                                    </div> <!-- end col-->
                                </div> <!-- end row-->
                                
                            </div>
                            <!-- end card -->
    
                        </div> <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end page -->
    

        <!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Plugins js-->
        <script src="/erp/resources/assets/libs/jquery-countdown/jquery.countdown.min.js"></script>

        <!-- Countdown js -->
        <script src="/erp/resources/assets/js/pages/coming-soon.init.js"></script>
        

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>