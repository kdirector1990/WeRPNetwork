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
                                            <li class="breadcrumb-item active">Form Wizard</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form Wizard</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
                        <!-- Basic Form Wizard -->
                        <div class="row">
                            <div class="col-md-12">
                            	<div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Basic Form Wizard</h4>
                                        <p class="sub-header">
                                            Use the button classes on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.
                                        </p>
    
                                        <form id="basic-form" action="#">
                                            <div>
                                                <h3>Account</h3>
                                                <section>
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="userName">User name *</label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control required" id="userName" name="userName" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="password"> Password *</label>
                                                        <div class="col-lg-10">
                                                            <input id="password" name="password" type="text" class="required form-control">
    
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="confirm">Confirm Password *</label>
                                                        <div class="col-lg-10">
                                                            <input id="confirm" name="confirm" type="text" class="required form-control">
                                                        </div>
                                                    </div>
    
                                                </section>
                                                <h3>Profile</h3>
                                                <section>
                                                    <div class="form-group row">
    
                                                        <label class="col-lg-2 control-label" for="name"> First name *</label>
                                                        <div class="col-lg-10">
                                                            <input id="name" name="name" type="text" class="required form-control">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="surname"> Last name *</label>
                                                        <div class="col-lg-10">
                                                            <input id="surname" name="surname" type="text" class="required form-control">
    
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="email">Email *</label>
                                                        <div class="col-lg-10">
                                                            <input id="email" name="email" type="text" class="required email form-control">
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="address">Address *</label>
                                                        <div class="col-lg-10">
                                                            <input id="address" name="address" type="text" class="form-control">
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-12 control-label ">(*) Mandatory</label>
                                                    </div>
    
                                                </section>
                                                <h3>Hints</h3>
                                                <section>
                                                    <div class="form-group row">
                                                        <div class="col-lg-12">
                                                            <ul class="list-unstyled w-list">
                                                                <li><b>First Name :</b> Jonathan </li>
                                                                <li><b>Last Name :</b> Smith </li>
                                                                <li><b>Emial:</b> jonathan@smith.com</li>
                                                                <li><b>Address:</b> 123 Your City, Cityname. </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </section>
                                                <h3>Finish</h3>
                                                <section>
                                                    <div class="form-group row">
                                                        <div class="col-lg-12">

                                                            <div class="custom-control custom-checkbox">
                                                                <input type="checkbox" class="custom-control-input" id="acceptTerms1">
                                                                <label class="custom-control-label" for="acceptTerms1">I agree with the Terms and Conditions.</label>
                                                              </div>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                        </form>
    
                                    </div>
                                </div>
                        	</div>
                    	</div>
                        <!-- End row -->

                        <!-- Vertical Steps Example -->
                        <div class="row">
							<div class="col-sm-12">
								<div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Vertical Steps Example</h4>
                                        <p class="sub-header">
                                            Use the button classes on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.
                                        </p>
    
                                        <form id="wizard-vertical">
                                            <h3>Account</h3>
                                            <section>
                                                <div class="form-group row">
                                                    <label class="col-lg-2 control-label " for="userName1">User name *</label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control required" id="userName1" name="userName" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-lg-2 control-label " for="password1"> Password *</label>
                                                    <div class="col-lg-10">
                                                        <input id="password1" name="password" type="text" class="required form-control">
                                                    </div>
                                                </div>
    
                                                <div class="form-group row">
                                                    <label class="col-lg-2 control-label " for="confirm1">Confirm Password *</label>
                                                    <div class="col-lg-10">
                                                        <input id="confirm1" name="confirm" type="text" class="required form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-lg-12 control-label ">(*) Mandatory</label>
                                                </div>
                                            </section>
                                            <h3>Profile</h3>
                                            <section>
                                                <div class="form-group row">
    
                                                    <label class="col-lg-2 control-label" for="name1"> First name *</label>
                                                    <div class="col-lg-10">
                                                        <input id="name1" name="name" type="text" class="required form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="col-lg-2 control-label " for="surname1"> Last name *</label>
                                                    <div class="col-lg-10">
                                                        <input id="surname1" name="surname" type="text" class="required form-control">
    
                                                    </div>
                                                </div>
    
                                                <div class="form-group row">
                                                    <label class="col-lg-2 control-label " for="email1">Email *</label>
                                                    <div class="col-lg-10">
                                                        <input id="email1" name="email" type="text" class="required email form-control">
                                                    </div>
                                                </div>
    
                                                <div class="form-group row">
                                                    <label class="col-lg-2 control-label " for="address1">Address *</label>
                                                    <div class="col-lg-10">
                                                        <input id="address1" name="address" type="text" class="form-control">
                                                    </div>
                                                </div>
    
                                                <div class="form-group row">
                                                    <label class="col-lg-12 control-label ">(*) Mandatory</label>
                                                </div>
    
                                            </section>
                                            <h3>Hints</h3>
                                            <section>
                                                <div class="form-group row">
                                                    <div class="col-lg-12">
                                                        <ul class="list-unstyled w-list">
                                                            <li><b>First Name :</b> Jonathan </li>
                                                            <li><b>Last Name :</b> Smith </li>
                                                            <li><b>Emial:</b> jonathan@smith.com</li>
                                                            <li><b>Address:</b> 123 Your City, Cityname. </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </section>
                                            <h3>Finish</h3>
                                            <section>
                                                <div class="form-group row">
                                                    <div class="col-lg-12">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="acceptTerms2">
                                                            <label class="custom-control-label" for="acceptTerms2">I agree with the Terms and Conditions.</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                        </form>
                                        <!-- End #wizard-vertical -->
                                    </div>
                                </div>
							</div>
						</div><!-- End row -->


                        <!-- Wizard with Validation -->

                        <div class="row">
							<div class="col-sm-12">
								<div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Wizard with Validation</h4>
                                        <p class="sub-header">
                                            Use the button classes on an <code>&lt;a&gt;</code>, <code>&lt;button&gt;</code>, or <code>&lt;input&gt;</code> element.
                                        </p>
    
                                        <form id="wizard-validation-form" action="#">
                                            <div>
                                                <h3>Step 1</h3>
                                                <section>
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="userName2">User name </label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="userName2" name="userName" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="password2"> Password *</label>
                                                        <div class="col-lg-10">
                                                            <input id="password2" name="password" type="text" class="required form-control">
    
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="confirm2">Confirm Password *</label>
                                                        <div class="col-lg-10">
                                                            <input id="confirm2" name="confirm" type="text" class="required form-control">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-lg-12 control-label ">(*) Mandatory</label>
                                                    </div>
                                                </section>
                                                <h3>Step 2</h3>
                                                <section>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label" for="name2"> First name *</label>
                                                        <div class="col-lg-10">
                                                            <input id="name2" name="name" type="text" class="required form-control">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="surname2"> Last name *</label>
                                                        <div class="col-lg-10">
                                                            <input id="surname2" name="surname" type="text" class="required form-control">
    
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="email2">Email *</label>
                                                        <div class="col-lg-10">
                                                            <input id="email2" name="email" type="text" class="required email form-control">
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-2 control-label " for="address2">Address </label>
                                                        <div class="col-lg-10">
                                                            <input id="address2" name="address" type="text" class="form-control">
                                                        </div>
                                                    </div>
    
                                                    <div class="form-group row">
                                                        <label class="col-lg-12 control-label ">(*) Mandatory</label>
                                                    </div>
    
                                                </section>
                                                <h3>Step 3</h3>
                                                <section>
                                                    <div class="form-group row">
                                                        <div class="col-lg-12">
                                                            <ul class="list-unstyled w-list">
                                                                <li><b>First Name :</b> Jonathan </li>
                                                                <li><b>Last Name :</b> Smith </li>
                                                                <li><b>Emial:</b> jonathan@smith.com</li>
                                                                <li><b>Address:</b> 123 Your City, Cityname. </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </section>
                                                <h3>Step Final</h3>
                                                <section>
                                                    <div class="form-group row">
                                                        <div class="col-lg-12">
                                                            <div class="custom-control custom-checkbox">
                                                                <input type="checkbox" class="custom-control-input" id="acceptTerms3">
                                                                <label class="custom-control-label" for="acceptTerms3">I agree with the Terms and Conditions.</label>
                                                            </div>
                                                        </div>
                                                    </div>
    
                                                </section>
                                            </div>
                                        </form>
                                    </div>
                                </div>
							</div>
						</div>
                        <!-- End row -->
                        
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

        <!--Form Wizard-->
        <script src="/erp/resources/assets/libs/jquery-steps/jquery.steps.min.js"></script>

        <script src="/erp/resources/assets/libs/jquery-validation/jquery.validate.min.js"></script>

        <!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-wizard.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>