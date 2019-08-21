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
                                            <li class="breadcrumb-item active">Progress Bars</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Progress Bars</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <h4 class="header-title">Basic example</h4>
                                                <p class="sub-header">
                                                    Default progress bar.
                                                </p>
                                                
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-success" role="progressbar" style="width: 48%" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-info" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-pink" role="progressbar" style="width: 48%" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-purple" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 88%" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
        
                                            </div>
        
                                            <div class="col-lg-5 offset-lg-1">
                                                <h4 class="header-title mt-4 mt-lg-0">Striped example</h4>
                                                <p class="sub-header">
                                                    Uses a gradient to create a striped effect.Use class <code>.progress-bar-striped</code>.
                                                </p>
        
                                                
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-primary progress-bar-striped" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-success progress-bar-striped" role="progressbar" style="width: 48%" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-info progress-bar-striped" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-warning progress-bar-striped" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
        
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-danger progress-bar-striped" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-pink progress-bar-striped" role="progressbar" style="width: 48%" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-purple progress-bar-striped" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-dark progress-bar-striped" role="progressbar" style="width: 92%" aria-valuenow="92" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- End of Row -->
        
        
        
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <h4 class="header-title">Sizes example</h4>
                                                <p class="sub-header">
                                                    We only set a <code>height</code> value on the <code>.progress</code>, so if you change that value the inner <code>.progress-bar</code> will automatically resize accordingly.
                                                </p>
                                                
                                                <div class="progress progress-sm mb-2">
                                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress progress-md mb-2">
                                                    <div class="progress-bar bg-dark progress-bar-striped" role="progressbar" style="width: 54%" aria-valuenow="54" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress progress-lg mb-2">
                                                    <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 32%" aria-valuenow="32" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress progress-xl">
                                                    <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
        
                                            <div class="col-lg-5 offset-lg-1">
                                                <h4 class="header-title mt-4 mt-lg-0">Animated example</h4>
                                                <p class="sub-header">
                                                    Add <code>.active</code> to <code>.progress-bar-striped</code> to animate the stripes right to left.
                                                </p>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-info progress-bar-striped progress-bar-animated" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-pink progress-bar-striped progress-bar-animated" role="progressbar" style="width: 48%" aria-valuenow="48" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-primary progress-bar-striped progress-bar-animated" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-purple progress-bar-striped progress-bar-animated" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- End of Row -->
        
        
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <h4 class="header-title">Completed example</h4>
                                                <p class="sub-header">
                                                    Remove the <code>&lt;span&gt;</code> with <code>.sr-only</code> class from within the progress bar to show a visible percentage.
                                                </p>
        
                                                <div class="progress progress-lg mb-2">
                                                    <div class="progress-bar bg-pink" role="progressbar" style="width: 85%;" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">85%</div>
                                                </div>
                                                <div class="progress mb-2">
                                                    <div class="progress-bar bg-dark" role="progressbar" style="width: 56%;" aria-valuenow="56" aria-valuemin="0" aria-valuemax="100">56%</div>
                                                </div>
                                                <div class="progress progress-xl">
                                                    <div class="progress-bar bg-purple" role="progressbar" style="width: 96%;" aria-valuenow="96" aria-valuemin="0" aria-valuemax="100">96%</div>
                                                </div>
                                                
                                            </div>
        
                                            <div class="col-lg-5 offset-lg-1">
                                                <h4 class="header-title mt-4 mt-lg-0">Stacked example</h4>
                                                <p class="sub-header">
                                                    Place multiple bars into the same <code>.progress</code> to stack them.
                                                </p>
                                                <div class="progress">
                                                    <div class="progress-bar bg-success progress-bar-striped" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                                    <div class="progress-bar bg-info" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                                    <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                                    <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- End of Row -->
        
        
        
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <div class="row">
                                            <div class="col-lg-5">
                                                <h4 class="header-title">Progressbar Vertical</h4>
                                                <p class="sub-header">
                                                    Use class <code>.progress-vertical</code>.
                                                </p>
                                                <div class="progress progress-sm progress-vertical">
                                                    <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100" style="height: 89%;">
                                                    </div>
                                                </div>
                                                <div class="progress progress-vertical">
                                                    <div class="progress-bar bg-dark" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="height: 77%;">
                                                    </div>
                                                </div>
                                                <div class="progress progress-lg progress-vertical">
                                                    <div class="progress-bar bg-success progress-bar-striped" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="height: 45%;">
                                                    </div>
                                                </div>
                                                <div class="progress progress-xl progress-vertical">
                                                    <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="height: 67%;">
                                                    </div>
                                                </div>
                                            </div>
        
                                            <div class="col-lg-5 offset-lg-1">
                                                <h4 class="header-title mt-4 mt-lg-0">Progressbar Vertical Bottom</h4>
                                                <p class="sub-header">
                                                    Use class <code>.progress-vertical-bottom</code>.
                                                </p>
                                                <div class="progress progress-sm progress-vertical-bottom">
                                                    <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100" style="height: 89%;">
                                                    </div>
                                                </div>
                                                <div class="progress progress-vertical-bottom">
                                                    <div class="progress-bar bg-dark" role="progressbar" aria-valuenow="77" aria-valuemin="0" aria-valuemax="100" style="height: 77%;">
                                                    </div>
                                                </div>
                                                <div class="progress progress-lg progress-vertical-bottom">
                                                    <div class="progress-bar bg-success progress-bar-striped" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="height: 45%;">
                                                    </div>
                                                </div>
                                                <div class="progress progress-xl progress-vertical-bottom">
                                                    <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="height: 67%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- End of Row -->
                        
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