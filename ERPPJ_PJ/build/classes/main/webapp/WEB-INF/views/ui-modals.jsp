<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <!-- Custom box css -->
        <link href="/erp/resources/assets/libs/custombox/custombox.min.css" rel="stylesheet">
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
                                            <li class="breadcrumb-item active">Modals</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Modals</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title --> 

                        <!-- Bootstrap Modals -->
                        <div class="row">
                            <div class="col-md-12">
                            	<div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bootstrap Modals (default)</h4>
    
                                        <p class="sub-header">
                                            A rendered modal with header, body, and set of actions in the footer.
                                        </p>
    
                                        <!-- sample modal content -->
                                        <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        
                                                        <h4 class="modal-title mt-0" id="myModalLabel">Modal Heading</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h4>Text in a modal</h4>
                                                        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                                                        <hr>
                                                        <h4>Overflowing text to show scroll behavior</h4>
                                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary waves-effect waves-light">Save changes</button>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->

                                        <div class="modal fade bs-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myExtraLargeModalLabel">Extra large modal</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    </div>
                                                    <div class="modal-body">
                                                        ...
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
    
    
                                        <!--  Modal content for the above example -->
                                        <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title mt-0" id="myLargeModalLabel">Large modal</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        ...
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->
    
                                        <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title mt-0" id="mySmallModalLabel">Small modal</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        ...
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->

                                        <div class="modal fade bs-example-modal-center" tabindex="-1" role="dialog" aria-labelledby="myCenterModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-dialog-centered">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myCenterModalLabel">Center modal</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    </div>
                                                    <div class="modal-body">
                                                        ...
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->

                                        <!-- Long Content Scroll Modal -->
                                        <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog"
                                        aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="exampleModalScrollableTitle">Modal title</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                                    <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
    
                                        <div class="button-list">
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#myModal">Standard Modal</button>
                                            <!-- Extra large modal -->
                                            <button class="btn btn-success waves-effect waves-light" data-toggle="modal" data-target=".bs-example-modal-xl">Extra Large modal</button>
                                            <!-- Large modal -->
                                            <button type="button" class="btn btn-info waves-effect waves-light" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button>
                                            <!-- Small modal -->
                                            <button type="button" class="btn btn-warning waves-effect waves-light" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>
                                            <!-- Center modal -->
                                            <button  type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target=".bs-example-modal-center">Center modal</button>
                                            <!-- Long Content Scroll -->
                                            <button type="button" class="btn btn-purple waves-effect waves-light" data-toggle="modal" data-target="#exampleModalScrollable">Scrollable</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Custom Modals -->
                        <div class="row">
                            <div class="col-md-12">
                            	<div class="card">
                                    <div class="card-body">

                                        <h4 class="header-title">Custom Modals</h4>
    
                                        <p class="sub-header">
                                            Examples of custom modals.
                                        </p>
    
                                        <!-- sample modal content -->
    
                                        <div id="custom-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="custom-width-modalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog" style="width:55%;max-width: none;">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title mt-0" id="custom-width-modalLabel">Modal Heading</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h4>Text in a modal</h4>
                                                        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                                                        <hr>
                                                        <h4>Overflowing text to show scroll behavior</h4>
                                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary waves-effect waves-light">Save changes</button>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->
    
                                        <div id="full-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="full-width-modalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-full">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title mt-0" id="full-width-modalLabel">Modal Heading</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <h4>Text in a modal</h4>
                                                        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>
                                                        <hr>
                                                        <h4>Overflowing text to show scroll behavior</h4>
                                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary waves-effect waves-light">Save changes</button>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->
    
                                        <div id="con-close-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title mt-0">Modal Content is Responsive</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="field-1" class="control-label">Name</label>
                                                                    <input type="text" class="form-control" id="field-1" placeholder="John">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="field-2" class="control-label">Surname</label>
                                                                    <input type="text" class="form-control" id="field-2" placeholder="Doe">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label for="field-3" class="control-label">Address</label>
                                                                    <input type="text" class="form-control" id="field-3" placeholder="Address">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="field-4" class="control-label">City</label>
                                                                    <input type="text" class="form-control" id="field-4" placeholder="Boston">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="field-5" class="control-label">Country</label>
                                                                    <input type="text" class="form-control" id="field-5" placeholder="United States">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="field-6" class="control-label">Zip</label>
                                                                    <input type="text" class="form-control" id="field-6" placeholder="123456">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group no-margin">
                                                                    <label for="field-7" class="control-label">Personal Info</label>
                                                                    <textarea class="form-control autogrow" id="field-7" placeholder="Write something about yourself" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 104px;"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-info waves-effect waves-light">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /.modal -->
    
    
                                        <div id="accordion-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog">
                                                <div class="modal-content p-0">
    
                                                    <div class="accordion" id="accordion-test">
                                                        <div class="card mb-0">
                                                            <div class="card-header">
                                                                <h4 class="card-title font-14 mb-0">
                                                                    <a href="#" class="text-dark collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                                                        Collapsible Group Item #1
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseOne" class="collapse" data-parent="#accordion-test">
                                                                <div class="card-body">
                                                                    <p class="mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh, craft beer labore sapiente ea proident. Ad vegan excepteur butcher vice lomo leggings occaecat.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card mb-0">
                                                            <div class="card-header">
                                                                <h4 class="card-title font-14 mb-0">
                                                                    <a href="#" class="text-dark" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                                        Collapsible Group Item #2
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseTwo" class="collapse show" data-parent="#accordion-test">
                                                                <div class="card-body">
                                                                    <p class="mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh, craft beer labore sapiente ea proident. Ad vegan excepteur butcher vice lomo leggings occaecat.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card mb-0">
                                                            <div class="card-header">
                                                                <h4 class="card-title font-14 mb-0">
                                                                    <a href="#" class="text-dark collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                                        Collapsible Group Item #3
                                                                    </a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseThree" class="collapse" data-parent="#accordion-test">
                                                                <div class="card-body">
                                                                    <p class="mb-0">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh, craft beer labore sapiente ea proident. Ad vegan excepteur butcher vice lomo leggings occaecat.</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->
    
                                        <div id="card-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog">
                                                <div class="modal-content p-0 b-0">
                                                    <div class="card mb-0">
                                                        <div class="card-header bg-primary">
                                                            <button type="button" class="close float-right" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <h4 class="card-title text-white mb-0">Card Primary</h4>
                                                            
                                                        </div>
                                                        <div class="card-body">
                                                            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                                        </div>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div><!-- /.modal -->
    
                                        <div class="button-list">
                                            <!-- Custom width modal -->
                                            <button type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#custom-width-modal">Custom width Modal</button>
                                            <!-- Full width modal -->
                                            <button type="button" class="btn btn-info waves-effect waves-light" data-toggle="modal" data-target="#full-width-modal">Full width Modal</button>
                                            <!-- Responsive modal -->
                                            <button type="button" class="btn btn-pink waves-effect waves-light" data-toggle="modal" data-target="#con-close-modal">Responsive Modal</button>
                                            <!-- Accordion modal -->
                                            <button type="button" class="btn btn-purple waves-effect waves-light" data-toggle="modal" data-target="#accordion-modal">Accordion in Modal</button>
                                            <!-- card modal -->
                                            <button type="button" class="btn btn-success waves-effect waves-light" data-toggle="modal" data-target="#card-modal">Card in Modal</button>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->
                        </div>
                        <!-- End row -->

                        <!-- Custom Modals -->
                        <div class="row">
                            <div class="col-md-12">
                            	<div class="card">
                                    <div class="card-body">

                                        <h4 class="header-title">Modals Examples (Animations)</h4>
    
                                        <p class="sub-header">Use <code>data-animation="xxx" data-plugin="custommodal"
                                                            data-overlaySpeed="xxx" data-overlayColor="#xxx"</code>. </p>
    
                                        <div class="button-list">
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="fadein" data-plugin="custommodal"
                                                            data-overlaySpeed="200" data-overlayColor="#36404a">Fade in</a>
    
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="slide" data-plugin="custommodal"
                                                                data-overlaySpeed="200" data-overlayColor="#36404a">Slide</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="newspaper" data-plugin="custommodal"
                                                                data-overlaySpeed="200" data-overlayColor="#36404a">Newspaper</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="fall" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Fall</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="sidefall" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Side Fall</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="blur" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Blur</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="flip" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Flip</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="sign" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Sign</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="superscaled" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Super Scaled</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="slit" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Slit</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="rotate" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Rotate</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="letmein" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Letmein</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="makeway" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Makeway</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="slip" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Slip</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="corner" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Corner</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="slidetogether" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Slide together</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="scale" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Scale</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="door" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Door</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="push" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Push</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="contentscale" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Content Scale</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="swell" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Swell</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="rotatedown" data-plugin="custommodal"
                                                                data-overlaySpeed="100" data-overlayColor="#36404a">Rotate Down</a>
        
                                            <a href="#custom-modal" class="btn btn-primary waves-effect waves-light" data-animation="flash" data-plugin="custommodal"
                                                            data-overlaySpeed="100" data-overlayColor="#36404a">Flash</a>
                                        </div>
    
                                    </div>
                                </div>
                            </div><!-- end col -->
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

        <!-- Modal -->
        <div id="custom-modal" class="modal-demo">
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Modal title</h4>
            <div class="custom-modal-text">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </div>
        </div>

        <!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Modal-Effect -->
        <script src="/erp/resources/assets/libs/custombox/custombox.min.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>