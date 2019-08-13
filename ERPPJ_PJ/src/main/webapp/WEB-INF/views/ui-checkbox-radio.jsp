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
                                            <li class="breadcrumb-item active">Checkbox & Radios</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Checkbox & Radio</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="header-title">Custom Checkbox</h4>
    
                                        <p class="sub-header">
                                            Supports bootstrap brand colors: <code>.checkbox-primary</code>, <code>.checkbox-info</code> etc.
                                        </p>
    
                                        <div class="checkbox">
                                            <input id="checkbox0" type="checkbox">
                                            <label for="checkbox0">
                                                Default Checkbox
                                            </label>
                                        </div>

                                        <div class="checkbox checkbox-primary">
                                            <input id="checkbox1" type="checkbox" checked>
                                            <label for="checkbox1">
                                                Primary Checkbox
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox2" type="checkbox" checked>
                                            <label for="checkbox2">
                                                Success Checkbox
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-info">
                                            <input id="checkbox3" type="checkbox">
                                            <label for="checkbox3">
                                                Info Checkbox
                                            </label>
                                        </div>
                                        <div class="checkbox checkbox-warning">
                                            <input id="checkbox4" type="checkbox" checked>
                                            <label for="checkbox4">
                                                Warning Checkbox
                                            </label>
                                        </div>

                                        <div class="checkbox checkbox-danger">
                                            <input id="checkbox5" type="checkbox" checked>
                                            <label for="checkbox5">
                                                Danger Checkbox
                                            </label>
                                        </div>
                                        
                                        <div class="checkbox checkbox-dark">
                                            <input id="checkbox6" type="checkbox" checked>
                                            <label for="checkbox6">
                                                Dark Checkbox
                                            </label>
                                        </div>

                                        <div class="checkbox checkbox-purple">
                                            <input id="checkbox7" type="checkbox" checked>
                                            <label for="checkbox7">
                                                Purple Checkbox
                                            </label>
                                        </div>
                                        
                                        <div class="checkbox checkbox-pink">
                                            <input id="checkbox8" type="checkbox" checked>
                                            <label for="checkbox8">
                                                Pink Checkbox
                                            </label>
                                        </div>

                                        <div class="checkbox">
                                            <input id="checkbox9" type="checkbox" disabled>
                                            <label for="checkbox9">
                                                Disabled Checkbox
                                            </label>
                                        </div>
                                        
                                        <div class="checkbox checkbox-purple">
                                            <input id="checkbox10" type="checkbox" disabled checked>
                                            <label for="checkbox10">
                                                Purple Disabled Checkbox
                                            </label>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div><!-- end col -->


                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Custom Radio</h4>
                                        <p class="sub-header">
                                            Supports bootstrap brand colors: <code>.radio-primary</code>, <code>.radio-info</code> etc.
                                        </p>
    
                                        <div class="radio">
                                            <input type="radio" name="radio1" id="radio1" value="option1">
                                            <label for="radio1">
                                                Default Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-primary">
                                            <input type="radio" name="radio2" id="radio2" value="option2" checked>
                                            <label for="radio2">
                                                Primary Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-success">
                                            <input type="radio" name="radio3" id="radio3" value="option3" checked>
                                            <label for="radio3">
                                                Success Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-info">
                                            <input type="radio" name="radio4" id="radio4" value="option4">
                                            <label for="radio4">
                                                Info Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-warning">
                                            <input type="radio" name="radio5" id="radio5" value="option5" checked>
                                            <label for="radio5">
                                                Warning Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-danger">
                                            <input type="radio" name="radio6" id="radio6" value="option6" checked>
                                            <label for="radio6">
                                                Danger Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-dark">
                                            <input type="radio" name="radio" id="radio7" value="option7" checked>
                                            <label for="radio7">
                                                Dark Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-purple">
                                            <input type="radio" name="radio8" id="radio8" value="option8" checked>
                                            <label for="radio8">
                                                Purple Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-pink">
                                            <input type="radio" name="radio9" id="radio9" value="option9" checked>
                                            <label for="radio9">
                                                Danger Radio
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <input type="radio" name="radio10" id="radio10" value="option10" disabled>
                                            <label for="radio10">
                                                Disabled Radio
                                            </label>
                                        </div>
                                        <div class="radio radio-primary">
                                            <input type="radio" name="radio11" id="radio11" value="option11" disabled checked>
                                            <label for="radio11">
                                                Disabled Primary Radio
                                            </label>
                                        </div>

                                    </div>
                                </div>
                            </div><!-- end col -->

                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Bootstrap custom Checkbox</h4>
                                        
                                        <div>
                                            <div class="custom-control custom-checkbox mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                                <label class="custom-control-label" for="customCheck1">Bootstrap Checkbox 1</label>
                                            </div>
                                            <div class="custom-control custom-checkbox mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheck2" checked>
                                                <label class="custom-control-label" for="customCheck2">Bootstrap Checkbox 2</label>
                                            </div>
                                            <div class="custom-control custom-checkbox mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheck3" checked>
                                                <label class="custom-control-label" for="customCheck3">Bootstrap Checkbox 3</label>
                                            </div>
                                            <div class="custom-control custom-checkbox mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheck4">
                                                <label class="custom-control-label" for="customCheck4">Bootstrap Checkbox 4</label>
                                            </div>
                                            <div class="custom-control custom-checkbox mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheck5" checked>
                                                <label class="custom-control-label" for="customCheck5">Bootstrap Checkbox 5</label>
                                            </div>
                                        </div>

                                        <h4 class="header-title mt-4 mb-3">Checkbox Inline</h4>
                                        
                                        <div>
                                            <div class="custom-control custom-checkbox custom-control-inline mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheckinline1">
                                                <label class="custom-control-label" for="customCheckinline1">Checkbox Inline 1</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheckinline2" checked>
                                                <label class="custom-control-label" for="customCheckinline2">Checkbox Inline 2</label>
                                            </div>
                                            <div class="custom-control custom-checkbox custom-control-inline mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheckinline3" checked>
                                                <label class="custom-control-label" for="customCheckinline3">Checkbox Inline 3</label>
                                            </div>
                                        </div>

                                        <h4 class="header-title mt-4 mb-3">Checkbox Disabled</h4>
                                        
                                        <div>
                                            <div class="custom-control custom-checkbox mb-2">
                                                <input type="checkbox" class="custom-control-input" id="customCheckDisabled1" disabled>
                                                <label class="custom-control-label" for="customCheckDisabled1">Checkbox Disabled 1</label>
                                            </div>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="customCheckDisabled2" disabled>
                                                <label class="custom-control-label" for="customCheckDisabled2">Checkbox Disabled 2</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Bootstrap custom Radios</h4>
                                        
                                        <div>
                                            <div class="custom-control custom-radio mb-2">
                                                <input type="radio" id="customRadio1" name="customRadio1" class="custom-control-input" checked>
                                                <label class="custom-control-label" for="customRadio1">Bootstrap Radio 1</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-2">
                                                <input type="radio" id="customRadio2" name="customRadio2" class="custom-control-input">
                                                <label class="custom-control-label" for="customRadio2">Bootstrap Radio 2</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-2">
                                                <input type="radio" id="customRadio3" name="customRadio3" class="custom-control-input" checked>
                                                <label class="custom-control-label" for="customRadio3">Bootstrap Radio 3</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-2">
                                                <input type="radio" id="customRadio4" name="customRadio4" class="custom-control-input" checked>
                                                <label class="custom-control-label" for="customRadio4">Bootstrap Radio 4</label>
                                            </div>
                                            <div class="custom-control custom-radio mb-2">
                                                <input type="radio" id="customRadio5" name="customRadio5" class="custom-control-input">
                                                <label class="custom-control-label" for="customRadio5">Bootstrap Radio 5</label>
                                            </div>
                                        </div>

                                        <h4 class="header-title mt-4 mb-3">Radios Inline</h4>
                                        
                                        <div>
                                            <div class="custom-control custom-radio custom-control-inline mb-2">
                                                <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
                                                <label class="custom-control-label" for="customRadioInline1">Radio inline 1</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline mb-2">
                                                <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input" checked>
                                                <label class="custom-control-label" for="customRadioInline2">Radio inline 2</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline mb-2">
                                                <input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input">
                                                <label class="custom-control-label" for="customRadioInline3">Radio inline 3</label>
                                            </div>
                                        </div>

                                        <h4 class="header-title mt-4 mb-3">Radios Disabled</h4>
                                        
                                        <div>
                                            <div class="custom-control custom-radio mb-2">
                                                <input type="radio" name="radioDisabled" id="customRadioDisabled1" class="custom-control-input" disabled>
                                                <label class="custom-control-label" for="customRadioDisabled1">Radio Disabled 1</label>
                                            </div>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" name="radioDisabled" id="customRadioDisabled2" class="custom-control-input" disabled>
                                                <label class="custom-control-label" for="customRadioDisabled2">Radio Disabled 2</label>
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

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>