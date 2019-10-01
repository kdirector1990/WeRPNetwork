<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
</head>
	<body>
		
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
						<form action="MsgWritePro" method="post">
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
							<input type="hidden" name="to_user" value="${vo.username }">
							<input type="hidden" name="from_user" value="${username }">
							<div class="form-group">
								<label for="e_name">수신자</label>
								${vo.e_name}
							</div>
							
							<div class="form_group">
								<label for="depamrtment_name">부서</label>
								${vo.department_name }
							</div>
							
							<div class="form_group">
								<label for="message">내용</label>
								<textarea id="message" name="msg_content" rows="20" data-parsely-trigger="keyup" data-parsely-maxlength="2000"></textarea>
							</div>
							
							<div class="form-group text-right mb-0">
								<input type="submit" class="btn btn-success" value="validate">
							</div>
							
						</form>
						</div>
					</div>
				</div>
			</div>
		
		
    </body>
</html>