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
                                            <li class="breadcrumb-item active">Buttons</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Buttons</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Default Buttons</h4>
                                        <p class="sub-header">Use the button classes on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.</p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-primary waves-effect waves-light">Primary</button>
                                            <button type="button" class="btn btn-success waves-effect waves-light">Success</button>
                                            <button type="button" class="btn btn-info waves-effect waves-light">Info</button>
                                            <button type="button" class="btn btn-warning waves-effect waves-light">Warning</button>
                                            <button type="button" class="btn btn-danger waves-effect waves-light">Danger</button>
                                            <button type="button" class="btn btn-purple waves-effect waves-light">Purple</button>
                                            <button type="button" class="btn btn-pink waves-effect waves-light">Pink</button>
                                            <button type="button" class="btn btn-light waves-effect">Light</button>
                                            <button type="button" class="btn btn-dark waves-effect waves-light">Dark</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Button-Rounded</h4>
                                        <p class="sub-header">Add <code>.btn-rounded</code> to default button to get rounded corners.</p>

                                        <div class="button-list">

                                            <button type="button" class="btn btn-primary btn-rounded waves-effect waves-light">Primary</button>
                                            <button type="button" class="btn btn-success btn-rounded waves-effect waves-light">Success</button>
                                            <button type="button" class="btn btn-info btn-rounded waves-effect waves-light">Info</button>
                                            <button type="button" class="btn btn-warning btn-rounded waves-effect waves-light">Warning</button>
                                            <button type="button" class="btn btn-danger btn-rounded waves-effect waves-light">Danger</button>
                                            <button type="button" class="btn btn-purple btn-rounded waves-effect waves-light">Purple</button>
                                            <button type="button" class="btn btn-pink btn-rounded waves-effect waves-light">Pink</button>
                                            <button type="button" class="btn btn-light btn-rounded waves-effect">Light</button>
                                            <button type="button" class="btn btn-dark btn-rounded waves-effect waves-light">Dark</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Outline Buttons</h4>
                                        <p class="sub-header">
                                            Use the button classes on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.
                                        </p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-outline-primary waves-effect waves-light">Primary</button>
                                            <button type="button" class="btn btn-outline-success waves-effect waves-light">Success</button>
                                            <button type="button" class="btn btn-outline-info waves-effect waves-light">Info</button>
                                            <button type="button" class="btn btn-outline-warning waves-effect waves-light">Warning</button>
                                            <button type="button" class="btn btn-outline-danger waves-effect waves-light">Danger</button>
                                            <button type="button" class="btn btn-outline-purple waves-effect waves-light">Purple</button>
                                            <button type="button" class="btn btn-outline-pink waves-effect waves-light">Pink</button>
                                            <button type="button" class="btn btn-outline-dark waves-effect waves-light">Dark</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Outline Rounded Button</h4>
                                        <p class="sub-header">
                                            Add <code>.btn-rounded</code> to default button to get rounded corners.
                                        </p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-outline-primary btn-rounded waves-effect waves-light">Primary</button>
                                            <button type="button" class="btn btn-outline-success btn-rounded waves-effect waves-light">Success</button>
                                            <button type="button" class="btn btn-outline-info btn-rounded waves-effect waves-light">Info</button>
                                            <button type="button" class="btn btn-outline-warning btn-rounded waves-effect waves-light">Warning</button>
                                            <button type="button" class="btn btn-outline-danger btn-rounded waves-effect waves-light">Danger</button>
                                            <button type="button" class="btn btn-outline-purple btn-rounded waves-effect waves-light">Purple</button>
                                            <button type="button" class="btn btn-outline-pink btn-rounded waves-effect waves-light">Pink</button>
                                            <button type="button" class="btn btn-outline-dark btn-rounded waves-effect waves-light">Dark</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Button-Width</h4>
                                        <p class="text-muted m-b-25">
                                            Create buttons with minimum width by adding add <code>.width-xs</code>, <code>.width-sm</code>, <code>.width-md</code> or <code>.width-lg</code>.
                                        </p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-info waves-effect waves-light width-xs">Xs</button>
                                            <button type="button" class="btn btn-warning waves-effect waves-light width-sm">Small</button>
                                            <button type="button" class="btn btn-purple waves-effect waves-light width-md">Middle</button>
                                            <button type="button" class="btn btn-pink waves-effect waves-light width-lg">Large</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Button-Sizes</h4>
                                        <p class="sub-header">
                                            Add <code>.btn-lg</code>, <code>.btn-sm</code>, or <code>.btn-xs</code> for additional sizes.
                                        </p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-primary waves-effect waves-light btn-lg">Large</button>
                                            <button type="button" class="btn btn-pink waves-effect waves-light">Normal</button>
                                            <button type="button" class="btn btn-success waves-effect waves-light btn-sm">Small</button>
                                            <button type="button" class="btn btn-purple waves-effect waves-light btn-xs">Extra small</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Button-Disabled</h4>
                                        <p class="sub-header">
                                            Add the <code>disabled</code> attribute to <code>&lt;button&gt;</code> buttons.
                                        </p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-info" disabled>Info</button>
                                            <button type="button" class="btn btn-purple" disabled>Purple</button>
                                            <button type="button" class="btn btn-pink" disabled>Pink</button>
                                            <button type="button" class="btn btn-dark" disabled>Dark</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Icon Button</h4>
                                        <p class="sub-header">
                                            Icon only button.
                                        </p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-icon waves-effect btn-pink"> <i class="far fa-heart"></i> </button>
                                            <button type="button" class="btn btn-icon waves-effect waves-light btn-danger"> <i class="fas fa-times"></i> </button>
                                            <button type="button" class="btn btn-icon waves-effect waves-light btn-purple"> <i class="fas fa-music"></i> </button>
                                            <button type="button" class="btn btn-icon waves-effect waves-light btn-primary"> <i class="fas fa-star-half-alt"></i> </button>
                                            <button type="button" class="btn btn-icon waves-effect waves-light btn-success"> <i class="far fa-thumbs-up"></i> </button>
                                            <button type="button" class="btn btn-icon waves-effect waves-light btn-info"> <i class="far fa-keyboard"></i> </button>
                                            <button type="button" class="btn btn-icon waves-effect waves-light btn-warning"> <i class="fas fa-wrench"></i> </button>
                                            <br>
                                            <button type="button" class="btn btn-primary waves-effect"> <i class="fa fa-heart mr-1"></i> <span>Like</span> </button>
                                            <button type="button" class="btn btn-warning waves-effect waves-light"> <i class="fa fa-rocket mr-1"></i> <span>Launch</span> </button>
                                            <button type="button" class="btn btn-info waves-effect waves-light"> <i class="fa fa-cloud mr-1"></i> <span>Cloud Hosting</span> </button>
                                            <button type="button" class="btn btn-pink waves-effect waves-light"> <span>Book Flight</span> <i class="fa fa-plane ml-1"></i> </button>
                                            <button type="button" class="btn btn-purple waves-effect waves-light"> <span>Donate Money</span> <i class="far fa-money-bill-alt ml-1"></i> </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Block Button</h4>
                                        <p class="sub-header">
                                            Create block level buttons,with by adding add <code>.btn-block</code>.
                                        </p>

                                        <div class="button-list">
                                            <button type="button" class="btn btn-block btn-primary waves-effect waves-light">Block Button</button>
                                            <button type="button" class="btn btn-block btn-sm btn-info waves-effect waves-light">Block Button</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- end col -->

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Button Group</h4>
                                        <p class="sub-header">
                                            Wrap a series of buttons with <code>.btn</code> in <code>.btn-group</code>.
                                        </p>

                                        <div class="btn-group mb-2">
                                            <button type="button" class="btn btn-secondary waves-effect waves-light">Left</button>
                                            <button type="button" class="btn btn-secondary waves-effect waves-light">Middle</button>
                                            <button type="button" class="btn btn-secondary waves-effect waves-light">Right</button>
                                        </div>
                                        <br>
                                        <div class="btn-group mb-2">
                                            <button type="button" class="btn btn-primary waves-effect waves-light"><i class="fas fa-align-left"></i></button>
                                            <button type="button" class="btn btn-warning waves-effect waves-light"><i class="fas fa-align-center"></i></button>
                                            <button type="button" class="btn btn-danger waves-effect waves-light"><i class="fas fa-align-right"></i></button>
                                        </div>
                                        <div class="btn-group mb-2">
                                            <button type="button" class="btn btn-secondary waves-effect">1</button>
                                            <button type="button" class="btn btn-secondary waves-effect">2</button>
                                            <button type="button" class="btn btn-dark waves-effect waves-light">3</button>
                                            <button type="button" class="btn btn-secondary waves-effect">4</button>
                                        </div>
                                        <div class="btn-group mb-2">
                                            <button type="button" class="btn btn-secondary waves-effect">5</button>
                                            <button type="button" class="btn btn-dark waves-effect waves-light">6</button>
                                            <button type="button" class="btn btn-secondary waves-effect">7</button>
                                        </div>
                                        <div class="btn-group mb-2">
                                            <button type="button" class="btn btn-secondary waves-effect">8</button>
                                        </div>
                                        <br>
                                        <div class="btn-group mb-2">
                                            <button type="button" class="btn btn-secondary waves-effect">1</button>
                                            <button type="button" class="btn btn-primary waves-effect waves-light">2</button>
                                            <button type="button" class="btn btn-secondary waves-effect">3</button>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-secondary dropdown-toggle waves-effect" data-toggle="dropdown" aria-expanded="false"> Dropdown <i class="mdi mdi-chevron-down"></i> </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#" class="dropdown-item">Dropdown link 1</a></li>
                                                    <li><a href="#" class="dropdown-item">Dropdown link 2</a></li>
                                                    <li><a href="#" class="dropdown-item">Dropdown link 3</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="btn-group-vertical mb-2">
                                                    <button type="button" class="btn btn-secondary waves-effect">Top</button>
                                                    <button type="button" class="btn btn-secondary waves-effect">Middle</button>
                                                    <button type="button" class="btn btn-secondary waves-effect">Bottom</button>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="btn-group-vertical mb-2">
                                                    <button type="button" class="btn btn-secondary waves-effect">Button 1</button>
                                                    <button type="button" class="btn btn-secondary dropdown-toggle waves-effect" data-toggle="dropdown" aria-expanded="false"> Button 2 <i class="mdi mdi-chevron-down"></i> </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#" class="dropdown-item">Dropdown link 1</a></li>
                                                        <li><a href="#" class="dropdown-item">Dropdown link 2</a></li>
                                                        <li><a href="#" class="dropdown-item">Dropdown link 3</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                    </div>
                    <!-- end container-fluid -->

                </div>
                <!-- end content -->

                

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