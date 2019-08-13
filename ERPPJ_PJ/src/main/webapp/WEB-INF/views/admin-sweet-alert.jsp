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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Admin UI</a></li>
                                            <li class="breadcrumb-item active">Sweet Alert</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Sweet Alert</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                            <h4 class="header-title">Examples</h4>

                                            <p class="sub-header">
                                                A beautiful, responsive, customizable, accessible (WAI-ARIA) replacement for JavaScript's popup boxes
                                            </p>

                                        <table class="table table-centered mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Alert Type</th>
                                                    <th>Example</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>A basic message</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-basic">Click me</button>
                                                </td>
                                            </tr>
            
                                            <tr>
                                                <td>A title with a text under</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-title">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>A success message!</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-success">Click me</button>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>A modal window with a long content inside:</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-long-content">Click me</button>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>A custom positioned dialog</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-custom-position">Click me</button>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>A modal with a title, an error icon, a text, and a footer</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-error">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>A confirm dialog, with a function attached to the "Confirm"-button...</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-warning">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>By passing a parameter, you can execute something else for "Cancel".</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-params">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>A message with custom Image Header</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-image">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>A message with auto close timer</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="sa-close">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Custom HTML description and buttons</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="custom-html-alert">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>A message with custom width, padding and background</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="custom-padding-width-alert">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Ajax request example</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="ajax-alert">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Chaining modals (queue) example</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="chaining-alert">Click me</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Dynamic queue example</td>
                                                <td>
                                                    <button type="button" class="btn btn-primary btn-xs" id="dynamic-alert">Click me</button>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
            
                                    </div> <!-- end card-body -->
                                </div> <!-- end card-->
                            </div>
                            <!-- end col -->
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

        <!-- Sweet Alerts js -->
        <script src="/erp/resources/assets/libs/sweetalert2/sweetalert2.min.js"></script>

        <!-- Sweet alert init js-->
        <script src="/erp/resources/assets/js/pages/sweet-alerts.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>