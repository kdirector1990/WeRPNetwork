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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Graphs</a></li>
                                            <li class="breadcrumb-item active">Jquery Knob</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Jquery Knob</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150" data-bgColor="#ebeff2"
                                               data-fgColor="#188ae2" data-displayInput=false value="35"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Disable display input</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150" data-cursor=true
                                               data-fgColor="#4bd396" value="29"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Cursor mode</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150" data-min="-100"
                                               data-fgColor="#3ac9d6" data-displayPrevious=true value="44"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Display previous value</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150" data-min="-100"
                                               data-fgColor="#f9c851" data-displayPrevious=true data-angleOffset=-125
                                               data-angleArc=250 value="44"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Angle offset and arc</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                        </div><!-- end row -->

                        <div class="row">
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150"
                                               data-angleOffset="90" data-linecap="round" data-fgColor="#f5707a"
                                               value="35"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Angle offset</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150" data-min="-15000"
                                               data-displayPrevious=true data-max="15000" data-step="1000"
                                               value="-11000" data-fgColor="#3b3e47"/>
                                        </div>
                                        <h6 class="text-muted mt-2">5-digit values, step 1000</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150" data-linecap=round
                                               data-fgColor="#6b5fb5" value="80" data-skin="tron" data-angleOffset="180"
                                               data-readOnly=true data-thickness=".1"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Readonly</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="150" data-height="150"
                                                   data-displayPrevious=true data-fgColor="#f06292" data-skin="tron"
                                               data-cursor=true value="75" data-thickness=".2" data-angleOffset=-125
                                               data-angleArc=250 />
                                        </div>
                                        <h6 class="text-muted mt-2">Angle offset and arc</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                        </div><!-- end row-->


                        <div class="row">
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="220" data-height="220" data-linecap=round
                                            data-fgColor="#7fc1fc" value="80" data-skin="tron" data-angleOffset="180"
                                            data-readOnly=true data-thickness=".2"/>
                                        </div>
                                        
                                        <h6 class="text-muted mt-2">Readonly</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="180" data-height="180" data-linecap=round
                                                data-fgColor="#ff9800" value="77" data-skin="tron" data-angleOffset="180"
                                                data-readOnly=true data-thickness=".1"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Readonly</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="120" data-height="120" data-linecap=round
                                               data-fgColor="#8d6e63" value="50" data-skin="tron" data-angleOffset="180"
                                               data-readOnly=true data-thickness=".1"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Readonly</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                            <div class="col-xl-3 col-md-6 text-center">
                                <div class="card">
                                    <div class="card-body">
                                        <div dir="ltr">
                                            <input data-plugin="knob" data-width="60" data-height="60" data-linecap=round
                                               data-fgColor="#26a69a" value="80" data-skin="tron" data-angleOffset="180"
                                               data-readOnly=true data-thickness=".1"/>
                                        </div>
                                        <h6 class="text-muted mt-2">Readonly</h6>
                                    </div>
                                </div>
                            </div><!-- end col-->
                        </div><!-- end row -->
                        
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

        <!-- KNOB JS -->
        <script src="/erp/resources/assets/libs/jquery-knob/jquery.knob.min.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>