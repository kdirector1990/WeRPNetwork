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
                                            <li class="breadcrumb-item active">Form Masks</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form Masks</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Input Masks</h4>
                                        <p class="sub-header">
                                            A jQuery Plugin to make masks on form fields and HTML elements.
                                        </p>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <form action="#">
                                                    <div class="form-group">
                                                        <label>Date</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="00/00/0000">
                                                        <span class="font-13 text-muted">e.g "DD/MM/YYYY"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Hour</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="00:00:00">
                                                        <span class="font-13 text-muted">e.g "HH:MM:SS"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Date & Hour</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="00/00/0000 00:00:00">
                                                        <span class="font-13 text-muted">e.g "DD/MM/YYYY HH:MM:SS"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>ZIP Code</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="00000-000">
                                                        <span class="font-13 text-muted">e.g "xxxxx-xxx"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Crazy Zip Code</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="0-00-00-00">
                                                        <span class="font-13 text-muted">e.g "x-xx-xx-xx"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Money</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="000.000.000.000.000,00" data-reverse="true">
                                                        <span class="font-13 text-muted">e.g "Your money"</span>
                                                    </div>
                                                    <div class="form-group mb-0">
                                                        <label>Money 2</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="#.##0,00" data-reverse="true">
                                                        <span class="font-13 text-muted">e.g "#.##0,00"</span>
                                                    </div>
            
                                                </form>
                                            </div> <!-- end col -->

                                            <div class="col-md-6">
                                                <form action="#" class="mt-4 mt-lg-0">
                                                    <div class="form-group">
                                                        <label>Telephone</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="0000-0000">
                                                        <span class="font-13 text-muted">e.g "xxxx-xxxx"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Telephone with Code Area</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="(00) 0000-0000">
                                                        <span class="font-13 text-muted">e.g "(xx) xxxx-xxxx"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>US Telephone</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="(000) 000-0000">
                                                        <span class="font-13 text-muted">e.g "(xxx) xxx-xxxx"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>São Paulo Celphones</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="(00) 00000-0000">
                                                        <span class="font-13 text-muted">e.g "(xx) xxxxx-xxxx"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>CPF</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="000.000.000-00" data-reverse="true">
                                                        <span class="font-13 text-muted">e.g "xxx.xxx.xxxx-xx"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>CNPJ</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="00.000.000/0000-00" data-reverse="true">
                                                        <span class="font-13 text-muted">e.g "xx.xxx.xxx/xxxx-xx"</span>
                                                    </div>
                                                    <div class="form-group mb-0">
                                                        <label>IP Address</label>
                                                        <input type="text" class="form-control" data-toggle="input-mask" data-mask-format="099.099.099.099" data-reverse="true">
                                                        <span class="font-13 text-muted">e.g "xxx.xxx.xxx.xxx"</span>
                                                    </div>
            
                                                </form>
                                            </div> <!-- end col -->
                                        </div>
                                        <!-- end row -->

                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
                            </div> <!-- end col -->
                        </div> <!-- end row --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Auto Numberic</h4>
                                        <p class="sub-header">
                                            A jQuery Plugin to make masks on form fields and HTML elements.
                                        </p>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <form action="#">
                                                    <div class="form-group">
                                                        <label>Default</label>
                                                        <input type="text" placeholder="" class="form-control autonumber" data-a-sep="." data-a-dec=",">
                                                        <span class="font-13 text-muted">e.g. "1.234.567.890.123"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Auto Numeric ($)</label>
                                                        <input type="text" placeholder="" data-a-sign="$ " class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "$ $ 1,234,567,890,123"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Auto Numeric (€)</label>
                                                        <input type="text" placeholder="" data-a-sign="€ " class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "€ 1,234,567,890,123"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Auto Numeric (Rs.)</label>
                                                        <input type="text" placeholder="" data-a-sign="Rs. " class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "Rs. 1,234,567,890,123"</span>
                                                    </div>
                                                    <div class="form-group mb-0">
                                                        <label>4 digit Group (¥)</label>
                                                        <input type="text" placeholder="" data-d-group="4" data-a-sign="¥ " class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "¥ 1,2345,6789,0123"</span>
                                                    </div>

                                                </form>            
                                            </div> <!-- end col -->

                                            <div class="col-md-6">
                                                <form action="#" class="mt-4 mt-md-0">
                                                    <div class="form-group">
                                                        <label>Auto Numeric (£)</label>
                                                        <input type="text" placeholder="" data-a-sign="£ " class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "£ 1,234,567,890,123"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Auto Numeric (%)</label>
                                                        <input type="text" placeholder="" data-a-sign="%" data-p-sign="s" class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "11%"</span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Maximum Value (0 - 9999)</label>
                                                        <input type="text" placeholder="" data-v-max="9999" data-v-min="0" class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "9,999"</span>
                                                    </div>

                                                    <div class="form-group">
                                                        <label>Range Value (-99.99 - 1000.00)</label>
                                                        <input type="text" placeholder="" data-v-min="-99.99" data-v-max="1000.00" class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "1000 Or -99.99"</span>
                                                    </div>

                                                    <div class="form-group mb-0">
                                                        <label>Bracket Value</label>
                                                        <input type="text" placeholder="" data-a-sep="." data-a-dec="," data-v-min="-9999.99" data-v-max="0.00" data-n-bracket="(,)" class="form-control autonumber">
                                                        <span class="font-13 text-muted">e.g. "(9,999.00)"</span>
                                                    </div>

                                                </form>        
                                            </div> <!-- end col -->
                                        </div>
                                        <!-- end row -->

                                    </div> <!-- end card-body -->
                                </div> <!-- end card -->
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

        <!-- Plugins js -->
        <script src="/erp/resources/assets/libs/jquery-mask-plugin/jquery.mask.min.js"></script>
        <script src="/erp/resources/assets/libs/autonumeric/autoNumeric-min.js"></script>

        <!-- Init js-->
        <script src="/erp/resources/assets/js/pages/form-masks.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>