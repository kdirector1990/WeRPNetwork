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
                                            <li class="breadcrumb-item active">Bootstrap UI</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Bootstrap UI</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                        	<div class="col-sm-12">
                        		<div class="card">
                                    <div class="card-body">
                                        <div class="row">
    
                                            <!-- Labels -->
                                            <div class="col-lg-6">
                                                <h4 class="header-title">Badge</h4>
                                                <p class="sub-header">
                                                    Add any of the below mentioned modifier classes to change the appearance of a badge.
                                                </p>
    
                                                <div class="">
                                                    <span class="badge badge-primary">Primary</span>
                                                    <span class="badge badge-success">Success</span>
                                                    <span class="badge badge-info">Info</span>
                                                    <span class="badge badge-warning">Warning</span>
                                                    <span class="badge badge-danger">Danger</span>
                                                    <span class="badge badge-purple">Purple</span>
                                                    <span class="badge badge-dark">Dark</span>
                                                    <span class="badge badge-pink">Pink</span>
                                                </div>
                                            </div>
                                            <!-- end col -->
    
    
                                            <!-- Badge -->
                                            <div class="col-lg-6 mt-4 mt-lg-0">
                                                <h4 class="header-title">Pill Badge</h4>
                                                <p class="sub-header">
                                                    Four options are available: top, right, bottom, and left aligned.
                                                </p>
    
                                                <div class="">
                                                    <span class="badge badge-pill badge-primary">15</span>
                                                    <span class="badge badge-pill badge-success">0</span>
                                                    <span class="badge badge-pill badge-info">21</span>
                                                    <span class="badge badge-pill badge-dark">3</span>
                                                    <span class="badge badge-pill badge-warning">35</span>
                                                    <span class="badge badge-pill badge-danger">32</span>
                                                    <span class="badge badge-pill badge-purple">51</span>
                                                    <span class="badge badge-pill badge-pink">77</span>
                                                </div>
                                            </div>
                                            <!-- end col -->
    
                                        </div> <!-- end row -->
    
    
                                        <div class="row mt-4">
    
                                            <!-- Pagination -->
                                            <div class="col-lg-6">
                                                <h4 class="header-title">Pagination</h4>
                                                <p class="sub-header">
                                                    Provide pagination links for your site or app with the multi-page pagination component.
                                                </p>
    
                                                <div>
                                                    <h5 class="font-14 mb-1">Default Pagination</h5>
                                                    <p class="text-muted">
                                                        Simple pagination inspired by Rdio, great for apps and search results.
                                                    </p>
                                                    <ul class="pagination">
                                                        <li class="page-item disabled">
                                                            <a href="#" class="page-link"><i class="fa fa-angle-left"></i></a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">1</a>
                                                        </li>
                                                        <li class="page-item active">
                                                            <a href="#" class="page-link">2</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">3</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">4</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">5</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link"><i class="fa fa-angle-right"></i></a>
                                                        </li>
                                                    </ul>
    
    
                                                    <h5 class="font-14 mt-3 mb-1">Split Pagination</h5>
                                                    <p class="text-muted">
                                                        Links are split to each other by adding a class of <code>
                                                            .pagination-split</code>
                                                    </p>
                                                    <ul class="pagination pagination-split">
                                                        <li class="disabled">
                                                            <a href="#" class="page-link"><i class="fa fa-angle-left"></i></a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">1</a>
                                                        </li>
                                                        <li class="page-item active">
                                                            <a href="#" class="page-link">2</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">3</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">4</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">5</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link"><i class="fa fa-angle-right"></i></a>
                                                        </li>
                                                    </ul>
    
    
                                                    <h5 class="font-14 mt-3 mb-1">Sizing</h5>
                                                    <p class="text-muted">
                                                        Add <code>
                                                            .pagination-lg</code>
                                                        or <code>
                                                            .pagination-sm</code>
                                                        for additional sizes.
                                                    </p>
                                                    <ul class="pagination pagination-lg mb-0">
                                                        <li class="disabled page-item">
                                                            <a href="#" class="page-link"><i class="fa fa-angle-left"></i></a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">1</a>
                                                        </li>
                                                        <li class="active page-item">
                                                            <a href="#" class="page-link">2</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">3</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">4</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link">5</a>
                                                        </li>
                                                        <li class="page-item">
                                                            <a href="#" class="page-link"><i class="fa fa-angle-right"></i></a>
                                                        </li>
                                                    </ul>
    
                                                </div>
                                            </div>
                                            <!-- end col -->
    
                                        </div>
                                        <!-- end row -->
    
                                    </div> <!-- end card-body -->
                                </div>
                        	</div> <!-- end col -->
                        </div>
                        <!-- end row -->


                        <!-- List Groups -->
                        <div class="row">
                            <div class="col-md-12">
                            	<div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <h4 class="header-title">List Groups(Simple List Group)</h4>
                                                <p class="sub-header">
                                                    The most basic list group is simply an unordered list with list items,
                                                    and the proper classes. Build upon it with the options that follow, or your own CSS as needed.
                                                </p>
    
                                                <ul class="list-group">
                                                    <li class="list-group-item d-flex justify-content-between align-items-center">
                                                        Cras justo odio
                                                        <span class="badge badge-primary badge-pill">14</span>
                                                    </li>
                                                    <li class="list-group-item d-flex justify-content-between align-items-center">
                                                        Dapibus ac facilisis in
                                                        <span class="badge badge-purple badge-pill">2</span>
                                                    </li>
                                                    <li class="list-group-item d-flex justify-content-between align-items-center">
                                                        Morbi leo risus
                                                        <span class="badge badge-pink badge-pill">9</span>
                                                    </li>
                                                    <li class="list-group-item d-flex justify-content-between align-items-center">
                                                        Morbi leo risus
                                                        <span class="badge badge-dark badge-pill">7</span>
                                                    </li>
                                                    <li class="list-group-item d-flex justify-content-between align-items-center">
                                                        Morbi leo risus
                                                        <span class="badge badge-success badge-pill">1</span>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!-- end col -->
    
                                            <div class="col-lg-6 mt-4 mt-lg-0">
                                                <h4 class="header-title">List Group with Links</h4>
                                                <p class="sub-header">
                                                    Linkify list group items by using anchor tags instead of list items (that also means a parent <code>&lt;div&gt;</code>
                                                    instead of an <code>&lt;ul&gt;</code>). No need for individual parents around each element.
                                                </p>
    
                                                <div class="list-group">
                                                    <a href="#" class="list-group-item text-white active">
                                                        Cras justo odio
                                                    </a>
                                                    <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                                                    <a href="#" class="list-group-item">Morbi leo risus</a>
                                                    <a href="#" class="list-group-item disabled">Porta ac consectetur ac</a>
                                                    <a href="#" class="list-group-item">Vestibulum at eros</a>
                                                </div> <!-- list-group -->
                                            </div>
                                            <!-- end col -->
    
                                        </div>
                                        <!-- end row -->
    
    
                                        <!-- List Group with Description -->
                                        <div class="row mt-4">
                                            <div class="col-sm-12">
                                                <h4 class="header-title">List Group with Description</h4>
                                                <p class="sub-header">
                                                    Add nearly any HTML within, even for linked list groups like the one below.
                                                </p>
    
                                                <div class="list-group">
                                                    <a href="#" class="list-group-item active">
                                                        <h5 class="list-group-item-heading text-white mt-0">Domestic confined any but son</h5>
                                                        <p class="list-group-item-text text-white m-0">Consider speaking me prospect whatever if. Ten nearer rather hunted six parish indeed number. Allowance repulsive sex may contained can set suspected abilities cordially. Do part am he high rest that. So fruit to ready it being views match. </p>
                                                    </a>
                                                    <a href="#" class="list-group-item disabled">
                                                        <h5 class="list-group-item-heading mt-0">Why painful the sixteen how minuter</h5>
                                                        <p class="list-group-item-text m-0">Started his hearted any civilly. So me by marianne admitted speaking. Men bred fine call ask. Cease one miles truth day above seven. Suspicion sportsmen provision suffering mrs saw engrossed something. Snug soon he on plan in be dine some. </p>
                                                    </a>
                                                    <a href="#" class="list-group-item">
                                                        <h5 class="list-group-item-heading mt-0">Barton waited twenty always repair</h5>
                                                        <p class="list-group-item-text m-0">Talking chamber as shewing an it minutes. Trees fully of blind do. Exquisite favourite at do extensive listening. Improve up musical welcome he. Gay attended vicinity prepared now diverted. Esteems it ye sending reached as. Longer lively her design settle tastes advice mrs off who. </p>
                                                    </a>
                                                </div> <!-- list-group -->
                                            </div>
                                        </div>
                                        <!-- End row -->
    
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end Row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
            
                                            <!-- Badges -->
                                            <div class="col-lg-6">
                                                <h4 class="header-title">Border spinner</h4>
                                                <p class="sub-header">
                                                    Use the border spinners for a lightweight loading indicator.
                                                </p>
            
                                                <div class="">
                                                    <div class="spinner-border text-primary m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-border text-secondary m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-border text-success m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-border text-danger m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-border text-warning m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-border text-info m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-border text-pink m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-border text-purple m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->
            
                                            <!-- Badge -->
                                            <div class="col-lg-6">
                                                <h4 class="header-title">Growing spinner</h4>
                                                <p class="sub-header">If you don’t fancy a border spinner, switch to the grow spinner. While it doesn’t technically spin, it does repeatedly grow!</p>
            
                                                <div class="">
                                                    <div class="spinner-grow text-primary m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-secondary m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-success m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-danger m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-warning m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-info m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                        <div class="spinner-grow text-pink m-1" role="status">
                                                    <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-purple m-1" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end col -->
            
                                        </div> <!-- end row -->
                                    </div> 
                                </div><!-- end card -->
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

        <!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>