<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <script type="text/javascript">
        function usernameList() {
    		window.open("MS_searchUsername", "username_list", "menubar=no, width=363px, height = 528px location=no,status=no,scrollbars=yes");
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
                                    <h4 class="page-title">기획서등록</h4>
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
                                           	기획서 등록페이지 ++ 추가될 예정
                                        </p>
    
                                        <form action="MS_insertPlanPro" name="insertPlan">
                                        <input type = 'hidden' name = "${_csrf.parameterName }" value ="${_csrf.token }">
                                        <input type="hidden" name="hiddenId" value="0">
                                        	<div class="form-group">
                                                <label>기획명</label>
                                                <input type="text" name="plan_name" class="form-control" required
                                                            placeholder="기획명"/>
                                            </div>
                                            <div class="form-group">
                                            	<label>시작예정일</label>
                                                <!-- <input type="date" id="datepicker1" name="plan_startdate" class="form-control" data-toggle="input-mask" style="width: 100%;"> -->
                                                <input type="text" name="plan_startdate" class="form-control" placeholder="yyyy/mm/dd" data-provide="datepicker" data-date-autoclose="true">
                                            </div>
                                            <div class="form-group">
                                            <label>종료목표일</label>
                                                <!-- <input type="date" id="datepicker2" name="plan_enddate" class="form-control" data-toggle="input-mask" style="width: 100%;" data-date-autoclose="true"> -->
                                                <input type="text" name="plan_enddate" class="form-control" placeholder="yyyy/mm/dd" data-provide="datepicker" data-date-autoclose="true">
                                            </div>
                                            <div class="form-group">
                                                <label>기획상태</label>
                                                <input type="text" name="plan_state" class="form-control" required
                                                            placeholder="기획상태"/>
                                            </div>
                                            <div class="form-group">
                                                <label>기획제안자</label>
                                                <div>
                                                    <input type="text" name="username" class="form-control" required
                                                            placeholder="기획제안자" onclick="usernameList()"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>책임자</label>
                                                <input type="text" name="position_code" class="form-control" required
                                                            placeholder="책임자"/>
                                            </div>
                                            <div class="form-group">
                                                <label>기획목표</label>
                                                <div>
                                                    <textarea required name="plan_objective"  class="form-control" rows="7" placeholder="기획목표"></textarea>
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