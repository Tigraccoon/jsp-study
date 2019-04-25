<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTestForm</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<%String context = request.getContextPath();%>

<form action="<%=context%>/ch02_servlet/login.do" method="post">
아이디 :&nbsp;&nbsp;<input type="text" name="userid"><br><br>
비밀번호 :&nbsp;&nbsp;<input type="password" name="passwd"><br><br>
<input type="submit" value="로그인?">
</form>

<!-- 로그인 실패, 로그아웃 메세지를 출력할 태그 -->

<%
String message = request.getParameter("message");
if(message != null){
%>
<span style="color: red;"><%=message %></span>
<%} %>

</body>
</html>