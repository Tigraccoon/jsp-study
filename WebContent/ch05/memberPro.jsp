<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberPro</title>
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
<%@page import="java.sql.Timestamp" %>
<!-- userBean의 id와 setProperty의 name이 같아야함 -->
<jsp:useBean id="memberReg" class="ch05.MemberReg">
	<jsp:setProperty name="memberReg" property="*"/>
</jsp:useBean>

<%memberReg.setTp(new Timestamp(System.currentTimeMillis())); %>

<table>
	<tr>
		<th>아이디 : </th>
		<td><jsp:getProperty property="id" name="memberReg"/></td>
	</tr>
	<tr>
		<th>비밀번호 : </th>
		<td><jsp:getProperty property="pwd" name="memberReg"/></td>
	</tr>
	<tr>
		<th>이름 : </th>
		<td><jsp:getProperty property="name" name="memberReg"/></td>
	</tr>
	<tr>
		<th>이메일 : </th>
		<td><jsp:getProperty property="email" name="memberReg"/></td>
	</tr>
	<tr>
		<th>전화번호 : </th>
		<td><jsp:getProperty property="hp" name="memberReg"/></td>
	</tr>
	<tr>
		<th>가입일자 : </th>
		<td><jsp:getProperty property="tp" name="memberReg"/></td>
	</tr>
</table>

</body>
</html>