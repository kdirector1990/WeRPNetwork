<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="../setting.jsp" %>
        <!-- Table datatable css -->
    </head>

    <body>

                        <!-- end page title --> 

                              <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                        <c:if test="${saleplanCnt != 0 }">
                                        <form action="MS_updatePlanPro">
                                        <div align="right">
    									<button type="submit" id="btnRe" class="btn btn-outline-dark waves-effect waves-light">수정</button>
    									<button type="button" id="btnDel" class="btn btn-outline-dark waves-effect waves-light">폐기</button>
    									</div>
    									<br>
                                        <table id="datatable2" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0;">
                                            <thead>
                                            <tr>
                                            	<th>기획서 코드</th>
                                            	<th>기획명</th>
                                                <th>기획제안자</th>
                                                <th>책임자</th>
                                                <th>기획등록일</th>
                                                <th>시작예정일</th>
                                                <th>종료예정일</th>
                                                <th>기획상태</th>
                                                <th>기획목표</th>
                                                <th>상세 기획안 파일</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                        </form>
                                            </c:if>
                                        </div>
                                    </div>
                            </div>
                </div> <!-- end content -->
                

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        <%@ include file="../setting2.jsp" %>
        
    </body>
  
        
</html>