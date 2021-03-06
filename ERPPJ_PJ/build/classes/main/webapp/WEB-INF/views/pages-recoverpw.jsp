<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
    </head>

    <body class="bg-white">
        <div class="home-btn d-none d-sm-block">
            <a href="index"><i class="fas fa-home h2"></i></a>
        </div>
        <div class="account-pages my-5 pt-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div>

                            <div class="text-center mb-4">
                                <a href="index">
                                    <span><img src="assets/images/logo-dark.png" alt="" height="30"></span>
                                </a>
                                <p class="text-muted mt-4">Enter your email address and we'll send you an email with instructions to reset your password.</p>
                            </div>

                            <form action="#">

                                <div class="form-group mb-3">
                                    <label for="emailaddress">Email address</label>
                                    <input class="form-control" type="email" id="emailaddress" required="" placeholder="Enter your email">
                                </div>

                                <div class="form-group mb-3 text-center">
                                    <button class="btn btn-primary btn-lg width-lg btn-rounded" type="submit"> Reset Password </button>
                                </div>

                            </form> 

                        </div>
                        <!-- end card -->

                        <div class="row">
                            <div class="col-sm-12 text-center">
                                <p class="text-muted">Back to <a href="page-login" class="text-dark ml-1">Sign In</a></p>
                            </div>
                        </div>
                        <!-- end row -->

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

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>