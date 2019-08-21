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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form Elements</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form Elements</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Input Types</h4>
                                        <p class="sub-header">
                                            Most common form control, text-based input fields. Includes support for all HTML5 types: <code>text</code>, <code>password</code>, <code>datetime</code>, <code>datetime-local</code>, <code>date</code>, <code>month</code>, <code>time</code>, <code>week</code>, <code>number</code>, <code>email</code>, <code>url</code>, <code>search</code>, <code>tel</code>, and <code>color</code>.
                                        </p>
    
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <form class="form-horizontal">
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="simpleinput">Text</label>
                                                        <div class="col-md-10">
                                                            <input type="text" id="simpleinput" class="form-control" value="Some text value...">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-email">Email</label>
                                                        <div class="col-md-10">
                                                            <input type="email" id="example-email" name="example-email" class="form-control" placeholder="Email">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-password">Password</label>
                                                        <div class="col-md-10">
                                                            <input type="password" id="example-password" class="form-control" value="password">
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-palaceholder">Placeholder</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" id="example-palaceholder" placeholder="placeholder">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-textarea">Text area</label>
                                                        <div class="col-md-10">
                                                            <textarea class="form-control" rows="5" id="example-textarea"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-readonly">Readonly</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" readonly="" id="example-readonly" value="Readonly value">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-disable">Disabled</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" id="example-disable" disabled="" value="Disabled value">
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
    
                                            <div class="col-xl-6">
                                                <form class="form-horizontal">
    
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-static">Static control</label>
                                                        <div class="col-md-10">
                                                            <input type="text" readonly class="form-control-plaintext" id="example-static" value="email@example.com">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-helping">Helping text</label>
                                                        <div class="col-md-10">
                                                          <input type="text" class="form-control" id="example-helping" placeholder="Helping text">
                                                          <span class="help-block"><small>A block of help text that breaks onto a new line and may extend beyond one line.</small></span>
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label">Input Select</label>
                                                        <div class="col-md-10">
                                                            <select class="form-control">
                                                                <option>1</option>
                                                                <option>2</option>
                                                                <option>3</option>
                                                                <option>4</option>
                                                                <option>5</option>
                                                            </select>
                                                            <h6>Multiple select</h6>
                                                            <select multiple="" class="form-control">
                                                                <option>1</option>
                                                                <option>2</option>
                                                                <option>3</option>
                                                                <option>4</option>
                                                                <option>5</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-md-2 col-form-label" for="example-range">Range</label>
                                                        <div class="col-md-10">
                                                            <input class="custom-range mt-1" type="range" id="example-range" name="range" min="0" max="10">
                                                        </div>
                                                    </div>

                                                </form>
                                            </div> <!-- end col -->
                                        </div>
                                        <!-- end row -->
    
                                    </div>
                                </div>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <h4 class="header-title">Input Sizes & Group</h4>
                                                <p class="sub-header">
                                                    Set heights using classes like <code>.input-lg</code>, and set widths using grid column classes like <code>.col-lg-*</code>.
                                                </p>
            
                                                <form class="form-horizontal">
                                                    <div class="form-group row">
                                                        <label class="col-md-3 col-form-label" for="example-input-small">Small</label>
                                                        <div class="col-md-9">
                                                            <input type="text" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder=".input-sm">
                                                        </div>
                                                    </div>
            
                                                    <div class="form-group row">
                                                        <label class="col-md-3 col-form-label" for="example-input-normal">Normal</label>
                                                        <div class="col-md-9">
                                                            <input type="text" id="example-input-normal" name="example-input-normal" class="form-control" placeholder="Normal">
                                                        </div>
                                                    </div>
            
                                                    <div class="form-group row">
                                                        <label class="col-md-3 col-form-label" for="example-input-large">Large</label>
                                                        <div class="col-md-9">
                                                            <input type="text" id="example-input-large" name="example-input-large" class="form-control input-lg" placeholder=".input-lg">
                                                        </div>
                                                    </div>
            
                                                    <div class="form-group row">
                                                        <label class="col-md-3 col-form-label">Grid Sizes</label>
                                                        <div class="col-md-4">
                                                            <input type="text" class="form-control" placeholder=".col-sm-4">
                                                        </div>
                                                    </div>
            
                                                    <div class="form-group row">
                                                        <label class="col-md-3 col-form-label">Static</label>
                                                        <div class="col-md-9">
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                                                </div>
                                                                <input type="text" id="example-input1-group1" name="example-input1-group1" class="form-control" placeholder="Username">
                                                            </div>
                                                        </div>
                                                    </div>
            
                                                    <div class="form-group row">
                                                        <label class="col-md-3 col-form-label">Buttons</label>
                                                        <div class="col-md-9">
                                                            <div class="input-group">
                                                                <input type="email" id="example-input2-group2" name="example-input2-group2" class="form-control" placeholder="Email">
                                                                <span class="input-group-append">
                                                                    <button type="button" class="btn waves-effect waves-light btn-primary">Submit</button>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
            
                                                    <div class="form-group row mb-0">
                                                        <label class="col-md-3 col-form-label">Dropdowns</label>
                                                        <div class="col-md-9">
                                                            <div class="input-group">
                                                                <div class="input-group-prepend">
                                                                    <button class="btn btn-primary dropdown-toggle waves-effect waves-light" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <i class="mdi mdi-chevron-down"></i></button>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a href="javascript:void(0)" class="dropdown-item">Action</a></li>
                                                                        <li><a href="javascript:void(0)" class="dropdown-item">Another action</a></li>
                                                                        <li class="dropdown-divider"></li>
                                                                        <li><a href="javascript:void(0)" class="dropdown-item">Separated link</a></li>
                                                                    </ul>
                                                                </div>
                                                                <input type="text" id="example-input1-group3" name="example-input1-group3" class="form-control" placeholder="Username">
                                                            </div>
            
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Basic example</h4>
                                        <p class="sub-header">
                                            Individual form controls automatically receive some global styling. All textual <code>&lt;input&gt;</code>,
                                            <code>&lt;textarea&gt;</code>, and <code>&lt;select&gt;</code> elements with <code>.form-control</code> are set to
                                            <code>width: 100%;</code> by default. Wrap labels and controls in <code>.form-group</code> for optimum spacing.
                                        </p>
    
                                        <form>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="remember1">
                                                <label class="custom-control-label" for="remember1">Remember me</label>
                                            </div>
    
                                            <button type="submit" class="btn btn-purple waves-effect waves-light mt-3">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Horizontal form</h4>
                                        <p class="sub-header">
                                            Use Bootstrap's predefined grid classes to align labels and groups of form controls in a horizontal layout by adding
                                            <code>.form-horizontal</code> to the form (which doesn't have to be a <code>&lt;form&gt;</code>). Doing so changes
                                            <code>.form-group</code>s to behave as grid rows, so no need for <code>.row</code>.
                                        </p>
    
                                        <form class="form-horizontal">
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-3 col-form-label">Email</label>
                                                <div class="col-sm-9">
                                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputPassword3" class="col-sm-3 col-form-label">Password</label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="inputPassword4" class="col-sm-3 col-form-label">Re Password</label>
                                                <div class="col-sm-9">
                                                    <input type="password" class="form-control" id="inputPassword4" placeholder="Retype Password">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="offset-sm-3 col-sm-9">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" class="custom-control-input" id="remember2">
                                                        <label class="custom-control-label" for="remember2">Remember me</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-0">
                                                <div class="offset-sm-3 col-sm-9">
                                                    <button type="submit" class="btn btn-info waves-effect waves-light">Sign in</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <!-- Inline Form -->
                                        <h4 class="header-title">Inline Form</h4>
                                        <p class="sub-header">
                                            Add <code>.form-inline</code> to your form (which doesn't have to be a <code>&lt;form&gt;</code>)
                                            for left-aligned and inline-block controls. This only applies to forms within viewports
                                            that are at least 768px wide.
                                        </p>
    
                                        <h5>Form inline</h5>
    
                                        <form class="form-inline">
                                            <div class="form-group mr-2">
                                                <label for="exampleInputName2" class="mr-2">Name</label>
                                                <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
                                            </div>
                                            <div class="form-group mr-2">
                                                <label for="exampleInputEmail2" class="mr-2">Email</label>
                                                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
                                            </div>
                                            <button type="submit" class="btn btn-primary waves-effect waves-light btn-md">
                                                Send invitation
                                            </button>
                                        </form>

                                        <h5 class="mt-4 mb-1">Auto-sizing</h5>

                                        <form>
                                            <div class="form-row align-items-center">
                                                <div class="col-auto">
                                                    <label class="sr-only" for="autoSizingInputEmail">Email address</label>
                                                    <input type="email" class="form-control mt-2" id="autoSizingInputEmail" placeholder="Enter email">
                                                </div>
        
                                                <div class="col-auto">
                                                    <label class="sr-only" for="autoSizingInputPassword">Password</label>
                                                    <input type="password" class="form-control mt-2" id="autoSizingInputPassword" placeholder="Password">
                                                </div>
                                                <div class="col-auto">
                                                    <div class="custom-control custom-checkbox mt-2">
                                                        <input type="checkbox" class="custom-control-input" id="autoSizingCheck">
                                                        <label class="custom-control-label" for="autoSizingCheck">Remember me</label>
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                    <button type="submit" class="btn btn-success waves-effect waves-ligh mt-2">Sign in</button>
                                                </div>
                                            </div>
                                        </form>
    
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

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