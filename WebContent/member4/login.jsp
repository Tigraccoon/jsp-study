<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
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
<%String context = request.getContextPath(); %>
<%String message = (String)request.getAttribute("message");
if(message == null){
	message = "로그인 하세요~";
}
%>
<form action="<%=context %>/member4_Servlet/login.do" method="post">
<table>
	<tr>
		<th colspan="2" style="font-size: 20px; font-weight: bold;">로그인?</th>
	</tr>
	<tr>
		<th>아이디 : </th>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<th>비밀번호 : </th>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<th colspan="2"><input type="submit" value="로그인!"></th>
	</tr>
	<tr>
		<th colspan="2" style="color: red; font-weight: bold;"><%=message %></th>
	</tr>
</table>
</form>

</body>
</html>