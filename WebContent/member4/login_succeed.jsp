<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="loginCheck.jsp" %>
<%@ page import="member4.Member4DTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_succeed</title>
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
<%String context = request.getContextPath();
Member4DTO userInfo = (Member4DTO)session.getAttribute(id);
%>
<table>
	<tr>
		<th colspan="2" style="font-size: 20px; font-weight: bold;"><%=request.getAttribute("message") %></th>
	</tr>
	<tr>
		<th colspan="2" style="font-size: 20px; font-weight: bold;">회원 정보</th>
	</tr>
	<tr>
		<th>아이디 : </th>
		<td><%=userInfo.getId() %></td>
	</tr>
	<tr>
		<th>비밀번호 : </th>
		<td><%=userInfo.getPwd() %></td>
	</tr>
	<tr>
		<th>이름 : </th>
		<td><%=userInfo.getName() %></td>
	</tr>
	<tr>
		<th>이메일 : </th>
		<td><%=userInfo.getEmail() %></td>
	</tr>
	<tr>
		<th>전화번호 : </th>
		<td><%=userInfo.getTel() %></td>
	</tr>
	<tr>
		<th colspan="2"><button onclick="location.href='<%=context%>/member4_Servlet/logout.do'">로그아웃?</button></th>
	</tr>
</table>

</body>
</html>