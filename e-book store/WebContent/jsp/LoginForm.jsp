<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	background-color: #F7819F;
	text-align: center;
	font-size: 14px;
	line-height: 24px;
}

table td, th {
	border: #d3d3d3 solid 1px;
	padding: 5px;
}

th {
	background: #808080;
	width: 120px;
}
</style>
</head>
<body>

	<h1>로그인 페이지</h1>

	<form action="login.do">
		아이디 : <input type="text" name="user_id"> <br> 암 호 : <input
			type="password" name="user_pwd"> <br> <input type="submit"
			value="로그인">
	</form>

</body>
</html>