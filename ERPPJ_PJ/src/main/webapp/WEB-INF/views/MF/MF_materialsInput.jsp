<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
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
                                    <h4 class="page-title">자재등록</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">등록</h4>
                                        <p class="sub-header">
                                       		 자재등록
                                        </p>
    
                                        <form class="" action="MF_materialsInsertPro">
                                            <div class="form-group">
                                                <label>계정코드</label>
                                                <input type="text" name="account_code" class="form-control" required
                                                            placeholder="계정코드"/>
                                            </div>
                                            <div class="form-group">
                                                <label>자재명</label>
                                                <div>
                                                    <input type="text" name="materials_name" class="form-control" required
                                                            placeholder="자재명"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>단위</label>
                                                <input type="text" name="materials_unit" class="form-control" required
                                                            placeholder="단위"/>
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
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->

		<%@ include file="../footer.jsp" %>
           
            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
        
    </body>
</html>