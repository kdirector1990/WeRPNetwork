<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
	function inin() {
		$("body").append('<br><select><option>지급</option><option>상태</option></select>상태 : <select><option>현금지급</option><option>받을어음</option><option>원자료매입</option><option>차량주유</option></select><button>선택</button>금액 : <input type="text" name = "price">거래처 : <input type="text" name = "aa">번호 : <input type="text" name = "bb">');
	}
</script>
<body>
<select>
	<option>지급</option>
	<option>상태</option>
</select>
상태 : <select>
	<option>현금지급</option>
	<option>받을어음</option>
	<option>원자료매입</option>
	<option>차량주유</option>
</select><button>선택</button>
금액 : <input type="text" name = "price">
거래처 : <input type="text" name = "aa"><button>선택</button>
어음 : <input type="text" name = "bb"><button>선택</button>
<input type = "button" value = "추가" onclick = "inin();">
</body>
</html>