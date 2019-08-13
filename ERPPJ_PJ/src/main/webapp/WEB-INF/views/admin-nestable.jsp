<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                                            <li class="breadcrumb-item active">Nestable List</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Nestable List</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="text-left" id="nestable_list_menu">
                                    <button type="button" class="btn btn-pink waves-effect mb-3 mr-1 waves-light" data-action="expand-all">Expand All</button>
                                    <button type="button" class="btn btn-purple waves-effect mb-3 waves-light" data-action="collapse-all">Collapse All</button>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- End row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h4 class="header-title">Nestable Lists 1</h4>
                                                <p class="sub-header">
                                                    Drag & drop hierarchical list with mouse and touch compatibility (jQuery plugin).
                                                </p>
    
                                                <div class="custom-dd dd" id="nestable_list_1">
                                                    <ol class="dd-list">
                                                        <li class="dd-item" data-id="1">
                                                            <div class="dd-handle">
                                                                Choose a smartwatch
                                                            </div>
                                                        </li>
                                                        <li class="dd-item" data-id="2">
                                                            <div class="dd-handle">
                                                                Send design for review
                                                            </div>
                                                            <ol class="dd-list">
                                                                <li class="dd-item" data-id="3">
                                                                    <div class="dd-handle">
                                                                        Coffee with the team
                                                                    </div>
                                                                </li>
                                                                <li class="dd-item" data-id="4">
                                                                    <div class="dd-handle">
                                                                        Ready my new work
                                                                    </div>
                                                                </li>
                                                                <li class="dd-item" data-id="5">
                                                                    <div class="dd-handle">
                                                                        Make a wireframe
                                                                    </div>
                                                                    <ol class="dd-list">
                                                                        <li class="dd-item" data-id="6">
                                                                            <div class="dd-handle">
                                                                                Video app redesign
                                                                            </div>
                                                                        </li>
                                                                        <li class="dd-item" data-id="7">
                                                                            <div class="dd-handle">
                                                                                iOS apps design completed
                                                                            </div>
                                                                        </li>
                                                                        <li class="dd-item" data-id="8">
                                                                            <div class="dd-handle">
                                                                                Dashboard design started
                                                                            </div>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="dd-item" data-id="9">
                                                                    <div class="dd-handle">
                                                                        Homepage design
                                                                    </div>
                                                                </li>
                                                                <li class="dd-item" data-id="10">
                                                                    <div class="dd-handle">
                                                                        Developed UI Kit
                                                                    </div>
                                                                </li>
                                                            </ol>
                                                        </li>
    
                                                    </ol>
                                                </div>
                                            </div><!-- end col -->
    
                                            <div class="col-md-6">
                                                <h4 class="header-title mt-3 mt-md-0">Nestable Lists 2</h4>
                                                <p class="sub-header">
                                                    Drag & drop hierarchical list with mouse and touch compatibility (jQuery plugin).
                                                </p>
    
                                                <div class="custom-dd dd" id="nestable_list_2">
                                                    <ol class="dd-list">
                                                        <li class="dd-item" data-id="11">
                                                            <div class="dd-handle">
                                                                Item 11
                                                            </div>
                                                        </li>
                                                        <li class="dd-item" data-id="12">
                                                            <div class="dd-handle">
                                                                Item 12
                                                            </div>
                                                        </li>
                                                        <li class="dd-item" data-id="13">
                                                            <div class="dd-handle">
                                                                Item 13
                                                            </div>
                                                        </li>
                                                        <li class="dd-item" data-id="14">
                                                            <div class="dd-handle">
                                                                Item 14
                                                            </div>
                                                        </li>
                                                        <li class="dd-item" data-id="15">
                                                            <div class="dd-handle">
                                                                Item 15
                                                            </div>
                                                            <ol class="dd-list">
                                                                <li class="dd-item" data-id="16">
                                                                    <div class="dd-handle">
                                                                        Item 16
                                                                    </div>
                                                                </li>
                                                                <li class="dd-item" data-id="17">
                                                                    <div class="dd-handle">
                                                                        Item 17
                                                                    </div>
                                                                </li>
                                                                <li class="dd-item" data-id="18">
                                                                    <div class="dd-handle">
                                                                        Item 18
                                                                    </div>
                                                                </li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div> <!-- end col -->
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- end card -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end Row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h4 class="header-title">Nestable Lists 3</h4>
                                                <p class="sub-header">
                                                    Drag & drop hierarchical list with mouse and touch compatibility (jQuery plugin).
                                                </p>
    
                                                <div class="custom-dd-empty dd" id="nestable_list_3">
                                                    <ol class="dd-list">
                                                        <li class="dd-item dd3-item" data-id="13">
                                                            <div class="dd-handle dd3-handle"></div>
                                                            <div class="dd3-content">
                                                                Item 13
                                                            </div>
                                                        </li>
                                                        <li class="dd-item dd3-item" data-id="14">
                                                            <div class="dd-handle dd3-handle"></div>
                                                            <div class="dd3-content">
                                                                Item 14
                                                            </div>
                                                        </li>
                                                        <li class="dd-item dd3-item" data-id="15">
                                                            <div class="dd-handle dd3-handle"></div>
                                                            <div class="dd3-content">
                                                                Item 15
                                                            </div>
                                                            <ol class="dd-list">
                                                                <li class="dd-item dd3-item" data-id="16">
                                                                    <div class="dd-handle dd3-handle"></div>
                                                                    <div class="dd3-content">
                                                                        Item 16
                                                                    </div>
                                                                </li>
                                                                <li class="dd-item dd3-item" data-id="17">
                                                                    <div class="dd-handle dd3-handle"></div>
                                                                    <div class="dd3-content">
                                                                        Item 17
                                                                    </div>
                                                                </li>
                                                                <li class="dd-item dd3-item" data-id="18">
                                                                    <div class="dd-handle dd3-handle"></div>
                                                                    <div class="dd3-content">
                                                                        Item 18
                                                                    </div>
                                                                </li>
                                                            </ol>
                                                        </li>
                                                    </ol>
                                                </div>
                                            </div><!-- end col -->
    
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- end card -->
                            </div> <!-- end col -->
                        </div>
                        <!-- end Row -->
                        
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

        <!-- Nestable Plugins js-->
        <script src="/erp/resources/assets/libs/nestable2/jquery.nestable.min.js"></script>

        <!-- Nestable init-->
        <script src="/erp/resources/assets/js/pages/nestable.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>