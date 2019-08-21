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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Extras</a></li>
                                            <li class="breadcrumb-item active">Invoice</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Invoice</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="clearfix">
                                            <div class="float-left">
                                                <img src="assets/images/logo-dark.png" alt="" height="26">
                                            </div>
                                            <div class="float-right">
                                                <h3 class="m-0">Invoice</h3>
                                            </div>
                                        </div>
    
    
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="float-left mt-3">
                                                    <p><b>Hello, Stanley Jones</b></p>
                                                    <p class="text-muted">Thanks a lot because you keep purchasing our products. Our company
                                                        promises to provide high quality products for you as well as outstanding
                                                        customer service for every transaction. </p>
                                                </div>
    
                                            </div><!-- end col -->
                                            <div class="col-md-6">
                                                <div class="mt-3 text-md-right">
                                                    <p><small><strong>Order Date: </strong></small> Jan 17, 2016</p>
                                                    <p><small><strong>Order Status: </strong></small> <span class="badge badge-success">Paid</span></p>
                                                    <p><small><strong>Order ID: </strong></small> #123456</p>
                                                </div>
                                            </div><!-- end col -->
                                        </div>
                                        <!-- end row -->
    
                                        <div class="row mt-3">
                                            <div class="col-md-6">
                                                <h5>Billing Address</h5>
    
                                                <address class="line-h-24">
                                                    Stanley Jones<br>
                                                    795 Folsom Ave, Suite 600<br>
                                                    San Francisco, CA 94107<br>
                                                    <abbr title="Phone">P:</abbr> (123) 456-7890
                                                </address>
    
                                            </div>
    
                                            <div class="col-md-6">
                                                <div class="text-md-right">
                                                    <h5>Shipping Address</h5>

                                                    <address>
                                                        Stanley Jones<br>
                                                        795 Folsom Ave, Suite 600<br>
                                                        San Francisco, CA 94107<br>
                                                        <abbr title="Phone">P:</abbr> (123) 456-7890
                                                    </address>
                                                </div>
    
                                            </div>
                                        </div>
    
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="table-responsive">
                                                    <table class="table table-centered mt-3">
                                                        <thead>
                                                            <tr><th>#</th>
                                                            <th>Item</th>
                                                            <th>Quantity</th>
                                                            <th>Unit Cost</th>
                                                            <th class="text-right">Total</th>
                                                        </tr></thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>
                                                                    <b>Laptop</b> <br/>
                                                                    Brand Model VGN-TXN27N/B
                                                                    11.1" Notebook PC
                                                                </td>
                                                                <td>1</td>
                                                                <td>$1799</td>
                                                                <td class="text-right">$1799</td>
                                                            </tr>
                                                            <tr>
                                                                <td>2</td>
                                                                <td>
                                                                    <b>Warranty</b> <br/>
                                                                    Two Year Extended Warranty -
                                                                    Parts and Labor
                                                                </td>
                                                                <td>3</td>
                                                                <td>$499</td>
                                                                <td class="text-right">$1497</td>
                                                            </tr>
                                                            <tr>
                                                                <td>3</td>
                                                                <td>
                                                                    <b>LED</b> <br/>
                                                                    80cm (32) HD Ready LED TV
                                                                </td>
                                                                <td>2</td>
                                                                <td>$412</td>
                                                                <td class="text-right">$824</td>
                                                            </tr>
    
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="clearfix pt-3">
                                                    <h5 class="text-muted">Notes:</h5>
    
                                                    <small>
                                                        All accounts are to be paid within 7 days from receipt of
                                                        invoice. To be paid by cheque or credit card or direct payment
                                                        online. If account is not paid within 7 days the credits details
                                                        supplied as confirmation of work undertaken will be charged the
                                                        agreed quoted fee noted above.
                                                    </small>
                                                </div>
    
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="float-right pt-3">
                                                    <p><b>Sub-total:</b> $4120.00</p>
                                                    <p><b>VAT (12.5):</b> $515</p>
                                                    <h3>$4635.00 USD</h3>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
    
                                        <div class="d-print-none mt-4">
                                            <div class="text-right">
                                                <a href="javascript:window.print()" class="btn btn-primary waves-effect waves-light"><i class="fa fa-print mr-1"></i> Print</a>
                                                <a href="#" class="btn btn-info waves-effect waves-light">Submit</a>
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