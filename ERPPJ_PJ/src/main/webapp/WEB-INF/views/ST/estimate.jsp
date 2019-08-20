<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        
        <script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script> 
        <script type="text/javascript">
           var count = 1;   
       
           function focuse() {
               $(".chit-table-bordered-primary tbody *").focus(function() {
                  $(".chit-table-bordered-primary tbody *").css("background-color", "");
                  $(this).parent().parent().children().children().css("background-color", "#D6EAF8");
                  $(this).parent().parent().children().css("background-color", "#D6EAF8");
                  $(this).css("background-color", "");
                  $(this).parent().css("background-color", "");
               });
            }
           
           function enterupdate(vv) {
              if(event.keyCode == 13) {
                 alert(vv + 100);
              }
           }
           
           function enterinsert(cc) {
              if(event.keyCode == 13) {
                 alert(cc);
                 alert(count);
                 $(".chit-table-bordered-primary tbody #enter").attr("onkeyup", "enterupdate(" + cc + ");");
                 $(".chit-table-bordered-primary tbody #enter").attr("id", "enter" + cc);
                 $(".chit-table-bordered-primary tbody #first").attr("id", "first" + cc);
                 $(".chit-table-bordered-primary tbody").append('<tr>' +
                            '<td><input type="text" onfocus = "focuse();" name = "code' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "00000" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "number' + count + '" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "ex) 10001" style = "width: 150px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "no' + count + '" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"></td>' +
                            '<td><input type="text" onfocus = "focuse();" name = "amount' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>' +
                            '<td><select class="form-control" onfocus = "focuse();" name = "state' + count + '" style = "width: 100px; -webkit-appearance: none; border:0px;">' +
                            '<option value="담당자">담당자</option>' +
                             '</select></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "date' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "sysdate' + count + '" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 150px; border:0px;"></td>' +
                             '<td><input type="text" onfocus = "focuse();" name = "text' + count + '" class="form-control" data-toggle="input-mask" style = "width: 200px; border:0px;"></td>' +
                           '<td><input type="text" onfocus = "focuse();" name = "slee' + count + '" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 100px; border:0px;" onkeyup="enterinsert(' + count + ');"></td>' +
                        '</tr>');
                     count = count + 1;
                     alert(count);
                  $(".chit-table-bordered-primary tbody #first").focus();
              }
           }
           
        </script>
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            
            <%@ include file="../sidebar.jsp" %>

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
                                            <li class="breadcrumb-item active">견적 관리</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">견적 관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <h5 class="header-title">견적 관리</h5>
                                        <p class="sub-header">견적 등록 및 수정하는 기능입니다.</p>
                                        <div class="table-responsive">
                                        <form action ="#" class = "#">
                                          <div class="table-responsive" style = "margin: 15px 0px 15px">
                                            <table class="table m-0 chit-table-colored-bordered chit-table-bordered-primary table-bordered">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                                <col style = "width:150px;">
                                               
                                                <thead>
                                                    <tr>
                                                      <th>견적코드</th>
                                                      <th>거래처 관리 코드</th>
                                                      <th>계정 코드</th>
                                                      <th>수량</th>
                                                      <th>담당자</th>
                                                      <th>납품 예정일</th>
                                                      <th>견적 등록일</th>
                                                      <th>견적 단가</th>
                                                      <th>비고</th>
                                                  </tr>
                                              </thead>
          
          
                                              <tbody>
                                                  <tr>
                                                      <td><input type="text" onfocus = "focuse();" name = "code0" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="00000" placeholder = "00000" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "number0" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "no0" class="form-control" onclick = "inin();" data-toggle="input-mask" style = "width: 50px; border:0px;"  placeholder = "ex) 10001;"></td>
                                                <td><input type="text" onfocus = "focuse();" name = "amount0" class="form-control" data-toggle="input-mask" data-mask-format="00000" style = "width: 150px; border:0px;"></td>
                                                      <td><select class="form-control" onfocus = "focuse();" name = "state0" style = "width: 100px; -webkit-appearance: none; border:0px;">
                                                      <option value="미결">담당자</option>
                                                      </select></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "date0" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "sysdate0" id = "first" class="form-control" data-toggle="input-mask" data-mask-format="0000/00/00" placeholder = "YYYY/DD/MM" style = "width: 150px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "text0" class="form-control" data-toggle="input-mask" style = "width: 200px; border:0px;"></td>
                                                      <td><input type="text" onfocus = "focuse();" name = "slee0" id = "enter" class="form-control" data-toggle="input-mask" style = "width: 100px; border:0px;" onkeyup="enterinsert(0);"></td>
                                                  </tr>
                                              </tbody>
                                            </table>
                                        </div>
                                        </form>
                                       </div> <!-- end .table-responsive-->
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

        <!-- Table Editable plugin-->
        <script src="/erp/resources/assets/libs/jquery-tabledit/jquery.tabledit.min.js"></script>

        <!-- Table editable init-->
        <script src="/erp/resources/assets/js/pages/tabledit.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>