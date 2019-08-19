<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	.layer{
		display: none;
	}
</style>  
<script src="/erp/resources/assets/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	jQuery('#selectBurrow').change(function(){
		var state = jQuery('#selectBurrow option:selected').val();
		if(state == 'Y'){
			jQuery('.layer').show();
		}else{
			jQuery('.layer').hide();
		}
	});
</script> 
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
            
            <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">전산설비 등록</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                        <h4 class="header-title">등록폼</h4>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>장비구분</th>
                                                <th>장비명</th>
                                                <th>제작사</th>
                                                <th>가격</th>
                                                <th>구입일자</th>
                                                <th>정기검정일자</th>
                                                <th>장비대여 여부</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                           <form action="" method="post">
                                            <tr>
                                                <td><input type="text" name="" size="20" autofocus></td>
                                                <td><input type="text" name="" size="10"></td>
                                                <td><input type="text" name="" size="20"></td>
                                                <td><input type="number" name="" size="10"></td>
                                                <td><input type="date" name="" size="10"></td>
                                                <td><input type="date" name="" size="10"></td>
                                                <td><select id="selectBurrow" name="" required>
                                                	<option>선택
                                                	<option value="Y">Y
                                                	<option value="N">N
                                                </select></td>
                                            </tr>
                                            </form>
                                            
                                            <tr>
                                                <td>제조기계</td>
                                                <td>ERP</td>
                                                <td>(주)둥글레</td>
                                                <td>3,000,000</td>
                                                <td>--</td>
                                                <td>00/13일</td>
                                                <td>Y</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
			
										<div class="layer">                                        
                                        <div class="page-title-box">
                                    		<h4 class="page-title">대여장비</h4>
                                		</div>
                                        
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>대여장비명</th>
                                                <th>대여업체</th>
                                                <th>대여비용</th>
                                                <th>수량</th>
                                                <th>대여일자</th>
                                                <th>정기검정일자</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                            <tr>
                                            	<td>ERP</td>
                                                <td>(주)동서식품</td>
                                                <td>1,200,000</td>
                                                <td>3</td>
                                                <td>19/08/16</td>
                                                <td>00/16일</td>
                                            </tr>
                                            
                                            </tbody>
                                        </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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