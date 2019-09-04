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
                                        <form action = "ST_sale_Plan_modifyPro" method="post">
                                        
                            				<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }">
                                        	<%-- <input type = "hidden" name = "pageNum" value="#{pageNum }"> --%>
                                            <table class="table table-striped mb-0">
                                                   <tr>
                                              		<th> 품번 </th>
                                              		<td> <input class = "input" type = "text" name = "saleplan_code" value = "${dto.saleplan_code}">
                                              		</td>
                                              		
                                              		<th>품명 </th>
                                              		<td> <input class = "input" type = "text" name = "saleplan_name" value = "">
                                              		</td>
                                                   		
                                                   </tr>
                                                
                                                    <tr>
                                                   	 <th>규격</th>
                                                   	 <td> <input class = "input" type = "text" name = "saleplan_standard" value = "">
                                                   	 </td>
                                                   		
                                                   	 <th>계획 수량</th>
                                                   	 <td><input class = "input" type = "text" name = "saleplan_amount" value = "">
                                                   	 </td>
                                                   	
                                                    </tr>
                                                    
                                                    <tr>
                                                  		<th>에상 금액</th>
                                                  		<td><input class = "input" type = "text" name = "ef_price" value = "">
                                                  		</td>
                                                  		
                                                  		<th>비고</th>
                                                  		<td><input class = "input" type = "text" name = "note" value = "">
                                                  		</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                    	<th>
                                                    	<input class="inputButton" type="submit" value="글수정">
														<input class="inputButton" type="reset" value="수정취소">
														<input class="inputButton" type="button" value="목록보기"
																onClick="window.location.reload()">
                                                    </tr>
                                               
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