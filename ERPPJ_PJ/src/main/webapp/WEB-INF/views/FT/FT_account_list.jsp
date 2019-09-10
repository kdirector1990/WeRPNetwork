<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
    <%@ include file="../setting.jsp" %>
    <!-- Table datatable css -->
    <link href="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedHeader.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/scroller.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css" />
    <link href="/erp/resources/assets/libs/datatables/fixedColumns.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <script src="/erp/resources/assets/css/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
		//opener : window 객체의 open() 메소드로 열린 새창(=중복확인창)에서, 열어준 부모창(=회원가입창)에 접근할 때 사용
		//self.close() : 메시지 없이 현재 창을 닫을 때 사용
		//hiddenId : 중복확인 버튼 클릭 여부 체크(0: 클릭안함, 1: 클릭함)
	    var acode;
		var aname;
	
		$(function(){
			$("#searchid").val("${key}");
			
			$.ajax({
                type : "GET",
                url : "/erp/FT_AccountSelect?${_csrf.parameterName }=${_csrf.token }&srhval=${key}",
                success : function(data) {
	           	   if(data != null){
		                   $("tbody").html("");
							for(var i = 0; i < data.length; i++){
								$("tbody").append('<tr>' +
			              			'<td id = "code' + i + '" onclick="focuse(' + i + ');" ondblclick="setvalue();" style = "width:60px;">' + data[i].customer_code + '</td>' +
		                 			'<td id = "name' + i + '" onclick="focuse(' + i + ');" ondblclick="setvalue();" style = "width:90px;">' + data[i].customer_name + '</td>' +
		                 			'<td id = "licenseNo' + i + '" onclick="focuse(' + i + ');" ondblclick="setvalue();" style = "width: calc( 130px - 16px );">' + data[i].license_number + '</td>' +
			              		'</tr>');
							}
	           	   }
                },
                error : function(e) {
                		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
                }
 			});
		});
	
		function focuse(cc) {
			$("tbody *").css("background-color", "");
			$("#code" + cc).parent().children().css("background-color", "#D6EAF8");
			$("#name" + cc).parent().children().css("background-color", "#D6EAF8");
			$("#licenseNo" + cc).parent().children().css("background-color", "#D6EAF8");
			acode = $("#code" + cc).html();
			aname = $("#name" + cc).html();
		}
    
		function setvalue(val){
			$("input[name=accountcode${keyname}]", opener.document).val(acode);
    		$("input[name=accountname${keyname}]", opener.document).val(aname);
			self.close();
		}
	    
	    function search(val){
	    	var obj = new Object();
			var jsonData;
	   		$.ajax({
	                  type : "GET",
	                  url : "/erp/FT_AccountSelect?${_csrf.parameterName }=${_csrf.token }&srhval=" + val,
	                  success : function(data) {
	             	   if(data != null){
		               		$("tbody").html("");
							for(i = 0; i < data.length; i++){
								$("tbody").append('<tr>' +
	                			'<td id = "code' + i + '" onclick="focuse(' + i + ');" ondblclick="setvalue();" style = "width:60px;">' + data[i].customer_code + '</td>' +
                       			'<td id = "name' + i + '" onclick="focuse(' + i + ');" ondblclick="setvalue();" style = "width:90px;">' + data[i].customer_name + '</td>' +
                       			'<td id = "licenseNo' + i + '" onclick="focuse(' + i + ');" ondblclick="setvalue();" style = "width: calc( 130px - 16px );">' + data[i].license_number + '</td>' +
	                		'</tr>');
							}
	             	   }
	                  },
	                  error : function(e) {
	                  		alert('서버 연결 도중 에러가 났습니다. 다시 시도해 주십시오.');
	                  }
	   		});
		}
    </script>
    </head>
	<body style = "padding-bottom:0px;">
     	 <!-- Begin page -->
    	 <div id="wrapper">
            <div>
			<!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->           
            
                <!-- 페이지 내용 입력 공간 -->
                <div class = "containerfluid">
            		<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box" style = "text-align:center;">
								<h4><b>거래처목록</b></h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
                	<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body" style = "padding-bottom:0px;">
									<div style = "text-align: center;">
										<label>Search : <input type="search" id = "searchid" class="form-control form-control-sm" aria-controls="datatable" style = "display:inline-block; width:150px;" onkeyup = "search(this.value);"></label>
									</div>
									<div align="right">
   										<button type="button" class="btn-subpage" onclick="setvalue();">확인</button>
   										<button type="button" class="btn-subpage" onclick="self.close();">취소</button>
   									</div>
								</div>
								<div class="card-body" style = "padding-bottom:0px;">
                           			<table style = "width: 280px" id="datatable" class="table table-bordered dt-responsive nowrap subtables">
	                                   <colgroup>
	                            			<col style = "width:60px;">
	                            			<col style = "width:90px;">
	                            			<col style = "width:130px;">
	                                   </colgroup>
	                                   <thead>
	                                        <tr class="table-info">
	                                            <th>코드</th>
	                                            <th>거래처명</th>
	                                            <th>사업자번호</th>
	                                        </tr>
	                              		</thead>
	                            		<tbody>
	                                  		<c:set var="count" value="0"/>
	                                  		<c:if test="${account != null}">
		                                   		<c:forEach var = "acc" items="${account}">
		                                       		<tr>
		                                       			<td id = "code${count}" onclick="focuse(${count});" ondblclick="setvalue();" style = "width:60px;">${acc.customer_code}</td>
		                                       			<td id = "name${count}" onclick="focuse(${count});" ondblclick="setvalue();" style = "width:90px;">${acc.customer_name}</td>
		                                       			<td id = "licenseNo${count}" onclick="focuse(${count});" ondblclick="setvalue();" style = "width: calc( 130px - 16px );">${acc.license_number}</td>
		                                       			<c:set var="count" value="${count+1}"/>
		                                       		</tr>
	                                       		</c:forEach>
	                                  		</c:if>
	                                  		<c:if test="${account == null}">
		                                		<c:forEach var = "sub" begin="1" end="100">
		                                    		<tr>
		                                       			<td id = "code${count}" ondblclick="setvalue(${count})" style = "width:60px;">${sub}</td>
		                                       			<td id = "name${count}" ondblclick="setvalue(${count})" style = "width:90px;">${sub}</td>
		                                       			<td id = "licenseNo${count}" ondblclick="setvalue(${count})" style = "width: calc( 130px - 16px );">${sub}</td>
		                                       			<c:set var="count" value="${count+1}"/>
		                                       		</tr>
		                                   		</c:forEach>
		                               		</c:if>
	                              		</tbody>
	                               </table>
                               	</div>
                             </div>
		                   </div> 
                         </div>
                      </div> 
               
               <!-- 페이지 내용 입력 공간 종료 -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <%@ include file="../rightbar.jsp" %>
        <%@ include file="../setting2.jsp" %>
        <!-- Datatable plugin js -->
        <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

        <script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

        <script src="/erp/resources/assets/js/pages/datatables.init.js"></script>
        
    </body>
</html>