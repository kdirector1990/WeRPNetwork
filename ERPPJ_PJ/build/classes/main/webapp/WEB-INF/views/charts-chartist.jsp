<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <!-- Chartist Chart CSS -->
        <link rel="stylesheet" href="/erp/resources/assets/libs/chartist/chartist.min.css">


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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Graphs</a></li>
                                            <li class="breadcrumb-item active">Chartist Chart</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Chartist Chart</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Advanced Smil Animations</h4>
                                        <p class="sub-header text-truncate">
                                            Chartist provides a simple API to animate the elements on the Chart using
                                            SMIL. Usually you can achieve most animation with CSS3 animations but
                                            in some cases you'd like to animate SVG properties that are not available in CSS.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="smil-animations" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Simple line chart</h4>
                                        <p class="sub-header text-truncate">
                                            An example of a simple line chart with three series. You can edit this example in realtime.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="simple-line-chart" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Line Scatter Diagram</h4>
                                        <p class="sub-header text-truncate">
                                            This advanced example uses a line chart to draw a scatter diagram. The
                                            data object is created with a functional style random mechanism.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="scatter-diagram" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Line chart with tooltips</h4>
                                        <p class="sub-header text-truncate">
                                            An example of a simple line chart with two series. You can edit this
                                            example in realtime.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="line-chart-tooltips" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- end row -->


                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Line chart with area</h4>
                                        <p class="sub-header text-truncate">
                                            This chart uses the showArea option to draw line, dots but also an area
                                            shape. Use the low option to specify a fixed lower bound that will make
                                            the area expand.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="chart-with-area" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bi-polar Line chart with area only</h4>
                                        <p class="sub-header text-truncate">
                                            You can also only draw the area shapes of the line chart. Area shapes
                                            will always be constructed around their areaBase (that can be configured
                                            in the options) which also allows you to draw nice bi-polar areas.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="bi-polar-line" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- end row -->

                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">SVG Path animation</h4>
                                        <p class="sub-header text-truncate">
                                            Path animation is made easy with the SVG Path API. The API allows you to
                                            modify complex SVG paths and transform them for different animation
                                            morphing states.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="svg-animation" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Line Interpolation / Smoothing</h4>
                                        <p class="sub-header text-truncate">
                                            By default Chartist uses a cardinal spline algorithm to smooth the lines.
                                            However, like all other things in Chartist, this can be customized easily!
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="line-smoothing" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>

                        </div>
                        <!-- end row -->

                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Different configuration for different series</h4>
                                        <p class="sub-header text-truncate">
                                            By naming your series using the series object notation with a name property,
                                            you can enable the individual configuration of series specific settings.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="different-series" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">SVG Animations chart</h4>
                                        <p class="sub-header text-truncate">
                                            This advanced example uses a line chart to draw a scatter diagram.
                                            The data object is created with a functional style random mechanism.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="svg-dot-animation" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- end row -->


                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bi-polar bar chart</h4>
                                        <p class="sub-header text-truncate">
                                            A bi-polar bar chart with a range limit set with low and high. There is
                                            also an interpolation function used to skip every odd grid line / label.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="bi-polar-bar" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Overlapping bars on mobile</h4>
                                        <p class="sub-header text-truncate">
                                            This example makes use of label interpolation and the seriesBarDistance
                                            property that allows you to make bars overlap over each other.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="overlapping-bars" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- end row -->


                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Multi-line labels</h4>
                                        <p class="sub-header text-truncate">
                                            Chartist will figure out if your browser supports foreignObject and it
                                            will use them to create labels that are based on regular HTML text elements.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="multi-line-chart" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Stacked bar chart</h4>
                                        <p class="sub-header text-truncate">
                                            You can also set your bar chart to stack the series bars on top of each
                                            other easily by using the stackBars property in your configuration.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="stacked-bar-chart" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- end row -->


                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Horizontal bar chart</h4>
                                        <p class="sub-header text-truncate">
                                            Guess what! Creating horizontal bar charts is as simple as it can get.
                                            There's no new chart type you need to learn, just passing an additional option is enough.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="horizontal-bar-chart" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Extreme responsive configuration</h4>
                                        <p class="sub-header text-truncate">
                                            As all settings of a chart can be customized with the responsive configuration
                                            override mechanism of Chartist, you can create a chart that adopts to every media condition!
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="extreme-chart" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- end row -->

                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Distributed series</h4>
                                        <p class="sub-header text-truncate">
                                            Sometime it's desired to have bar charts that show one bar per series
                                            distributed along the x-axis. If this option is enabled, you need to
                                            make sure that you pass a single series array to Chartist that contains the series values.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="distributed-series" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Label placement</h4>
                                        <p class="sub-header text-truncate">
                                            You can change the position of the labels on line and bar charts easily
                                            by using the position option inside of the axis configuration.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="label-placement-chart" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>

                        </div>
                        <!-- end row -->


                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Animating a Donut with Svg.animate</h4>
                                        <p class="sub-header text-truncate">
                                            Although it'd be also possible to achieve this animation with CSS, with
                                            some minor suboptimal things, here's an example of how to animate donut
                                            charts using Chartist.Svg.animate and SMIL.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="animating-donut" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Simple pie chart</h4>
                                        <p class="sub-header text-truncate">
                                            A very simple pie chart with label interpolation to show percentage instead
                                            of the actual data series value.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="simple-pie" class="ct-chart ct-golden-section simple-pie-chart-chartist"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- end row -->


                        <div class="row">

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Pie chart with custom labels</h4>
                                        <p class="sub-header text-truncate">
                                            This pie chart is configured with custom labels specified in the data object.
                                            On desktop we use the labelOffset property to offset the labels from the center.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="pie-chart" class="ct-chart ct-golden-section"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Gauge chart</h4>
                                        <p class="sub-header text-truncate">
                                            This pie chart uses donut, startAngle and total to draw a gauge chart.
                                        </p>
    
                                        <div dir="ltr">
                                            <div id="gauge-chart" class="ct-chart ct-golden-section"></div>
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

        <!--Chartist Chart-->
        <script src="/erp/resources/assets/libs/chartist/chartist.min.js"></script>
        <script src="/erp/resources/assets/libs/chartist/chartist-plugin-tooltip.min.js"></script>

        <!-- Init js -->
        <script src="/erp/resources/assets/js/pages/chartist.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>