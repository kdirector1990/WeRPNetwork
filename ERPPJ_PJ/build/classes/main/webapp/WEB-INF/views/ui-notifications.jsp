<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <!-- Jquery Toast css -->
        <link href="assets/libs/jquery-toast/jquery.toast.min.css" rel="stylesheet" type="text/css" />

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">UI Kit</a></li>
                                            <li class="breadcrumb-item active">Notifications</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Notifications</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div>
                                                    <h5 class="mt-0 mb-3">Default Alert</h5>
                                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Well done!</strong> You successfully read this important alert
                                                        message.
                                                    </div>
                                                    <div class="alert alert-info alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Heads up!</strong> This alert needs your attention, but it's not
                                                        super important.
                                                    </div>
                                                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Holy guacamole!</strong> You should check in on some of those
                                                        fields below.
                                                    </div>
                                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Oh snap!</strong> Change a few things up and try submitting
                                                        again.
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->
    
    
                                            <div class="col-xl-6">
                                                <div class="mt-4 mt-xl-0">
                                                    <h5 class="mt-0 mb-3">Icon Examples</h5>
                                                    <div class="alert alert-icon alert-success alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-check-all mr-2"></i>
                                                        <strong>Well done!</strong> You successfully read this important alert
                                                        message.
                                                    </div>
                                                    <div class="alert alert-icon alert-info alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-information mr-2"></i>
                                                        <strong>Heads up!</strong> This alert needs your attention, but it's not
                                                        super important.
                                                    </div>
                                                    <div class="alert alert-icon alert-warning alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-alert mr-2"></i>
                                                        <strong>Holy guacamole!</strong> You should check in on some of those
                                                        fields below.
                                                    </div>
                                                    <div class="alert alert-icon alert-danger alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-block-helper mr-2"></i>
                                                        <strong>Oh snap!</strong> Change a few things up and try submitting
                                                        again.
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->
    
                                        </div>
                                        <!-- end row -->
    
                                        <div class="row mt-4">
                                            <div class="col-xl-6">
                                                <div>
                                                    <h5 class="mt-0 mb-3">Default Alert (White)</h5>
                                                    <div class="alert alert-success bg-white text-success alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Well done!</strong> You successfully read this important alert
                                                        message.
                                                    </div>
                                                    <div class="alert alert-info bg-white text-info alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Heads up!</strong> This alert needs your attention, but it's not
                                                        super important.
                                                    </div>
                                                    <div class="alert alert-warning bg-white text-warning alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Holy guacamole!</strong> You should check in on some of those
                                                        fields below.
                                                    </div>
                                                    <div class="alert alert-danger bg-white text-danger alert-dismissible fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <strong>Oh snap!</strong> Change a few things up and try submitting
                                                        again.
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->
    
    
                                            <div class="col-xl-6">
                                                <div class="mt-4 mt-xl-0">
                                                    <h5 class="mt-0 mb-3">Icon Examples (White)</h5>
                                                    <div class="alert alert-success alert-dismissible bg-white text-success fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-check-all mr-2"></i>
                                                        <strong>Well done!</strong> You successfully read this important alert
                                                        message.
                                                    </div>
                                                    <div class="alert alert-info alert-dismissible bg-white text-info fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-information mr-2"></i>
                                                        <strong>Heads up!</strong> This alert needs your attention, but it's not
                                                        super important.
                                                    </div>
                                                    <div class="alert alert-warning alert-dismissible bg-white text-warning fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-alert mr-2"></i>
                                                        <strong>Holy guacamole!</strong> You should check in on some of those
                                                        fields below.
                                                    </div>
                                                    <div class="alert alert-danger alert-dismissible bg-white text-danger fade show" role="alert">
                                                        <button type="button" class="close" data-dismiss="alert"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                        <i class="mdi mdi-block-helper mr-2"></i>
                                                        <strong>Oh snap!</strong> Change a few things up and try submitting
                                                        again.
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->
    
                                        </div>
                                        <!-- end row -->
    
    
                                        <div class="row mt-4">
                                            <div class="col-lg-12">
                                                <div class="table-responsive">
                                                    <table class="table table-centered mb-0">
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2">Jquery Toast</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Info Example</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-info waves-effect waves-light btn-sm" id="toastr-one">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Warning Example</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-warning waves-effect waves-light btn-sm" id="toastr-two">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Success Example</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-success waves-effect waves-light btn-sm" id="toastr-three">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Danger Example</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-danger waves-effect waves-light btn-sm" id="toastr-four">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>The text can be an array</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary waves-effect btn-sm" id="toastr-five">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Put some HTML in the text</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary waves-effect btn-sm" id="toastr-six">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Making them sticky</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary waves-effect btn-sm" id="toastr-seven">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Fade transitions</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary waves-effect btn-sm" id="toastr-eight">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Slide up and down transitions</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary waves-effect btn-sm" id="toastr-nine">Click me</button>
                                                                </td>
                                                            </tr>
        
                                                            <tr>
                                                                <td>Simple show from and hide to corner transition</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-secondary waves-effect btn-sm" id="toastr-ten">Click me</button>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
    
                                            </div>
                                        </div>
                                        <!-- end row -->
    
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->
                        
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

        <!-- Toast-->
        <script src="/erp/resources/assets/libs/jquery-toast/jquery.toast.min.js"></script>

        <!-- toastr init js-->
        <script src="/erp/resources/assets/js/pages/toastr.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>