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
    	$(function(){
    		$(".form-control form-control-sm", parent.opener.document).val(${key});
    	});
    	
	    function setvalue(val){
    		$("input[name=SubjectCode" + ${keyname} + "]", parent.opener.document).val($("#code" + val).html());
    		$("input[name=SubjectName" + ${keyname} + "]", parent.opener.document).val($("#name" + val).html());
    		
    		// json 객체를 String 객체로 변환 -- 
    		// 제이슨은 안드로이드에서 이제는 jsp로 하지 않고 안드로이드에서 뿌려줄 때 json 형식으로 불러와서 활용한다.
    		// 빅데이터 00데이터들은 실제 값들을 XML로 많이 사용할 것임
    		var deposit = '<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">예금코드<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름" style = "display:inline; width: 100px;">' +
					'<button type="button" class="btn btn-icon waves-effect waves-light btn-primary">' +
						'<i class="fas fa-search"></i>' +
					'</button>' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>';
    		var note = '<div class="form-group row">' +	
					'<label class="col-lg-4 col-form-label" for="simpleinput">액면가<span class="text-danger">*</span></label>' +
					'<div class="col-lg-8">' +
						'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
					'</div>' +
				'</div>' +
				'<div class="form-group row">' +	
					'<label class="col-lg-4 col-form-label" for="simpleinput">발생일<span class="text-danger">*</span></label>' +
					'<div class="col-lg-8">' +
						'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
					'</div>' +
				'</div>' +
				'<div class="form-group row">' +	
					'<label class="col-lg-4 col-form-label" for="simpleinput">만기일<span class="text-danger">*</span></label>' +
					'<div class="col-lg-8">' +
						'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
					'</div>' +
				'</div>' +
				'<div class="form-group row">' +	
					'<label class="col-lg-4 col-form-label" for="simpleinput">이자율<span class="text-danger">*</span></label>' +
					'<div class="col-lg-8">' +
						'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
					'</div>' +
				'</div>';
			var loan = '<div class="form-group row">' +	
			'<label class="col-lg-4 col-form-label" for="simpleinput">대여금액<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">대여일<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">만기일<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">이자율<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>';
			var borrowings = '<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">차입금액<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">차입일<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">만기일<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">이자율<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>';
			var securities = '<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">증권종류<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">유가증권번호<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">발생일<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">만기일<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">수량<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>'
			
			var securitiesright = '<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">액면가<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">이자율<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">평가방법<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">최근 평가일<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>' +
			'<div class="form-group row">' +	
				'<label class="col-lg-4 col-form-label" for="simpleinput">최근 평가액<span class="text-danger">*</span></label>' +
				'<div class="col-lg-8">' +
					'<input type="text" class="form-control" name="e_name" placeholder = "한글이름">' +
				'</div>' +
			'</div>'
    		if(keyname == "제예금"){
    			$("#leftsummary", parent.opener.document).html(deposit);
    		} else if(keyname == "받을어음") {
    			$("#leftsummary", parent.opener.document).html(note);
    		} else if(keyname == "지급어음") {
    			$("#leftsummary", parent.opener.document).html(note);
    		} else if(keyname == "단기대여금") {
    			$("#leftsummary", parent.opener.document).html(loan);
    		} else if(keyname == "장기대여금") {
    			$("#leftsummary", parent.opener.document).html(loan);
    		} else if(keyname == "단기차입금") {
    			$("#leftsummary", parent.opener.document).html(borrowings);
    		} else if(keyname == "장기차입금") {
    			$("#leftsummary", parent.opener.document).html(borrowings);
    		} else if(keyname == "단기매매증권") {
    			$("#leftsummary", parent.opener.document).html(securities);
    			$("#rightsummary", parent.opener.document).html(securitiesright);
    		} else if(keyname == "장기매매증권") {
    			$("#leftsummary", parent.opener.document).html(securities);
    			$("#rightsummary", parent.opener.document).html(securitiesright);
    		}/*  else if(keyname == "정기적금") {
    			var url = "FT_depositlist_insert?key=" + $("*[name=SubjectCode" + subjectcode + "]").val() + "&keyname=" + subjectcode;
        		window.open(url, "subject_list", "menubar=no, width=500, height = 300");
    		} else if(keyname == "미지급금") {
    			var url = "FT_depositlist_insert?key=" + $("*[name=SubjectCode" + subjectcode + "]").val() + "&keyname=" + subjectcode;
        		window.open(url, "subject_list", "menubar=no, width=500, height = 300");
    		} */	
   			self.close();
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
								<h4><b>계정과목목록</b></h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
                
                	<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body" style = "padding-bottom:0px;">
									<div style = "text-align: center;">
										<label>Search : <input type="search" class="form-control form-control-sm" aria-controls="datatable" style = "display:inline-block; width:150px;"></label>
									</div>
									<div align="right">
   										<button type="button" class="btn-subpage">조회</button>
   										<button type="button" class="btn-subpage">확인</button>
   										<button type="button" class="btn-subpage">취소</button>
   									</div>
								</div>
								<div class="card-body" style = "padding-bottom:0px;">
                           			<table  id="datatable" class="table table-bordered dt-responsive nowrap subtables">
	                                   <colgroup>
	                            			<col style = "width:80px;">
	                            			<col style = "width:200px;">
	                                   </colgroup>
	                                   <thead>
	                                        <tr class="table-info">
	                                        	<th>코드</th>
	                                        	<th>계정과목명</th>
	                                        </tr>
	                              		</thead>
	                            		<tbody>
	                                  		<c:set var="count" value="0"/>
	                                  		<c:if test="${subject != null}">
	                                   		<c:forEach var = "sub" items="${subject}">
	                                    		<tr>
	                                    			<td id = "code${count}" style = "width: 100px;" ondblclick="setvalue(${count})">${sub.accounts_code}</td>
	                                    			<td id = "name${count}" ondblclick="setvalue(${count})" style = "width: calc( 400px - 19px );">${sub.accounts_name}</td>
	                                    			<c:set var="count" value="${count+1}"/>
	                                    		</tr>
	                                   		</c:forEach>
	                                  		</c:if>
	                                  		<c:if test="${subject == null}">
		                                		<c:forEach var = "sub" begin="1" end="100">
		                                    		<tr>
		                                    			<td id = "code${count}" ondblclick="setvalue(${count})" style = "width:80px;">${sub}</td>
		                                    			<td id = "name${count}" ondblclick="setvalue(${count})" style = "width: calc( 200px - 16px );">${sub}</td>
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