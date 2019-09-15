<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
	.result{
		display: none;
	}
</style>
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
                                    <h4 class="page-title">자재관리</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 
						
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body table-responsive">
                                    
                                        <h4 class="header-title">자재관리</h4>
                                        
    									<hr>
                                        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                            	<th>계정코드</th>
                                                <th>자재명</th>
                                                <th>단위</th>
                                            </tr>
                                            </thead>
    
    
                                            <tbody>
                                           	<c:forEach var="list" items="${dto}">
	                                            <tr>
	                                                <td>${list.material_code}</td>
	                                                <td>${list.material_name}</td>
	                                                <td>${list.material_unit}</td>
	                                            </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        
                                        <div class="result">
                                        <br>
                                        <form id="updateMaterial">
                                        	<input type = 'hidden' name = "${_csrf.parameterName }" value ="${_csrf.token }">
    									<br>
                                        <table id="datatable2" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0;">
                                            <thead>
                                            <tr>
                                            	<th>계정코드</th>
                                                <th>자재명</th>
                                                <th>단위</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                        <div align="right">
	    									<button type="button" id="btnRe" class="btn btn-outline-dark waves-effect waves-light" onclick="updateMaterial();">수정</button>
	    									<button type="button" id="btnDel" class="btn btn-outline-dark waves-effect waves-light" onclick="deleteMaterial();">폐기</button>
    									</div>
                                        </form>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->
          
                <%@ include file="../footer.jsp" %>


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

    <%@ include file="../rightbar.jsp" %>
    <%@ include file="../setting2.jsp" %>
    
    <!-- Datatable plugin js -->
    <script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
    <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>
        
    <script type="text/javascript">
     $("#datatable tr").click(function(){
    	 
			if($(".plantr") != null){
				$(".plantr").remove();
			}
			
			var tdArr = new Array();	// 배열 선언
			
			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
			var td = tr.children();
			
			// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
			td.each(function(i){
				tdArr.push(td.eq(i).text());
			});
			
			// td.eq(index)를 통해 값을 가져올 수도 있다.
			var material_code = td.eq(1).text();
   			var material_name = td.eq(2).text();
   			var material_unit = td.eq(3).text();
			
   			tdArr.push(material_code);
   			tdArr.push(material_name);
   			tdArr.push(material_unit);
   			
   			$('.result').show();
   			
   			$('#datatable2 > tbody:last').append(
				'<tr class="plantr">'+'<input type = "hidden" name = "material_code" value = "'+tdArr[0]+'">'+'<td>' +tdArr[0] +'</td>'+
					'<td><input type="text" name="material_name" value="' +tdArr[1]+'"></td>' +
					'<td><input type="text" name="material_unit" value="' +tdArr[2]+'"</td>' +
           		'</tr>');
		});
     
     function updateMaterial(){
		 var param = $("#updateMaterial").serializeArray();
		 alert(JSON.stringify(param));
		$.ajax({
			url: '/erp/MF_materialUpdate',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(param){
				alert("자재 수정 성공.");
				location.reload();
			},
			error : function(){
				alert("자재목록 수정에 실패하였습니다.");
			}
			
		});
	}
     
     function deleteMaterial(){
		 var param = $("#updateMaterial").serializeArray();
		 alert(JSON.stringify(param));
		$.ajax({
			url: '/erp/MF_materialDelete',
			type: 'POST',
			data : param,
			dataTpye: 'json',
			success: function(param){
				alert("자재 삭제 성공.");
				location.reload();
			},
			error : function(){
				alert("자재 삭제에 실패하였습니다.");
			}
			
		});
	}
    </script>
    </body>
</html>