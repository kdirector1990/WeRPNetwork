<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="../setting.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/erp/resources/assets/libs/c3/c3.min.css">
<script src="/pj/resources/assets/css/js/jquery-3.4.1.min.js"></script>
<script src="/pj/resources/assets/css/js/request.js"></script>
<script type="text/javascript">
function HR_userChk() {
	// id값 미입력 후 중복확인 버튼 클릭시
	if(!document.inputPhysicaly.username.value) {
		alert("사원번호를 입력하세요 !");
		document.inputPhysicaly.username.focus();
		return false;
	}
	
	/*
	 * window.open("파일명", "윈도우명", "창속성");
	 * url="주소?속성=" + 속성값;  -> get방식
	 */
	
	var url = "HR_userChk?username=" + document.inputPhysicaly.username.value;
	window.open(url, "confirm", "menubar=no, width=300, height=200");
	// -> confirmId.do 서블릿 지정
}
        
function confirmUsernameFocus() {
	document.confirmform.focus();
}
        
function userNameChk() {
	if(!document.confirmform.username.value) {
		alert("사원번호를 입력하세여 !");
		document.confirmform.username.focus();
		return false;
	}
}

function setUsername(username) {
	opener.document.inputPhysicaly.username.value = username;
	opener.document.inputPhysicaly.hiddenId.value = 1;
	self.close();	
}
</script>
</head>
<body>
	<form action="userChk" method="post" name="confirmform"
		onsubmit="return userNameChk();">

		<!-- id 중복일 때 -->
		<c:if test="${selectCnt == 1}">
			<table>
				<tr>
					<th colspan="2"><span>${username}</span>는 이미 등록되었습니다.</th>
				</tr>

				<tr>
					<th>아이디 :</th>
					<td><input type="text" name="username" maxlength="5"
						style="width: 150px"></td>
				</tr>

				<tr>
					<th colspan="2"><input class="inputButton" type="submit"
						value="확인"> <input class="inputButton" type="reset"
						value="취소" onclick="self.close();"></th>
				</tr>
			</table>
		</c:if>

		<!-- id 중복 아닐때 -->
		<c:if test="${selectCnt != 1}">
			<table>
				<tr>
					<td align="center"><span>${username}</span>는 사용할 수 있습니다.</td>
				</tr>

				<tr>
					<th>
						<button class="btn btn-primary waves-effect waves-light mr-1"
							type="button" value="확인" onclick="setUsername('${username}');">
							확인</button> <%-- <input class="inputButton" type="button" value="확인" onclick="setId('${id}');"> --%>
					</th>
				</tr>
			</table>
		</c:if>

	</form>
</body>
</html>