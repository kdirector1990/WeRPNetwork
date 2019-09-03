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
                                            <table class="table table-striped mb-0">
                                                   <tr>
                                              		<th> 품번 </th>
                                              		<td> <input class = "input" type = "text" name = "saleplan_no" value = "">
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
                                               
                                            </table>
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