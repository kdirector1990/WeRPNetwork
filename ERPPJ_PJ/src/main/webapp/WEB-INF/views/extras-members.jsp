<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <!-- Custom box css -->
        <link href="/erp/resources/assets/libs/custombox/custombox.min.css" rel="stylesheet">

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Extras</a></li>
                                            <li class="breadcrumb-item active">Members</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Members</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-sm-4">
                                    <a href="#custom-modal" class="btn btn-primary waves-effect waves-light mb-3" data-animation="fadein" data-plugin="custommodal"
                                                        data-overlaySpeed="200" data-overlayColor="#36404a"><i class="mdi mdi-plus"></i> Add Member</a>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center member-box">
                                            <div class="dropdown float-right">
                                                <a class="dropdown-toggle card-drop" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="mdi mdi-dots-horizontal"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li><a href="#" class="dropdown-item">Edit</a></li>
                                                    <li><a href="#" class="dropdown-item">Delete</a></li>
                                                    <li><a href="#" class="dropdown-item">Block</a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="member-card">
                                                <div class="member-avatar avatar-xl mx-auto d-block">
                                                    <img src="assets/images/users/avatar-1.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                                                    <i class="mdi mdi-star-circle member-star text-success" title="verified user"></i>
                                                </div>
        
                                                <div class="">
                                                    <h4 class="mb-1">Mark A. McKnight</h4>
                                                    <p class="text-muted mb-3">@webdesigner <span> | </span> <span> <a href="#" class="text-pink">websitename.com</a> </span></p>
                                                </div>
        
                                                <p class="text-muted">
                                                    Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.
                                                </p>
        
                                                <button type="button" class="btn btn-info btn-rounded waves-effect mt-1 waves-light">Send Message</button>
        
                                                <ul class="member-card-social list-inline mt-3 mb-0">
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Twitter"><i class="fab fa-twitter"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Skype"><i class="fab fa-skype"></i></a>
                                                    </li>
                                                </ul>
        
                                            </div>
        
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end col -->

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center member-box">
                                            <div class="dropdown float-right">
                                                <a class="dropdown-toggle card-drop" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="mdi mdi-dots-horizontal"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li><a href="#" class="dropdown-item">Edit</a></li>
                                                    <li><a href="#" class="dropdown-item">Delete</a></li>
                                                    <li><a href="#" class="dropdown-item">Block</a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="member-card">
                                                <div class="member-avatar avatar-xl mx-auto d-block">
                                                    <img src="assets/images/users/avatar-2.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                                                    <i class="mdi mdi-star-circle member-star text-muted" title="unverified user"></i>
                                                </div>
        
                                                <div class="">
                                                    <h4 class="mb-1">Mark A. McKnight</h4>
                                                    <p class="text-muted mb-3">@webdesigner <span> | </span> <span> <a href="#" class="text-pink">websitename.com</a> </span></p>
                                                </div>
        
                                                <p class="text-muted">
                                                    Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.
                                                </p>
        
                                                <button type="button" class="btn btn-info btn-rounded waves-effect mt-1 waves-light">Send Message</button>
        
                                                <ul class="member-card-social list-inline mt-3 mb-0">
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Twitter"><i class="fab fa-twitter"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Skype"><i class="fab fa-skype"></i></a>
                                                    </li>
                                                </ul>
        
                                            </div>
        
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end col -->

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center member-box">
                                            <div class="dropdown float-right">
                                                <a class="dropdown-toggle card-drop" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="mdi mdi-dots-horizontal"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li><a href="#" class="dropdown-item">Edit</a></li>
                                                    <li><a href="#" class="dropdown-item">Delete</a></li>
                                                    <li><a href="#" class="dropdown-item">Block</a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="member-card">
                                                <div class="member-avatar avatar-xl mx-auto d-block">
                                                    <img src="assets/images/users/avatar-3.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                                                    <i class="mdi mdi-star-circle member-star text-success" title="verified user"></i>
                                                </div>
        
                                                <div class="">
                                                    <h4 class="mb-1">Mark A. McKnight</h4>
                                                    <p class="text-muted mb-3">@webdesigner <span> | </span> <span> <a href="#" class="text-pink">websitename.com</a> </span></p>
                                                </div>
        
                                                <p class="text-muted">
                                                    Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.
                                                </p>
        
                                                <button type="button" class="btn btn-info btn-rounded waves-effect mt-1 waves-light">Send Message</button>
        
                                                <ul class="member-card-social list-inline mt-3 mb-0">
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Twitter"><i class="fab fa-twitter"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Skype"><i class="fab fa-skype"></i></a>
                                                    </li>
                                                </ul>
        
                                            </div>
        
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center member-box">
                                            <div class="dropdown float-right">
                                                <a class="dropdown-toggle card-drop" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="mdi mdi-dots-horizontal"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li><a href="#" class="dropdown-item">Edit</a></li>
                                                    <li><a href="#" class="dropdown-item">Delete</a></li>
                                                    <li><a href="#" class="dropdown-item">Block</a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="member-card">
                                                <div class="member-avatar avatar-xl mx-auto d-block">
                                                    <img src="assets/images/users/avatar-4.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                                                    <i class="mdi mdi-star-circle member-star text-muted" title="unverified user"></i>
                                                </div>
        
                                                <div class="">
                                                    <h4 class="mb-1">Mark A. McKnight</h4>
                                                    <p class="text-muted mb-3">@webdesigner <span> | </span> <span> <a href="#" class="text-pink">websitename.com</a> </span></p>
                                                </div>
        
                                                <p class="text-muted">
                                                    Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.
                                                </p>
        
                                                <button type="button" class="btn btn-info btn-rounded waves-effect mt-1 waves-light">Send Message</button>
        
                                                <ul class="member-card-social list-inline mt-3 mb-0">
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Twitter"><i class="fab fa-twitter"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Skype"><i class="fab fa-skype"></i></a>
                                                    </li>
                                                </ul>
        
                                            </div>
        
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end col -->

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center member-box">
                                            <div class="dropdown float-right">
                                                <a class="dropdown-toggle card-drop" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="mdi mdi-dots-horizontal"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li><a href="#" class="dropdown-item">Edit</a></li>
                                                    <li><a href="#" class="dropdown-item">Delete</a></li>
                                                    <li><a href="#" class="dropdown-item">Block</a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="member-card">
                                                <div class="member-avatar avatar-xl mx-auto d-block">
                                                    <img src="assets/images/users/avatar-5.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                                                    <i class="mdi mdi-star-circle member-star text-success" title="verified user"></i>
                                                </div>
        
                                                <div class="">
                                                    <h4 class="mb-1">Mark A. McKnight</h4>
                                                    <p class="text-muted mb-3">@webdesigner <span> | </span> <span> <a href="#" class="text-pink">websitename.com</a> </span></p>
                                                </div>
        
                                                <p class="text-muted">
                                                    Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.
                                                </p>
        
                                                <button type="button" class="btn btn-info btn-rounded waves-effect mt-1 waves-light">Send Message</button>
        
                                                <ul class="member-card-social list-inline mt-3 mb-0">
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Twitter"><i class="fab fa-twitter"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Skype"><i class="fab fa-skype"></i></a>
                                                    </li>
                                                </ul>
        
                                            </div>
        
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end col -->

                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="text-center member-box">
                                            <div class="dropdown float-right">
                                                <a class="dropdown-toggle card-drop" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="mdi mdi-dots-horizontal"></i>
                                                </a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                    <li><a href="#" class="dropdown-item">Edit</a></li>
                                                    <li><a href="#" class="dropdown-item">Delete</a></li>
                                                    <li><a href="#" class="dropdown-item">Block</a></li>
                                                </ul>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="member-card">
                                                <div class="member-avatar avatar-xl mx-auto d-block">
                                                    <img src="assets/images/users/avatar-6.jpg" class="rounded-circle img-thumbnail" alt="profile-image">
                                                    <i class="mdi mdi-star-circle member-star text-success" title="verified user"></i>
                                                </div>
        
                                                <div class="">
                                                    <h4 class="mb-1">Mark A. McKnight</h4>
                                                    <p class="text-muted mb-3">@webdesigner <span> | </span> <span> <a href="#" class="text-pink">websitename.com</a> </span></p>
                                                </div>
        
                                                <p class="text-muted">
                                                    Hi I'm Johnathn Deo,has been the industry's standard dummy text ever since the 1500s, when an unknown printer took.
                                                </p>
        
                                                <button type="button" class="btn btn-info btn-rounded waves-effect mt-1 waves-light">Send Message</button>
        
                                                <ul class="member-card-social list-inline mt-3 mb-0">
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Twitter"><i class="fab fa-twitter"></i></a>
                                                    </li>
                                                    <li class="list-inline-item">
                                                        <a title="" data-placement="top" data-toggle="tooltip" class="social-list-item tooltips" href="" data-original-title="Skype"><i class="fab fa-skype"></i></a>
                                                    </li>
                                                </ul>
        
                                            </div>
        
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- end col -->
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

         <!-- Modal -->
        <div id="custom-modal" class="modal-demo">
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Add Contact</h4>
            <div class="custom-modal-text text-left">
                <form>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter name">
                    </div>
                    <div class="form-group">
                        <label for="position">Position</label>
                        <input type="text" class="form-control" id="position" placeholder="Enter position">
                    </div>
                    <div class="form-group">
                        <label for="company">Company</label>
                        <input type="text" class="form-control" id="company" placeholder="Enter company">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                    </div>

                    <button type="submit" class="btn btn-secondary waves-effect waves-light mr-1">Save</button>
                    <button type="button" class="btn btn-danger waves-effect waves-light">Cancel</button>
                </form>
            </div>
        </div>

         

        <!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Modal-Effect -->
        <script src="/erp/resources/assets/libs/custombox/custombox.min.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>