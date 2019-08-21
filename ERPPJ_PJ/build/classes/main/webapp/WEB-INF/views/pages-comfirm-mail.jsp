<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
    </head>

    <body class="bg-white">

        <div class="account-pages my-5 pt-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div>

                            <div class="text-center mb-4">
                                <a href="index">
                                    <span><img src="assets/images/logo-dark.png" alt="" height="30"></span>
                                </a>
                            </div>

                            <div class="text-center">
                                <img src="assets/images/icons/invite.svg" alt="" class="mb-2" title="invite.svg" height="60">
                                <p class="text-muted"> A email has been send to <b>youremail@domain.com</b>.
                                    Please check for an email from company and click on the included link to
                                    reset your password. </p>
                                <a href="index" class="btn btn-primary waves-effect waves-light mt-4">Back to Home</a>
                            </div>

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

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>