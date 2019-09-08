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
            <div class="content-page">
			<!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->           
            
                <!-- 페이지 내용 입력 공간 -->
            
                
                <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">수리일지 등록</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">수리일지</h4>
    									<br>
                                         <form action="CT_repair_add" name="insertRP">
                                        	<div class="form-group">
                                                <label>제목</label>
                                                <input type="text" name="rr_title" class="form-control" required
                                                            placeholder="제목"/>
                                            </div>
                                            <div class="form-group">
                                                <label>전산설비코드</label>
                                                <div>
                                                    <input type="text" name="ceq_code" class="form-control" required
                                                            />
                                                    <button onclick="window.open('CT_Ceq_Search','window_name','width=430,height=300,location=no,status=no,scrollbars=yes');">검색</button>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>내용</label>
                                                <div>
                                                    <textarea required name="rr_content"  class="form-control" rows="7" placeholder="내용"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group mb-0">
                                                <div>
                                                    <button type="submit" class="btn btn-primary waves-effect waves-light mr-1">
                                                    	등록
		                                            </button>
                                                    <button type="reset" class="btn btn-secondary waves-effect waves-light">
														취소
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                                                                
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
               
               
               <!-- 페이지 내용 입력 공간 종료 -->
               
                <%@ include file="../footer.jsp" %>

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
        <script type="text/javascript">
		   $(function(){
			$("#all_check").change(function(){
				var is_check = $(this).is(":checked"); //this는 전체 선택용 체크박스
					$(".r_box").prop("checked", is_check);
				});
			});
    	</script>
    </body>
</html>