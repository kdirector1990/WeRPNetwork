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
                                            <li class="breadcrumb-item active">Form Validation</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form Validation</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Basic Form</h4>
                                        <p class="sub-header">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>
    
                                        <form action="#">
                                            <div class="form-group">
                                                <label for="userName">User Name<span class="text-danger">*</span></label>
                                                <input type="text" name="nick" parsley-trigger="change" required
                                                        placeholder="Enter user name" class="form-control" id="userName">
                                            </div>
                                            <div class="form-group">
                                                <label for="emailAddress">Email address<span class="text-danger">*</span></label>
                                                <input type="email" name="email" parsley-trigger="change" required
                                                        placeholder="Enter email" class="form-control" id="emailAddress">
                                            </div>
                                            <div class="form-group">
                                                <label for="pass1">Password<span class="text-danger">*</span></label>
                                                <input id="pass1" type="password" placeholder="Password" required
                                                        class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="passWord2">Confirm Password <span class="text-danger">*</span></label>
                                                <input data-parsley-equalto="#pass1" type="password" required
                                                        placeholder="Password" class="form-control" id="passWord2">
                                            </div>
                                            <div class="form-group">
                                                
                                                <div class="checkbox checkbox-info">
                                                    <input id="remember" type="checkbox">
                                                    <label for="remember">
                                                        Remember me
                                                    </label>
                                                </div>
    
                                            </div>
    
                                            <div class="form-group text-right mb-0">
                                                <button class="btn btn-primary waves-effect waves-light mr-1" type="submit">
                                                    Submit
                                                </button>
                                                <button type="reset" class="btn btn-secondary waves-effect">
                                                    Cancel
                                                </button>
                                            </div>
    
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Horizontal Form</h4>
                                        <p class="sub-header">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>
    
                                        <form>
                                            <div class="form-group row">
                                                <label for="inputEmail3" class="col-sm-4 form-control-label">Email<span class="text-danger">*</span></label>
                                                <div class="col-sm-7">
                                                    <input type="email" required parsley-type="email" class="form-control"
                                                            id="inputEmail3" placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="hori-pass1" class="col-sm-4 form-control-label">Password<span class="text-danger">*</span></label>
                                                <div class="col-sm-7">
                                                    <input id="hori-pass1" type="password" placeholder="Password" required
                                                            class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="hori-pass2" class="col-sm-4 form-control-label">Confirm Password
                                                    <span class="text-danger">*</span></label>
                                                <div class="col-sm-7">
                                                    <input data-parsley-equalto="#hori-pass1" type="password" required
                                                            placeholder="Password" class="form-control" id="hori-pass2">
                                                </div>
                                            </div>
    
                                            <div class="form-group row">
                                                <label for="webSite" class="col-sm-4 form-control-label">Web Site<span class="text-danger">*</span></label>
                                                <div class="col-sm-7">
                                                    <input type="url" required parsley-type="url" class="form-control"
                                                            id="webSite" placeholder="URL">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-8 offset-sm-4">
                                                    <div class="checkbox checkbox-info">
                                                        <input id="remember2" type="checkbox" checked>
                                                        <label for="remember2">
                                                            Remember me
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-8 offset-sm-4">
                                                    <button type="submit" class="btn btn-primary ml-1 waves-effect waves-light">
                                                        Register
                                                    </button>
                                                    <button type="reset"
                                                            class="btn btn-secondary waves-effect">
                                                        Cancel
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
    
                                        <div class="visible-lg" style="height: 100px;"></div>
                                    </div>
                                </div>

                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Validation type</h4>
                                        <p class="sub-header">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>
    
                                        <form class="" action="#">
                                            <div class="form-group">
                                                <label>Required</label>
                                                <input type="text" class="form-control" required
                                                            placeholder="Type something"/>
                                            </div>
    
                                            <div class="form-group">
                                                <label>Equal To</label>
                                                <div>
                                                    <input type="password" id="pass2" class="form-control" required
                                                            placeholder="Password"/>
                                                </div>
                                                <div class="mt-2">
                                                    <input type="password" class="form-control" required
                                                            data-parsley-equalto="#pass2"
                                                            placeholder="Re-Type Password"/>
                                                </div>
                                            </div>
    
                                            <div class="form-group">
                                                <label>E-Mail</label>
                                                <div>
                                                    <input type="email" class="form-control" required
                                                            parsley-type="email" placeholder="Enter a valid e-mail"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>URL</label>
                                                <div>
                                                    <input parsley-type="url" type="url" class="form-control"
                                                            required placeholder="URL"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Digits</label>
                                                <div>
                                                    <input data-parsley-type="digits" type="text"
                                                            class="form-control" required
                                                            placeholder="Enter only digits"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Number</label>
                                                <div>
                                                    <input data-parsley-type="number" type="text"
                                                            class="form-control" required
                                                            placeholder="Enter only numbers"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Alphanumeric</label>
                                                <div>
                                                    <input data-parsley-type="alphanum" type="text"
                                                            class="form-control" required
                                                            placeholder="Enter alphanumeric value"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Textarea</label>
                                                <div>
                                                    <textarea required class="form-control" rows="3"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group mb-0">
                                                <div>
                                                    <button type="submit" class="btn btn-primary waves-effect waves-light mr-1">
                                                        Submit
                                                    </button>
                                                    <button type="reset" class="btn btn-secondary waves-effect waves-light">
                                                        Cancel
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Range validation</h4>
                                        <p class="sub-header">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>
    
                                        <form action="#">
    
                                            <div class="form-group">
                                                <label>Min Length</label>
                                                <div>
                                                    <input type="text" class="form-control" required
                                                            data-parsley-minlength="6" placeholder="Min 6 chars."/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Max Length</label>
                                                <div>
                                                    <input type="text" class="form-control" required
                                                            data-parsley-maxlength="6" placeholder="Max 6 chars."/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Range Length</label>
                                                <div>
                                                    <input type="text" class="form-control" required
                                                            data-parsley-length="[5,10]"
                                                            placeholder="Text between 5 - 10 chars length"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Min Value</label>
                                                <div>
                                                    <input type="text" class="form-control" required
                                                            data-parsley-min="6" placeholder="Min value is 6"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Max Value</label>
                                                <div>
                                                    <input type="text" class="form-control" required
                                                            data-parsley-max="6" placeholder="Max value is 6"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Range Value</label>
                                                <div>
                                                    <input class="form-control" required type="text" min="6"
                                                            max="100" placeholder="Number between 6 - 100"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Regular Exp</label>
                                                <div>
                                                    <input type="text" class="form-control" required
                                                            data-parsley-pattern="#[A-Fa-f0-9]{6}"
                                                            placeholder="Hex. Color"/>
                                                </div>
                                            </div>
    
                                            <div class="form-group">
                                                <div>
                                                    <button type="submit" class="btn btn-primary waves-effect waves-light mr-1">
                                                        Submit
                                                    </button>
                                                    <button type="reset" class="btn btn-secondary waves-effect waves-light">
                                                        Cancel
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
    
                                        <div class="visible-lg" style="height: 150px;"></div>
    
                                    </div>
                                </div>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Parsley Examples</h4>
                                        <p class="sub-header">
                                            Parsley is a javascript form validation library. It helps you provide your users with feedback on their form submission before sending it to your server.
                                        </p>
    
                                        <div class="alert alert-warning d-none fade show">
                                            <h4 class="text-warning mt-0">Oh snap!</h4>
                                            <p class="mb-0">This form seems to be invalid :(</p>
                                        </div>
    
                                        <div class="alert alert-info d-none fade show">
                                            <h4 class="alert-info mt-0">Yay!</h4>
                                            <p class="mb-0">Everything seems to be ok :)</p>
                                        </div>
    
                                        <form id="demo-form" data-parsley-validate="">
                                            <div class="form-group">
                                                <label for="fullname">Full Name * :</label>
                                                <input type="text" class="form-control" name="fullname" id="fullname" required="">
                                            </div>
    
                                            <div class="form-group">
                                                <label for="email">Email * :</label>
                                                <input type="email" id="email" class="form-control" name="email"
                                                        data-parsley-trigger="change" required="">
                                            </div>
    
                                            <div class="form-group">
                                                <label for="heard">Heard about us via *:</label>
                                                <select id="heard" class="form-control" required="">
                                                    <option value="">Choose..</option>
                                                    <option value="press">Press</option>
                                                    <option value="net">Internet</option>
                                                    <option value="mouth">Word of mouth</option>
                                                    <option value="other">Other..</option>
                                                </select>
                                            </div>
    
                                            <div class="form-group">
                                                <label for="message">Message (20 chars min, 100 max) :</label>
                                                <textarea id="message" class="form-control" name="message" rows="3"
                                                            data-parsley-trigger="keyup" data-parsley-minlength="20"
                                                            data-parsley-maxlength="100"
                                                            data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.."
                                                            data-parsley-validation-threshold="10"></textarea>
                                            </div>
    
                                            <div class="form-group mb-0">
                                                <input type="submit" class="btn btn-success" value="validate">
                                            </div>
    
                                        </form>
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

        <!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Plugin js-->
        <script src="/erp/resources/assets/libs/parsleyjs/parsley.min.js"></script>

        <!-- Validation init js-->
        <script src="/erp/resources/assets/js/pages/form-validation.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>