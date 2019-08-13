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
                                            <li class="breadcrumb-item active">Typography</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Typography</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div>
                                            <h4 class="header-title">Headings</h4>
                                            <p class="sub-header">
                                                All HTML headings, <code>&lt;h1&gt;</code> through
                                                <code>&lt;h6&gt;</code>, are available. <code>.h1</code> through <code>.h6</code>
                                                classes are also available, for when you want to match the font styling of a heading
                                                but still want your text to be displayed inline.
                                            </p>

                                            <h1>This is a Heading 1</h1>
                                            <p class="text-muted">Suspendisse vel quam malesuada, aliquet sem sit
                                                amet, fringilla elit. Morbi
                                                tempor tincidunt tempor. Etiam id turpis viverra, vulputate sapien
                                                nec, varius sem at velit.</p>

                                            <div class="clearfix"></div>

                                            <h2>This is a Heading 2</h2>
                                            <p class="text-muted">In nec rhoncus eros. Vestibulum eu mattis nisl.
                                                    Quisque viverra viverra magna
                                                    nec pulvinar. Maecenas pellentesque porta augue, consectetur
                                                    facilisis diam
                                                    porttitor sed. Suspendisse tempor est sodales augue rutrum
                                                    tincidunt.
                                                    Quisque a malesuada purus.</p>
        

                                            <div class="clearfix"></div>

                                            <h3>This is a Heading 3</h3>
                                            <p class="text-muted">Vestibulum auctor tincidunt semper. Phasellus ut
                                                vulputate lacus. Suspendisse
                                                ultricies mi eros, sit amet tempor nulla varius sed nisl
                                                nisi, dapibus in tellus.</p>

                                            <div class="clearfix"></div>

                                            <h4>This is a Heading 4</h4>
                                            <p class="text-muted">Nulla et mattis nunc. Curabitur scelerisque
                                                commodo condimentum. Mauris blandit, velit a egestas, diam arcu fermentum justo, arcu eros vel erat.</p>

                                            <div class="clearfix"></div>

                                            <h5>This is a Heading 5</h5>
                                            <p class="text-muted">Quisque nec turpis at urna dictum luctus.
                                                Suspendisse convallis dignissim
                                                eros at egestas mattis dui. Aliquam mattis dictum
                                                aliquet ullamcorper ornare.</p>

                                            <div class="clearfix"></div>

                                            <h6>This is a Heading 6</h6>
                                            <p class="text-muted">Donec ultricies, lacus id tempor condimentum, orci
                                                leo faucibus sem, a
                                                molestie libero lectus ac justo nisi quis bibendum vitae dapibus in tellus.</p>
                                        </div>

                                    </div>
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->

                            <div class="col-xl-6">

                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Display headings</h4>
                                        <p class="sub-header">
                                            Traditional heading elements are designed to work best in the meat of your page content. When you need a heading to stand out, consider using a display heading—a larger, slightly more opinionated heading style.
                                        </p>
    
                                        <h1 class="display-1">Display 1</h1>
                                        <p class="text-muted">Suspendisse vel quam malesuada, aliquet sem sit
                                            amet, fringilla elit. Morbi
                                            tempor tincidunt tempor. Etiam id turpis viverra, vulputate sapien
                                            nec.</p>
    
                                        <div class="clearfix"></div>
    
                                        <h1 class="display-2">Display 2</h1>
                                        <p class="text-muted">In nec rhoncus eros. Vestibulum eu mattis nisl.
                                            Quisque. Suspendisse tempor est sodales augue rutrum
                                            tincidunt.
                                            Quisque a malesuada purus.</p>
    
                                        <div class="clearfix"></div>
    
                                        <h1 class="display-3">Display 3</h1>
                                        <p class="text-muted">Vestibulum auctor tincidunt semper. Phasellus ut
                                            vulputate lacus. Suspendisse
                                            ultricies mi eros, sit amet tempor nulla varius sed.</p>
    
                                        <div class="clearfix"></div>
    
                                        <h1 class="display-4">Display 4</h1>
                                        <p class="text-muted mb-0">Nulla et mattis nunc. Curabitur scelerisque
                                            commodo condimentum. velit a consectetur egestas, get ultrices arcu eros vel erat.</p>
    
                                        <div class="clearfix"></div>
                                    </div>
                                </div> <!-- end card -->
                            </div>
                            <!-- end col -->
    
                        </div>
                        <!-- end row -->
    
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <h4 class="header-title">Inline text elements</h4>
                                                <p class="sub-header">
                                                    Your awesome text goes here.
                                                </p>
    
                                                <p class="lead">
                                                    Your title goes here
                                                </p>
    
                                                <p>You can use the mark tag to <mark>highlight</mark> text.</p>
                                                <p><del>This line of text is meant to be treated as deleted text.</del></p>
                                                <p><s>This line of text is meant to be treated as no longer accurate.</s></p>
                                                <p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>
                                                <p><u>This line of text will render as underlined</u></p>
                                                <p><small>This line of text is meant to be treated as fine print.</small></p>
                                                <p><strong>This line rendered as bold text.</strong></p>
                                                <p class="mb-0"><em>This line rendered as italicized text.</em></p>
                                            </div>
    
                                            <div class="col-xl-6 mt-3 mt-xl-0">
                                                <h4 class="header-title">Contextual Text Colors</h4>
                                                <p class="sub-header">
                                                    Your awesome text goes here.
                                                </p>
    
                                            
                                                <p class="text-pink">
                                                    Donec ullamcorper nulla non metus auctor fringilla.
                                                </p>
                                                <p class="text-muted">
                                                    Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.
                                                </p>
                                                <p class="text-primary">
                                                    Nullam id dolor id nibh ultricies vehicula ut id elit.
                                                </p>
                                                <p class="text-success">
                                                    Duis mollis, est non commodo luctus, nisi erat porttitor ligula.
                                                </p>
                                                <p class="text-info">
                                                    Maecenas sed diam eget risus varius blandit sit amet non magna.
                                                </p>
                                                <p class="text-warning">
                                                    Etiam porta sem malesuada magna mollis euismod.
                                                </p>
                                                <p class="text-danger">
                                                    Donec ullamcorper nulla non metus auctor fringilla.
                                                </p>
                                                <p class="text-dark">
                                                    Nullam id dolor id nibh ultricies vehicula ut id elit.
                                                </p>
                                                <p class="text-purple mb-0">
                                                    Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.
                                                </p>
    
                                            </div> <!-- end col -->
                                        </div>
                                        <!-- end row -->
                                    </div>
                                </div>
                                <!-- end card -->
                            </div>
                        </div>
                        <!-- end row -->
    
    
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-4">
                                                <h4 class="header-title">Unordered</h4>
                                                <p class="sub-header">
                                                    A list of items in which the order does not explicitly matter.
                                                </p>
            
                                                <ul>
                                                    <li>
                                                        Lorem ipsum dolor sit amet
                                                    </li>
                                                    <li>
                                                        Consectetur adipiscing elit
                                                    </li>
                                                    <li>
                                                        Integer molestie lorem at massa
                                                    </li>
                                                    <li>
                                                        Facilisis in pretium nisl aliquet
                                                    </li>
                                                    <li>
                                                        Nulla volutpat aliquam velit
                                                        <ul>
                                                            <li>
                                                                Phasellus iaculis neque
                                                            </li>
                                                            <li>
                                                                Purus sodales ultricies
                                                            </li>
                                                            <li>
                                                                Vestibulum laoreet porttitor sem
                                                            </li>
                                                            <li>
                                                                Ac tristique libero volutpat at
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        Faucibus porta lacus fringilla vel
                                                    </li>
                                                    <li>
                                                        Aenean sit amet erat nunc
                                                    </li>
                                                    <li>
                                                        Eget porttitor lorem
                                                    </li>
                                                </ul>
            
                                            </div> <!-- end col -->
            
                                            <div class="col-xl-4 mt-3 mt-xl-0">
                                                <h4 class="header-title">Ordered</h4>
                                                <p class="sub-header">
                                                    A list of items in which the order does explicitly matter.
                                                </p>
            
                                                <ol>
                                                    <li>
                                                        Lorem ipsum dolor sit amet
                                                    </li>
                                                    <li>
                                                        Consectetur adipiscing elit
                                                    </li>
                                                    <li>
                                                        Integer molestie lorem at massa
                                                    </li>
                                                    <li>
                                                        Facilisis in pretium nisl aliquet
                                                    </li>
                                                    <li>
                                                        Nulla volutpat aliquam velit
                                                        <ol>
                                                            <li>
                                                                Phasellus iaculis neque
                                                            </li>
                                                            <li>
                                                                Purus sodales ultricies
                                                            </li>
                                                            <li>
                                                                Vestibulum laoreet porttitor sem
                                                            </li>
                                                            <li>
                                                                Ac tristique libero volutpat at
                                                            </li>
                                                        </ol>
                                                    </li>
                                                    <li>
                                                        Faucibus porta lacus fringilla vel
                                                    </li>
                                                    <li>
                                                        Aenean sit amet erat nunc
                                                    </li>
                                                    <li>
                                                        Eget porttitor lorem
                                                    </li>
                                                </ol>
                                            </div> <!-- end col -->
            
                                            <div class="col-xl-4 mt-3 mt-xl-0">
                                                <h4 class="header-title">Unstyled</h4>
                                                <p class="sub-header">
                                                    <strong>This only applies to immediate children
                                                        list items</strong>, meaning you will need to add the class for any nested lists as well.
                                                </p>
            
                                                <ul class="list-unstyled">
                                                    <li>
                                                        Lorem ipsum dolor sit amet
                                                    </li>
                                                    <li>
                                                        Integer molestie lorem at massa
                                                        <ul>
                                                            <li>
                                                                Phasellus iaculis neque
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        Faucibus porta lacus fringilla vel
                                                    </li>
                                                    <li>
                                                        Eget porttitor lorem
                                                    </li>
                                                </ul>
            
                                                <h5>Inline</h5>
                                                <p class="text-muted">
                                                    Place all list items on a single line with <code>
                                                    display: inline-block;</code>
                                                    and some light padding.
                                                </p>
            
                                                <ul class="list-inline mb-0">
                                                    <li class="list-inline-item">
                                                        Lorem ipsum
                                                    </li>
                                                    <li class="list-inline-item">
                                                        Phasellus iaculis
                                                    </li>
                                                    <li class="list-inline-item">
                                                        Nulla volutpat
                                                    </li>
                                                </ul>
            
                                            </div> <!-- end col -->
                                        </div>
                                        <!-- end row -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <h4 class="header-title">Blockquotes</h4>
                                                <p class="sub-header">
                                                    Your awesome text goes here.
                                                </p>
    
                                                <blockquote class="blockquote">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit. Integer posuere erat a ante.</p>
                                                    <footer class="blockquote-footer">Someone famous in <cite
                                                            title="Source Title">Source Title</cite></footer>
                                                </blockquote>
    
                                                <p class="text-muted">
                                                    Add <code>
                                                    .blockquote-reverse</code>
                                                    for a blockquote with right-aligned content.
                                                </p>
    
                                                <blockquote class="blockquote blockquote-reverse">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit. Integer posuere erat a ante.</p>
                                                    <footer class="blockquote-footer">Someone famous in <cite
                                                            title="Source Title">Source Title</cite></footer>
                                                </blockquote>
                                            </div>
    
                                            <div class="col-xl-6 ">
                                                <h4 class="header-title">Horizontal description</h4>
                                                <p class="sub-header">
                                                    Your awesome text goes here.
                                                </p>
    
                                                <dl class="row">
                                                    <dt class="col-sm-3">Description lists</dt>
                                                    <dd class="col-sm-9">A description list is perfect for defining terms.</dd>
                                                    <dt class="col-sm-3">Euismod</dt>
                                                    <dd class="col-sm-9">
                                                        <p class="mb-1">Vestibulum id ligula porta felis euismod semper eget lacinia odio
                                                                sem nec elit.</p>
                                                        <p class="mb-2">Donec id elit non mi porta gravida at eget metus.</p>
                                                    </dd>
                                                    
                                                    <dt class="col-sm-3">Malesuada porta</dt>
                                                    <dd class="col-sm-9">Etiam porta sem malesuada magna mollis euismod.</dd>
                                                    <dt class="col-sm-3">Felis euismod semper eget lacinia</dt>
                                                    <dd class="col-sm-9">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
                                                        nibh, ut fermentum massa justo sit amet risus.
                                                    </dd>
                                                </dl>
    
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

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>