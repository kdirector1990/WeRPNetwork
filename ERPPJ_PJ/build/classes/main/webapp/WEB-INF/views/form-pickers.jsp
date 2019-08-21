<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <link href="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
        <link href="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        <link href="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form Pickers</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form Pickers</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Timepicker</h4>
                                        <p class="sub-header">
                                            Easily select a time for a text input using your mouse or keyboards arrow keys.
                                        </p>
    
                                        <div class="form-group">
                                            <label>Default Time Picker</label>
                                            <div class="input-group">
                                                <input id="timepicker" type="text" class="form-control">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="mdi mdi-clock-outline"></i></span>
                                                </div>        
                                            </div><!-- input-group -->
                                        </div>
    
                                        <div class="form-group">
                                            <label>24 Hour Mode Time Picker</label>
                                            <div class="input-group">
                                                <input id="timepicker2" type="text" class="form-control">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="mdi mdi-clock-outline"></i></span>
                                                </div> 
                                            </div><!-- input-group -->
                                        </div>
    
                                        <div class="form-group mb-0">
                                            <label>Specify a step for the minute field</label>
                                            <div class="input-group">
                                                <input id="timepicker3" type="text" class="form-control">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="mdi mdi-clock-outline"></i></span>
                                                </div> 
                                            </div><!-- input-group -->
                                        </div>
    
                                    </div>
                                </div>
                            </div> <!-- end col -->

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Colorpicker</h4>
                                        <p class="sub-header">
                                            Add color picker to field or to any other element.
                                        </p>
    
                                        <form action="#">
                                            <div class="form-group">
                                                <label>Default</label>
                                                <input type="text" class="colorpicker-default form-control" value="#8fff00">
                                            </div>
                                            <div class="form-group">
                                                <label>RGBA</label>
                                                <input type="text" class="colorpicker-rgba form-control" value="rgb(0,194,255,0.78)" data-color-format="rgba">
                                            </div>
                                            
                                                
                                            <div class="form-group mb-0">
                                                <label>As Component</label>
                                                <div class="input-group colorpicker-default" title="Using format option">
                                                    <input type="text" class="form-control input-lg" value="#ff92b4"/>
                                                    <span class="input-group-append">
                                                        <span class="input-group-text colorpicker-input-addon"><i></i></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->


                        <div class="row">

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Date Range Picker</h4>
                                        <p class="sub-header">
                                            A JavaScript component for choosing date ranges.
                                            Designed to work with the Bootstrap CSS framework.
                                        </p>
    
                                        <form>
                                            <div class="form-group mb-3">
                                                <label>With all options</label>
                                                <input type="text" id="reportrange" class="form-control"/>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label>Date Range Pick</label>
                                                <div>
                                                    <input class="form-control input-daterange-datepicker" type="text" name="daterange" value="01/01/2015 - 01/31/2015"/>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3">
                                                <label>Date Range With Time</label>
                                                <div>
                                                    <input type="text" class="form-control input-daterange-timepicker" name="daterange" value="01/01/2015 1:30 PM - 01/01/2015 2:00 PM"/>
                                                </div>
                                            </div>
                                            <div class="form-group mb-0">
                                                <label>Limit Selectable Dates</label>
                                                <div>
                                                    <input class="form-control input-limit-datepicker" type="text" name="daterange" value="06/01/2015 - 06/07/2015"/>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->

                            <div class="col-lg-6">

                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Clock Picker</h4>
                                        <p class="sub-header">
                                            A clock-style timepicker for Bootstrap (or jQuery).Your awesome text goes here.
                                        </p>
    
                                        <label>Default Clock Picker</label>
                                        <div class="input-group clockpicker mb-3">
                                            <input type="text" class="form-control" value="09:30">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="mdi mdi-clock-outline"></i></span>
                                            </div> 
                                        </div>
    
                                        <label>Auto close</label>
                                        <div class="input-group clockpicker mb-3" data-placement="top" data-align="top" data-autoclose="true">
                                            <input type="text" class="form-control" value="13:14">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="mdi mdi-clock-outline"></i></span>
                                            </div> 
                                        </div>
    
                                        <label>Now time</label>
                                        <div class="input-group mb-3">
                                            <input class="form-control" id="single-input" type="text" value="" placeholder="Now">
                                            <span class="input-group-append">
                                                <button type="button" id="check-minutes" class="btn waves-effect waves-light btn-primary">Check the minutes</button>
                                            </span>
                                        </div>
    
                                        <label>Place at left, align the arrow to top </label>
                                        <div class="input-group clockpicker" data-placement="top" data-align="top">
                                            <input type="text" class="form-control" value="13:14">
                                            <div class="input-group-append">
                                                <span class="input-group-text"><i class="mdi mdi-clock-outline"></i></span>
                                            </div> 
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Date Picker</h4>
                                        <p class="sub-header">
                                            The datepicker is tied to a standard form input field. Click on the input to open
                                            an interactive calendar in a small overlay. Click elsewhere on the page or hit the Esc
                                            key to close. If a date is chosen, feedback is shown as the input's value.
                                        </p>
    
                                        <div class="row">
                                            <div class="col-lg-8">
    
                                                <div class="">
                                                    <form action="#">
                                                        <div class="form-group">
                                                            <label>Default Functionality</label>
                                                            <div>
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker">
                                                                    <div class="input-group-append">
                                                                        <span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span>
                                                                    </div>
                            
                                                                </div><!-- input-group -->
                                                            </div>
                                                        </div>
    
                                                        <div class="form-group">
                                                            <label>Auto Close</label>
                                                            <div>
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-autoclose="true">
                                                                    <div class="input-group-append">
                                                                        <span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span>
                                                                    </div>
                                                                </div><!-- input-group -->
                                                            </div>
                                                        </div>
    
                                                        <div class="form-group">
                                                            <label>Multiple Date</label>
                                                            <div>
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control" placeholder="mm/dd/yyyy" data-provide="datepicker" data-date-multidate="true">
                                                                    <div class="input-group-append">
                                                                        <span class="input-group-text bg-primary text-white b-0"><i class="mdi mdi-calendar"></i></span>
                                                                    </div>
                                                                </div><!-- input-group -->
                                                            </div>
                                                        </div>
    
                                                        <div class="form-group mb-0">
                                                            <label>Date Range</label>
                                                            <div>
                                                                <div class="input-daterange input-group" data-provide="datepicker">
                                                                    <input type="text" class="form-control" name="start" />
                                                                    <div class="input-group-append">
                                                                        <span class="input-group-text bg-primary text-white b-0">to</span>
                                                                    </div>
                                                                    <input type="text" class="form-control" name="end" />
                                                                </div>
                                                            </div>
                                                        </div>
    
                                                    </form>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
    
                                                <div class="px-3 mt-4 mt-lg-0">
    
                                                    <label>Display Inline</label>
                                                    <div class="center-block" style="margin: 10px auto">
                                                        <div data-provide="datepicker-inline"></div>
                                                    </div><!-- input-group -->
                                                </div>
                                            </div>
                                        </div>
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

        <!-- plugins -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>

        <!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>