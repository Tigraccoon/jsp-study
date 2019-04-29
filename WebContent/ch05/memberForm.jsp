<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberForm</title>
<style type="text/css">
body{
	background: #cccccc;
}
table{
	background : white;
	border-collapse: collapse;
	border-spacing: 0;
	border: 2px solid black;
	margin: auto;
}
th, td{
	padding: 10px;
	text-align: center;
	vertical-align: middle;
	border: 0.3px solid black;
}
th{
	background: #8BB7FF;
}
</style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>

<form action="memberPro.jsp" method="post">
<table>
	<tr>
		<th>아이디 : </th>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<th>비밀번호 : </th>
		<td><input type="text" name="pwd"></td>
	</tr>
	<tr>
		<th>이름 : </th>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<th>이메일 : </th>
		<td><input type="email" name="email"></td>
	</tr>
	<tr>
		<th>전화번호 : </th>
		<td><input type="tel" name="hp"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="전송!!"></td>
	</tr>
</table>
</form>

</body>
</html>