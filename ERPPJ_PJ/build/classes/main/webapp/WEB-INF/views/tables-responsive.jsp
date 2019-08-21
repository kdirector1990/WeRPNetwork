<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <!-- Responsive Table css -->
        <link href="/erp/resources/assets/libs/rwd-table/rwd-table.min.css" rel="stylesheet" type="text/css" />
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Responsive Table</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Responsive Table</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="responsive-table-plugin">
                                            <div class="table-rep-plugin">
                                                <div class="table-responsive" data-pattern="priority-columns">
                                                    <table id="tech-companies-1" class="table table-striped">
                                                        <thead>
                                                        <tr>
                                                            <th>Company</th>
                                                            <th data-priority="1">Last Trade</th>
                                                            <th data-priority="3">Trade Time</th>
                                                            <th data-priority="1">Change</th>
                                                            <th data-priority="3">Prev Close</th>
                                                            <th data-priority="3">Open</th>
                                                            <th data-priority="6">Bid</th>
                                                            <th data-priority="6">Ask</th>
                                                            <th data-priority="6">1y Target Est</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <th>GOOG <span class="co-name">Google Inc.</span></th>
                                                            <td>597.74</td>
                                                            <td>12:12PM</td>
                                                            <td>14.81 (2.54%)</td>
                                                            <td>582.93</td>
                                                            <td>597.95</td>
                                                            <td>597.73 x 100</td>
                                                            <td>597.91 x 300</td>
                                                            <td>731.10</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AAPL <span class="co-name">Apple Inc.</span></th>
                                                            <td>378.94</td>
                                                            <td>12:22PM</td>
                                                            <td>5.74 (1.54%)</td>
                                                            <td>373.20</td>
                                                            <td>381.02</td>
                                                            <td>378.92 x 300</td>
                                                            <td>378.99 x 100</td>
                                                            <td>505.94</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AMZN <span class="co-name">Amazon.com Inc.</span></th>
                                                            <td>191.55</td>
                                                            <td>12:23PM</td>
                                                            <td>3.16 (1.68%)</td>
                                                            <td>188.39</td>
                                                            <td>194.99</td>
                                                            <td>191.52 x 300</td>
                                                            <td>191.58 x 100</td>
                                                            <td>240.32</td>
                                                        </tr>
                                                        <tr>
                                                            <th>ORCL <span class="co-name">Oracle Corporation</span></th>
                                                            <td>31.15</td>
                                                            <td>12:44PM</td>
                                                            <td>1.41 (4.72%)</td>
                                                            <td>29.74</td>
                                                            <td>30.67</td>
                                                            <td>31.14 x 6500</td>
                                                            <td>31.15 x 3200</td>
                                                            <td>36.11</td>
                                                        </tr>
                                                        <tr>
                                                            <th>MSFT <span class="co-name">Microsoft Corporation</span></th>
                                                            <td>25.50</td>
                                                            <td>12:27PM</td>
                                                            <td>0.66 (2.67%)</td>
                                                            <td>24.84</td>
                                                            <td>25.37</td>
                                                            <td>25.50 x 71100</td>
                                                            <td>25.51 x 17800</td>
                                                            <td>31.50</td>
                                                        </tr>
                                                        <tr>
                                                            <th>CSCO <span class="co-name">Cisco Systems, Inc.</span></th>
                                                            <td>18.65</td>
                                                            <td>12:45PM</td>
                                                            <td>0.97 (5.49%)</td>
                                                            <td>17.68</td>
                                                            <td>18.23</td>
                                                            <td>18.65 x 10300</td>
                                                            <td>18.66 x 24000</td>
                                                            <td>21.12</td>
                                                        </tr>
                                                        <tr>
                                                            <th>YHOO <span class="co-name">Yahoo! Inc.</span></th>
                                                            <td>15.81</td>
                                                            <td>12:25PM</td>
                                                            <td>0.11 (0.67%)</td>
                                                            <td>15.70</td>
                                                            <td>15.94</td>
                                                            <td>15.79 x 6100</td>
                                                            <td>15.80 x 17000</td>
                                                            <td>18.16</td>
                                                        </tr>
                                                        <!-- Repeat -->
                                                        <tr>
                                                            <th>GOOG <span class="co-name">Google Inc.</span></th>
                                                            <td>597.74</td>
                                                            <td>12:12PM</td>
                                                            <td>14.81 (2.54%)</td>
                                                            <td>582.93</td>
                                                            <td>597.95</td>
                                                            <td>597.73 x 100</td>
                                                            <td>597.91 x 300</td>
                                                            <td>731.10</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AAPL <span class="co-name">Apple Inc.</span></th>
                                                            <td>378.94</td>
                                                            <td>12:22PM</td>
                                                            <td>5.74 (1.54%)</td>
                                                            <td>373.20</td>
                                                            <td>381.02</td>
                                                            <td>378.92 x 300</td>
                                                            <td>378.99 x 100</td>
                                                            <td>505.94</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AMZN <span class="co-name">Amazon.com Inc.</span></th>
                                                            <td>191.55</td>
                                                            <td>12:23PM</td>
                                                            <td>3.16 (1.68%)</td>
                                                            <td>188.39</td>
                                                            <td>194.99</td>
                                                            <td>191.52 x 300</td>
                                                            <td>191.58 x 100</td>
                                                            <td>240.32</td>
                                                        </tr>
                                                        <tr>
                                                            <th>ORCL <span class="co-name">Oracle Corporation</span></th>
                                                            <td>31.15</td>
                                                            <td>12:44PM</td>
                                                            <td>1.41 (4.72%)</td>
                                                            <td>29.74</td>
                                                            <td>30.67</td>
                                                            <td>31.14 x 6500</td>
                                                            <td>31.15 x 3200</td>
                                                            <td>36.11</td>
                                                        </tr>
                                                        <tr>
                                                            <th>MSFT <span class="co-name">Microsoft Corporation</span></th>
                                                            <td>25.50</td>
                                                            <td>12:27PM</td>
                                                            <td>0.66 (2.67%)</td>
                                                            <td>24.84</td>
                                                            <td>25.37</td>
                                                            <td>25.50 x 71100</td>
                                                            <td>25.51 x 17800</td>
                                                            <td>31.50</td>
                                                        </tr>
                                                        <tr>
                                                            <th>CSCO <span class="co-name">Cisco Systems, Inc.</span></th>
                                                            <td>18.65</td>
                                                            <td>12:45PM</td>
                                                            <td>0.97 (5.49%)</td>
                                                            <td>17.68</td>
                                                            <td>18.23</td>
                                                            <td>18.65 x 10300</td>
                                                            <td>18.66 x 24000</td>
                                                            <td>21.12</td>
                                                        </tr>
                                                        <tr>
                                                            <th>YHOO <span class="co-name">Yahoo! Inc.</span></th>
                                                            <td>15.81</td>
                                                            <td>12:25PM</td>
                                                            <td>0.11 (0.67%)</td>
                                                            <td>15.70</td>
                                                            <td>15.94</td>
                                                            <td>15.79 x 6100</td>
                                                            <td>15.80 x 17000</td>
                                                            <td>18.16</td>
                                                        </tr>
                                                        <!-- Repeat -->
                                                        <tr>
                                                            <th>GOOG <span class="co-name">Google Inc.</span></th>
                                                            <td>597.74</td>
                                                            <td>12:12PM</td>
                                                            <td>14.81 (2.54%)</td>
                                                            <td>582.93</td>
                                                            <td>597.95</td>
                                                            <td>597.73 x 100</td>
                                                            <td>597.91 x 300</td>
                                                            <td>731.10</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AAPL <span class="co-name">Apple Inc.</span></th>
                                                            <td>378.94</td>
                                                            <td>12:22PM</td>
                                                            <td>5.74 (1.54%)</td>
                                                            <td>373.20</td>
                                                            <td>381.02</td>
                                                            <td>378.92 x 300</td>
                                                            <td>378.99 x 100</td>
                                                            <td>505.94</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AMZN <span class="co-name">Amazon.com Inc.</span></th>
                                                            <td>191.55</td>
                                                            <td>12:23PM</td>
                                                            <td>3.16 (1.68%)</td>
                                                            <td>188.39</td>
                                                            <td>194.99</td>
                                                            <td>191.52 x 300</td>
                                                            <td>191.58 x 100</td>
                                                            <td>240.32</td>
                                                        </tr>
                                                        <tr>
                                                            <th>ORCL <span class="co-name">Oracle Corporation</span></th>
                                                            <td>31.15</td>
                                                            <td>12:44PM</td>
                                                            <td>1.41 (4.72%)</td>
                                                            <td>29.74</td>
                                                            <td>30.67</td>
                                                            <td>31.14 x 6500</td>
                                                            <td>31.15 x 3200</td>
                                                            <td>36.11</td>
                                                        </tr>
                                                        <tr>
                                                            <th>MSFT <span class="co-name">Microsoft Corporation</span></th>
                                                            <td>25.50</td>
                                                            <td>12:27PM</td>
                                                            <td>0.66 (2.67%)</td>
                                                            <td>24.84</td>
                                                            <td>25.37</td>
                                                            <td>25.50 x 71100</td>
                                                            <td>25.51 x 17800</td>
                                                            <td>31.50</td>
                                                        </tr>
                                                        <tr>
                                                            <th>CSCO <span class="co-name">Cisco Systems, Inc.</span></th>
                                                            <td>18.65</td>
                                                            <td>12:45PM</td>
                                                            <td>0.97 (5.49%)</td>
                                                            <td>17.68</td>
                                                            <td>18.23</td>
                                                            <td>18.65 x 10300</td>
                                                            <td>18.66 x 24000</td>
                                                            <td>21.12</td>
                                                        </tr>
                                                        <tr>
                                                            <th>YHOO <span class="co-name">Yahoo! Inc.</span></th>
                                                            <td>15.81</td>
                                                            <td>12:25PM</td>
                                                            <td>0.11 (0.67%)</td>
                                                            <td>15.70</td>
                                                            <td>15.94</td>
                                                            <td>15.79 x 6100</td>
                                                            <td>15.80 x 17000</td>
                                                            <td>18.16</td>
                                                        </tr>
                                                        <!-- Repeat -->
                                                        <tr>
                                                            <th>GOOG <span class="co-name">Google Inc.</span></th>
                                                            <td>597.74</td>
                                                            <td>12:12PM</td>
                                                            <td>14.81 (2.54%)</td>
                                                            <td>582.93</td>
                                                            <td>597.95</td>
                                                            <td>597.73 x 100</td>
                                                            <td>597.91 x 300</td>
                                                            <td>731.10</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AAPL <span class="co-name">Apple Inc.</span></th>
                                                            <td>378.94</td>
                                                            <td>12:22PM</td>
                                                            <td>5.74 (1.54%)</td>
                                                            <td>373.20</td>
                                                            <td>381.02</td>
                                                            <td>378.92 x 300</td>
                                                            <td>378.99 x 100</td>
                                                            <td>505.94</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AMZN <span class="co-name">Amazon.com Inc.</span></th>
                                                            <td>191.55</td>
                                                            <td>12:23PM</td>
                                                            <td>3.16 (1.68%)</td>
                                                            <td>188.39</td>
                                                            <td>194.99</td>
                                                            <td>191.52 x 300</td>
                                                            <td>191.58 x 100</td>
                                                            <td>240.32</td>
                                                        </tr>
                                                        <tr>
                                                            <th>ORCL <span class="co-name">Oracle Corporation</span></th>
                                                            <td>31.15</td>
                                                            <td>12:44PM</td>
                                                            <td>1.41 (4.72%)</td>
                                                            <td>29.74</td>
                                                            <td>30.67</td>
                                                            <td>31.14 x 6500</td>
                                                            <td>31.15 x 3200</td>
                                                            <td>36.11</td>
                                                        </tr>
                                                        <tr>
                                                            <th>MSFT <span class="co-name">Microsoft Corporation</span></th>
                                                            <td>25.50</td>
                                                            <td>12:27PM</td>
                                                            <td>0.66 (2.67%)</td>
                                                            <td>24.84</td>
                                                            <td>25.37</td>
                                                            <td>25.50 x 71100</td>
                                                            <td>25.51 x 17800</td>
                                                            <td>31.50</td>
                                                        </tr>
                                                        <tr>
                                                            <th>CSCO <span class="co-name">Cisco Systems, Inc.</span></th>
                                                            <td>18.65</td>
                                                            <td>12:45PM</td>
                                                            <td>0.97 (5.49%)</td>
                                                            <td>17.68</td>
                                                            <td>18.23</td>
                                                            <td>18.65 x 10300</td>
                                                            <td>18.66 x 24000</td>
                                                            <td>21.12</td>
                                                        </tr>
                                                        <tr>
                                                            <th>YHOO <span class="co-name">Yahoo! Inc.</span></th>
                                                            <td>15.81</td>
                                                            <td>12:25PM</td>
                                                            <td>0.11 (0.67%)</td>
                                                            <td>15.70</td>
                                                            <td>15.94</td>
                                                            <td>15.79 x 6100</td>
                                                            <td>15.80 x 17000</td>
                                                            <td>18.16</td>
                                                        </tr>
                                                        <!-- Repeat -->
                                                        <tr>
                                                            <th>GOOG <span class="co-name">Google Inc.</span></th>
                                                            <td>597.74</td>
                                                            <td>12:12PM</td>
                                                            <td>14.81 (2.54%)</td>
                                                            <td>582.93</td>
                                                            <td>597.95</td>
                                                            <td>597.73 x 100</td>
                                                            <td>597.91 x 300</td>
                                                            <td>731.10</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AAPL <span class="co-name">Apple Inc.</span></th>
                                                            <td>378.94</td>
                                                            <td>12:22PM</td>
                                                            <td>5.74 (1.54%)</td>
                                                            <td>373.20</td>
                                                            <td>381.02</td>
                                                            <td>378.92 x 300</td>
                                                            <td>378.99 x 100</td>
                                                            <td>505.94</td>
                                                        </tr>
                                                        <tr>
                                                            <th>AMZN <span class="co-name">Amazon.com Inc.</span></th>
                                                            <td>191.55</td>
                                                            <td>12:23PM</td>
                                                            <td>3.16 (1.68%)</td>
                                                            <td>188.39</td>
                                                            <td>194.99</td>
                                                            <td>191.52 x 300</td>
                                                            <td>191.58 x 100</td>
                                                            <td>240.32</td>
                                                        </tr>
                                                        <tr>
                                                            <th>ORCL <span class="co-name">Oracle Corporation</span></th>
                                                            <td>31.15</td>
                                                            <td>12:44PM</td>
                                                            <td>1.41 (4.72%)</td>
                                                            <td>29.74</td>
                                                            <td>30.67</td>
                                                            <td>31.14 x 6500</td>
                                                            <td>31.15 x 3200</td>
                                                            <td>36.11</td>
                                                        </tr>
                                                        <tr>
                                                            <th>MSFT <span class="co-name">Microsoft Corporation</span></th>
                                                            <td>25.50</td>
                                                            <td>12:27PM</td>
                                                            <td>0.66 (2.67%)</td>
                                                            <td>24.84</td>
                                                            <td>25.37</td>
                                                            <td>25.50 x 71100</td>
                                                            <td>25.51 x 17800</td>
                                                            <td>31.50</td>
                                                        </tr>
                                                        <tr>
                                                            <th>CSCO <span class="co-name">Cisco Systems, Inc.</span></th>
                                                            <td>18.65</td>
                                                            <td>12:45PM</td>
                                                            <td>0.97 (5.49%)</td>
                                                            <td>17.68</td>
                                                            <td>18.23</td>
                                                            <td>18.65 x 10300</td>
                                                            <td>18.66 x 24000</td>
                                                            <td>21.12</td>
                                                        </tr>
                                                        <tr>
                                                            <th>YHOO <span class="co-name">Yahoo! Inc.</span></th>
                                                            <td>15.81</td>
                                                            <td>12:25PM</td>
                                                            <td>0.11 (0.67%)</td>
                                                            <td>15.70</td>
                                                            <td>15.94</td>
                                                            <td>15.79 x 6100</td>
                                                            <td>15.80 x 17000</td>
                                                            <td>18.16</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div> <!-- end .table-responsive -->
        
                                            </div> <!-- end .table-rep-plugin-->
                                        </div> <!-- end .responsive-table-plugin-->
                                    </div>
                                </div> <!-- end card -->
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

        <!-- Responsive Table js -->
        <script src="/erp/resources/assets/libs/rwd-table/rwd-table.min.js"></script>

        <!-- Init js -->
        <script src="/erp/resources/assets/js/pages/responsive-table.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>