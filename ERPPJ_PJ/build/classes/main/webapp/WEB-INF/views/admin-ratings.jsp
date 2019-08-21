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
                                            <li class="breadcrumb-item active">Ratings</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Ratings</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                        <div class="card-body">

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div>
                                                    <h4 class="header-title">Default</h4>
                                                    <p class="sub-header">
                                                        You need just to have a <code>div</code> to build the Raty.
                                                    </p>
                                                    <div id="default"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4 mt-lg-0">
                                                    <h4 class="header-title">Score</h4>
                                                    <p class="sub-header">
                                                        Used when we want to start with a saved rating.
                                                    </p>
                                                    <div id="score"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4 mt-lg-0">
                                                <h4 class="header-title">Score callback</h4>
                                                    <p class="sub-header">
                                                        If you need to start you score depending of a dynamic value, you can to
                                                        use callback for it.
                                                        You can pass any value for it, not necessarily a data- value. You can
                                                        use a field value for example.
                                                    </p>
                                                    <div id="score-callback" data-score="1"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Score Name</h4>
                                                    <p class="sub-header">
                                                        Changes the name of the hidden score field.
                                                    </p>
                                                    <div id="scoreName"></div>
                                                </div>
                                                
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Number</h4>
                                                    <p class="sub-header">
                                                        Changes the number of stars.
                                                    </p>
                                                    <div id="number"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Number callback</h4>
                                                    <p class="sub-header">
                                                        You can receive the number of stars dynamic using callback to set it.
                                                    </p>
                                                    <div id="number-callback" data-number="3"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Number Max</h4>
                                                    <p class="sub-header">
                                                        Change the maximum of start that can be created.
                                                    </p>
                                                    <div id="numberMax"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Read Only</h4>
                                                    <p class="sub-header">
                                                        You can prevent users to vote. It can be applied with or without score
                                                        and all stars will receives the hint corresponding of the selected star.
                                                        Stop the mouse over the stars to see:
                                                    </p>
                                                    <div id="readOnly"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Read Only callback</h4>
                                                    <p class="sub-header">
                                                        You can decide if the rating will be readOnly dynamically returning true of false on callback.
                                                    </p>
                                                    <div id="readOnly-callback" data-number="3"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">No Rated Message</h4>
                                                    <p class="sub-header">
                                                        If readOnly is enabled and there is no score, the hint "Not rated yet!"
                                                        will be shown for all stars. But you can change it.
                                                        Stop the mouse over the star to see:
                                                    </p>
                                                    <div id="noRatedMsg"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Half Show</h4>
                                                    <p class="sub-header">
                                                        You can represent a float score as a half star icon.
                                                    </p>
                                                    <div id="halfShow-true"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Half Show <small>Disabled</small></h4>
                                                    <p class="sub-header">
                                                        You can decide if the rating will be readOnly dynamically returning true of false on callback.
                                                    </p>
                                                    <div id="halfShow-false"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Round</h4>
                                                    <p class="sub-header">
                                                        We changed the default interval [x.25 .. x.76], now x.26 will round down instead of to be a half star.
                                                        Remember that the full attribute is used only when halfShow is disabled.
                                                    </p>
                                                    <div id="round"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Half</h4>
                                                    <p class="sub-header">
                                                        Enables the half star mouseover to be possible vote with half values.
                                                    </p>
                                                    <div id="half"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Star Half</h4>
                                                    <p class="sub-header">
                                                        Changes the name of the half star.
                                                    </p>
                                                    <div id="starHalf"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Click</h4>
                                                    <p class="sub-header">
                                                        Callback to handle the score and the click event on click action.
                                                        You can mension the Raty element (DOM) itself using this.
                                                    </p>
                                                    <div id="click"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Hints</h4>
                                                    <p class="sub-header">
                                                        Changes the hint for each star by it position on array.
                                                    </p>
                                                    <div id="hints"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Star Off and Star On</h4>
                                                    <p class="sub-header">
                                                        Changes the name of the star on and star off.
                                                    </p>
                                                    <div id="star-off-and-star-on"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Cancel</h4>
                                                    <p class="sub-header">
                                                        Add a cancel button on the left side of the stars to cacel the score.
                                                        Inside the click callback the argument code receives the value null when we click on cancel button.
                                                    </p>
                                                    <div id="cancel"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Cancel Hint</h4>
                                                    <p class="sub-header">
                                                        Like the stars, the cancel button have a hint too, and you can change it.
                                                    </p>
                                                    <div id="cancelHint"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Cancel Place</h4>
                                                    <p class="sub-header">
                                                        Changes the cancel button to the right side.
                                                    </p>
                                                    <div id="cancelPlace"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Cancel off and Cancel On</h4>
                                                    <p class="sub-header">
                                                        Changes the on and off icon of the cancel button.
                                                    </p>
                                                    <div id="cancel-off-and-cancel-on"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Icon Range</h4>
                                                    <p class="sub-header">
                                                        It's an array of objects where each one represents a custom icon.
                                                        The range attribute is until wich position the icon will be displayed.
                                                    </p>
                                                    <div id="iconRange"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Size</h4>
                                                    <p class="sub-header">
                                                        The size of the icons are controlled by the css property font-size as
                                                        all icons are text. The plugin tries to calculate the font size
                                                        automatically, but should that fail, you can provide a size (in pixels)
                                                        with the size option.
                                                    </p>
                                                    <div id="size-md" class="rating-md"></div>
        
                                                    <div id="size-lg" class="rating-lg mt-3"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Target</h4>
                                                    <p class="sub-header">
                                                        Some place to display the hints or the cancelHint.<b id="target-div-hint"></b>
                                                    </p>
                                                    <div id="target-div"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Target Type</h4>
                                                    <p class="sub-header">
                                                        You have the option hint or score to chosse. <b id="targetType-hint" class="badge badge-success ml-1"></b>
                                                    </p>
                                                    <div id="targetType"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Target Format</h4>
                                                    <p class="sub-header">
                                                        You can choose a template to be merged with your hints and displayed on target.
                                                    </p>
        
                                                    <div class="text-xs-center">
                                                        <div id="targetFormat" class="rating-md"></div>
        
                                                        <input type="text" class="form-control mt-2" id="targetFormat-hint" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
    
    
                                        <div class="row mt-4">
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Mouseover</h4>
                                                    <p class="sub-header">
                                                        You can handle the action on mouseover.
                                                    </p>
                                                    <div id="mouseover"></div>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="mt-4">
                                                    <h4 class="header-title">Mouseout</h4>
                                                    <p class="sub-header">
                                                        You can handle the action on mouseout.
                                                    </p>
                                                    <div id="mouseout"></div>
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

        <!-- Raty fa plugin -->
        <script src="/erp/resources/assets/libs/raty-fa/jquery.raty-fa.js"></script>

        <!-- Raty fa init -->
        <script src="/erp/resources/assets/js/pages/rating.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>